module Main (main) where

import Language.Haskell.TH (pprint, stringE)
import Control.Lens.Combinators (makeLenses, makePrisms)
import System.Environment
import System.IO
import Data.Maybe (catMaybes)

import Language.Haskell.Exts.Parser
import Language.Haskell.Exts.Pretty
import Language.Haskell.Exts.Extension
import qualified Language.Haskell.Exts.SrcLoc as L
import qualified Language.Haskell.Exts.Syntax as S

-- These are used at the REPL - see builder.sh
import qualified Language.Haskell.TH as TH
import qualified Language.Haskell.TH.Syntax as TH

main :: IO ()
main = do
  args <- getArgs
  let errorMessage = "th-optics-builder requires three arguments."
  case args of
    [] -> putStrLn errorMessage
    (_ : []) -> putStrLn errorMessage
    (path : replFile : _) -> do
      h <- openFile path ReadMode
      hSetEncoding h latin1
      contents <- hGetContents h
      let mod' =
            parseWithMode
            defaultParseMode {
            -- All extensions from Language.Haskell.TH.Syntax module
            extensions = [ EnableExtension RankNTypes
                         , EnableExtension ExplicitForAll
                         , EnableExtension TypeOperators
                         , EnableExtension DeriveDataTypeable
                         , EnableExtension DeriveGeneric
                         , EnableExtension FlexibleInstances
                         , EnableExtension DefaultSignatures
                         , EnableExtension RankNTypes
                         , EnableExtension RoleAnnotations
                         , EnableExtension ScopedTypeVariables
                         , EnableExtension Trustworthy
                         ]
            }
            contents :: ParseResult (S.Module L.SrcSpanInfo)
      case mod' of
        ParseFailed loc mess -> do
          putStrLn $ "Parse failed" ++ mess ++ " at " ++ show loc
        ParseOk (S.Module _ _ _ _ decls) -> do
          let processed = catMaybes $ map process decls
              idents = catMaybes $ map snd processed
              code = map fst $ processed
          putStrLn $ unlines code
          writeFile replFile $ unlines $
            map genLine idents

genLine :: String -> String
genLine ident =
  "writeFile \"out/modules/" ++ ident ++ ".hs\" $(stringE . pprint =<< makePrisms ''TH." ++ ident ++ ")"

process r@(S.TypeDecl _ _ _) = Just $ (prettyPrint r, Nothing)
process r@(S.DataDecl a b c d@(S.DHead _ (S.Ident _ str)) e _) = Just (prettyPrint $ S.DataDecl a b c d e [], Just str)
process _ = Nothing
