#!/usr/bin/env bash

set -e

# A file with "fake" data definitions, which is populated by th-optics-builder.
# th-optics-builder parses template-haskell source to extract the definitions.
dataDefsFile=`realpath builder/app/Language/Haskell/TH/Data.hs`

# Additionally, th-optics-builder generates REPL commands that include
# `makePrisms` calls, like in the line below:
#
# writeFile "out/modules/ModName.hs" $(stringE . pprint =<< makePrisms ''TH.ModName)

# An output file.
outputFile=`realpath src/Language/Haskell/TH/Syntax/Optics.hs`
# A temporary file to store repl commands
replFile=`realpath out/repl`

# Clean data from previous builds

rm -rf out
rm -rf template-haskell-*
rm -rf src/Language/Haskell/TH/*.hs

mkdir -p out/modules
mkdir -p src/Language/Haskell/TH

# Compile a builder app

stack build th-optics-builder

# Initialise file with "fake" data definitions with a header

cat template/DataHeader.hs > "$dataDefsFile"

# Download template-haskell source to ./
# Extract data definitions from Language.Haskell.TH.Syntax. Output some commands
# to $replFile and put the definitions to $dataDefsFile

stack unpack template-haskell

cd template-haskell-*
stack exec th-optics-builder -- ./Language/Haskell/TH/Syntax.hs "$replFile" >> "$dataDefsFile"
cd ..;

# Pass commands to the REPL

cat out/repl | stack repl --ghc-options '-XTemplateHaskell'

# Initialize $outputFile with a module header

cat template/LensesHeader.hs > "$outputFile"

# `pprint` from TemplateHaskell prints fully qualified module
# names, so some fixup is required.

for f in out/modules/*.hs; do
    cat $f |
    sed 's#Main.##g' |
    sed 's#Language.Haskell.TH.Syntax.##g' |
    sed 's#Language.Haskell.TH.##g' |
    sed 's#Control.Lens.Type.##g' |
    sed 's#GHC.Integer.Type.##g' |
    sed 's#GHC.Base.##g' |
    sed 's#GHC.Types.##g' |
    sed 's#GHC.Real.##g' |
    sed 's#GHC.Word.##g' |
    sed 's#GHC.Maybe.##g' |
    sed 's#Control.Lens.Iso.##g' |
    sed 's#Control.Lens.Prism.##g' |
    sed 's#Data.Either.##g' >> "$outputFile"
    echo "" >> "$outputFile"
done

# Performing formatting using floskell...

stack exec --no-nix-pure floskell "$outputFile"

stack test
