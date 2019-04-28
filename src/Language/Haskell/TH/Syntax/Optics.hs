module Language.Haskell.TH.Syntax.Optics where

import Language.Haskell.TH.Syntax
import Control.Lens
import Data.Word ( Word8 )

_AnnLookupModule :: Prism' AnnLookup Module
_AnnLookupModule = prism (\x1_0 -> AnnLookupModule x1_0)
    (\x_1 -> case x_1 of
         AnnLookupModule y1_2 -> Right y1_2
         _ -> Left x_1)

_AnnLookupName :: Prism' AnnLookup Name
_AnnLookupName = prism (\x1_3 -> AnnLookupName x1_3)
    (\x_4 -> case x_4 of
         AnnLookupName y1_5 -> Right y1_5
         _ -> Left x_4)

_ModuleAnnotation :: Prism' AnnTarget ()
_ModuleAnnotation = prism (\() -> ModuleAnnotation)
    (\x_0 -> case x_0 of
         ModuleAnnotation -> Right ()
         _ -> Left x_0)

_TypeAnnotation :: Prism' AnnTarget Name
_TypeAnnotation = prism (\x1_1 -> TypeAnnotation x1_1)
    (\x_2 -> case x_2 of
         TypeAnnotation y1_3 -> Right y1_3
         _ -> Left x_2)

_ValueAnnotation :: Prism' AnnTarget Name
_ValueAnnotation = prism (\x1_4 -> ValueAnnotation x1_4)
    (\x_5 -> case x_5 of
         ValueAnnotation y1_6 -> Right y1_6
         _ -> Left x_5)

_Bang :: Iso' Bang ( SourceUnpackedness, SourceStrictness )
_Bang = iso (\(Bang x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> Bang x1_2 x2_3)

_GuardedB :: Prism' Body ([ ( Guard, Exp ) ])
_GuardedB = prism (\x1_0 -> GuardedB x1_0)
    (\x_1 -> case x_1 of
         GuardedB y1_2 -> Right y1_2
         _ -> Left x_1)

_NormalB :: Prism' Body Exp
_NormalB = prism (\x1_3 -> NormalB x1_3)
    (\x_4 -> case x_4 of
         NormalB y1_5 -> Right y1_5
         _ -> Left x_4)

_CCall :: Prism' Callconv ()
_CCall = prism (\() -> CCall) (\x_0 -> case x_0 of
                                   CCall -> Right ()
                                   _ -> Left x_0)

_StdCall :: Prism' Callconv ()
_StdCall = prism (\() -> StdCall) (\x_1 -> case x_1 of
                                       StdCall -> Right ()
                                       _ -> Left x_1)

_CApi :: Prism' Callconv ()
_CApi = prism (\() -> CApi) (\x_2 -> case x_2 of
                                 CApi -> Right ()
                                 _ -> Left x_2)

_Prim :: Prism' Callconv ()
_Prim = prism (\() -> Prim) (\x_3 -> case x_3 of
                                 Prim -> Right ()
                                 _ -> Left x_3)

_JavaScript :: Prism' Callconv ()
_JavaScript = prism (\() -> JavaScript)
    (\x_4 -> case x_4 of
         JavaScript -> Right ()
         _ -> Left x_4)

_Clause :: Iso' Clause ( [ Pat ], Body, [ Dec ] )
_Clause = iso (\(Clause x1_0 x2_1 x3_2) -> ( x1_0, x2_1, x3_2 ))
    (\( x1_3, x2_4, x3_5 ) -> Clause x1_3 x2_4 x3_5)

_NormalC :: Prism' Con ( Name, [ BangType ] )
_NormalC = prism (\( x1_0, x2_1 ) -> NormalC x1_0 x2_1)
    (\x_2 -> case x_2 of
         NormalC y1_3 y2_4 -> Right ( y1_3, y2_4 )
         _ -> Left x_2)

_RecC :: Prism' Con ( Name, [ VarBangType ] )
_RecC = prism (\( x1_5, x2_6 ) -> RecC x1_5 x2_6)
    (\x_7 -> case x_7 of
         RecC y1_8 y2_9 -> Right ( y1_8, y2_9 )
         _ -> Left x_7)

_InfixC :: Prism' Con ( BangType, Name, BangType )
_InfixC = prism (\( x1_10, x2_11, x3_12 ) -> InfixC x1_10 x2_11 x3_12)
    (\x_13 -> case x_13 of
         InfixC y1_14 y2_15 y3_16 -> Right ( y1_14, y2_15, y3_16 )
         _ -> Left x_13)

_ForallC :: Prism' Con ( [ TyVarBndr ], Cxt, Con )
_ForallC = prism (\( x1_17, x2_18, x3_19 ) -> ForallC x1_17 x2_18 x3_19)
    (\x_20 -> case x_20 of
         ForallC y1_21 y2_22 y3_23 -> Right ( y1_21, y2_22, y3_23 )
         _ -> Left x_20)

_GadtC :: Prism' Con ( [ Name ], [ BangType ], Type )
_GadtC = prism (\( x1_24, x2_25, x3_26 ) -> GadtC x1_24 x2_25 x3_26)
    (\x_27 -> case x_27 of
         GadtC y1_28 y2_29 y3_30 -> Right ( y1_28, y2_29, y3_30 )
         _ -> Left x_27)

_RecGadtC :: Prism' Con ( [ Name ], [ VarBangType ], Type )
_RecGadtC = prism (\( x1_31, x2_32, x3_33 ) -> RecGadtC x1_31 x2_32 x3_33)
    (\x_34 -> case x_34 of
         RecGadtC y1_35 y2_36 y3_37 -> Right ( y1_35, y2_36, y3_37 )
         _ -> Left x_34)

_FunD :: Prism' Dec ( Name, [ Clause ] )
_FunD = prism (\( x1_0, x2_1 ) -> FunD x1_0 x2_1)
    (\x_2 -> case x_2 of
         FunD y1_3 y2_4 -> Right ( y1_3, y2_4 )
         _ -> Left x_2)

_ValD :: Prism' Dec ( Pat, Body, [ Dec ] )
_ValD = prism (\( x1_5, x2_6, x3_7 ) -> ValD x1_5 x2_6 x3_7)
    (\x_8 -> case x_8 of
         ValD y1_9 y2_10 y3_11 -> Right ( y1_9, y2_10, y3_11 )
         _ -> Left x_8)

_DataD :: Prism' Dec ( Cxt
                     , Name
                     , [ TyVarBndr ]
                     , Maybe Kind
                     , [ Con ]
                     , [ DerivClause ]
                     )
_DataD = prism (\( x1_12, x2_13, x3_14, x4_15, x5_16, x6_17 )
                -> DataD x1_12 x2_13 x3_14 x4_15 x5_16 x6_17)
    (\x_18 -> case x_18 of
         DataD y1_19 y2_20 y3_21 y4_22 y5_23 y6_24
             -> Right ( y1_19, y2_20, y3_21, y4_22, y5_23, y6_24 )
         _ -> Left x_18)

_NewtypeD :: Prism' Dec ( Cxt
                        , Name
                        , [ TyVarBndr ]
                        , Maybe Kind
                        , Con
                        , [ DerivClause ]
                        )
_NewtypeD = prism (\( x1_25, x2_26, x3_27, x4_28, x5_29, x6_30 )
                   -> NewtypeD x1_25 x2_26 x3_27 x4_28 x5_29 x6_30)
    (\x_31 -> case x_31 of
         NewtypeD y1_32 y2_33 y3_34 y4_35 y5_36 y6_37
             -> Right ( y1_32, y2_33, y3_34, y4_35, y5_36, y6_37 )
         _ -> Left x_31)

_TySynD :: Prism' Dec ( Name, [ TyVarBndr ], Type )
_TySynD = prism (\( x1_38, x2_39, x3_40 ) -> TySynD x1_38 x2_39 x3_40)
    (\x_41 -> case x_41 of
         TySynD y1_42 y2_43 y3_44 -> Right ( y1_42, y2_43, y3_44 )
         _ -> Left x_41)

_ClassD :: Prism' Dec ( Cxt, Name, [ TyVarBndr ], [ FunDep ], [ Dec ] )
_ClassD = prism (\( x1_45, x2_46, x3_47, x4_48, x5_49 )
                 -> ClassD x1_45 x2_46 x3_47 x4_48 x5_49)
    (\x_50 -> case x_50 of
         ClassD y1_51 y2_52 y3_53 y4_54 y5_55
             -> Right ( y1_51, y2_52, y3_53, y4_54, y5_55 )
         _ -> Left x_50)

_InstanceD :: Prism' Dec ( Maybe Overlap, Cxt, Type, [ Dec ] )
_InstanceD = prism
    (\( x1_56, x2_57, x3_58, x4_59 ) -> InstanceD x1_56 x2_57 x3_58 x4_59)
    (\x_60 -> case x_60 of
         InstanceD y1_61 y2_62 y3_63 y4_64
             -> Right ( y1_61, y2_62, y3_63, y4_64 )
         _ -> Left x_60)

_SigD :: Prism' Dec ( Name, Type )
_SigD = prism (\( x1_65, x2_66 ) -> SigD x1_65 x2_66)
    (\x_67 -> case x_67 of
         SigD y1_68 y2_69 -> Right ( y1_68, y2_69 )
         _ -> Left x_67)

_ForeignD :: Prism' Dec Foreign
_ForeignD = prism (\x1_70 -> ForeignD x1_70)
    (\x_71 -> case x_71 of
         ForeignD y1_72 -> Right y1_72
         _ -> Left x_71)

_InfixD :: Prism' Dec ( Fixity, Name )
_InfixD = prism (\( x1_73, x2_74 ) -> InfixD x1_73 x2_74)
    (\x_75 -> case x_75 of
         InfixD y1_76 y2_77 -> Right ( y1_76, y2_77 )
         _ -> Left x_75)

_PragmaD :: Prism' Dec Pragma
_PragmaD = prism (\x1_78 -> PragmaD x1_78)
    (\x_79 -> case x_79 of
         PragmaD y1_80 -> Right y1_80
         _ -> Left x_79)

_DataFamilyD :: Prism' Dec ( Name, [ TyVarBndr ], Maybe Kind )
_DataFamilyD = prism (\( x1_81, x2_82, x3_83 ) -> DataFamilyD x1_81 x2_82 x3_83)
    (\x_84 -> case x_84 of
         DataFamilyD y1_85 y2_86 y3_87 -> Right ( y1_85, y2_86, y3_87 )
         _ -> Left x_84)

_DataInstD
    :: Prism' Dec ( Cxt, Name, [ Type ], Maybe Kind, [ Con ], [ DerivClause ] )
_DataInstD = prism (\( x1_88, x2_89, x3_90, x4_91, x5_92, x6_93 )
                    -> DataInstD x1_88 x2_89 x3_90 x4_91 x5_92 x6_93)
    (\x_94 -> case x_94 of
         DataInstD y1_95 y2_96 y3_97 y4_98 y5_99 y6_100
             -> Right ( y1_95, y2_96, y3_97, y4_98, y5_99, y6_100 )
         _ -> Left x_94)

_NewtypeInstD
    :: Prism' Dec ( Cxt, Name, [ Type ], Maybe Kind, Con, [ DerivClause ] )
_NewtypeInstD = prism
    (\( x1_101, x2_102, x3_103, x4_104, x5_105, x6_106 )
     -> NewtypeInstD x1_101 x2_102 x3_103 x4_104 x5_105 x6_106)
    (\x_107 -> case x_107 of
         NewtypeInstD y1_108 y2_109 y3_110 y4_111 y5_112 y6_113
             -> Right ( y1_108, y2_109, y3_110, y4_111, y5_112, y6_113 )
         _ -> Left x_107)

_TySynInstD :: Prism' Dec ( Name, TySynEqn )
_TySynInstD = prism (\( x1_114, x2_115 ) -> TySynInstD x1_114 x2_115)
    (\x_116 -> case x_116 of
         TySynInstD y1_117 y2_118 -> Right ( y1_117, y2_118 )
         _ -> Left x_116)

_OpenTypeFamilyD :: Prism' Dec TypeFamilyHead
_OpenTypeFamilyD = prism (\x1_119 -> OpenTypeFamilyD x1_119)
    (\x_120 -> case x_120 of
         OpenTypeFamilyD y1_121 -> Right y1_121
         _ -> Left x_120)

_ClosedTypeFamilyD :: Prism' Dec ( TypeFamilyHead, [ TySynEqn ] )
_ClosedTypeFamilyD = prism
    (\( x1_122, x2_123 ) -> ClosedTypeFamilyD x1_122 x2_123)
    (\x_124 -> case x_124 of
         ClosedTypeFamilyD y1_125 y2_126 -> Right ( y1_125, y2_126 )
         _ -> Left x_124)

_RoleAnnotD :: Prism' Dec ( Name, [ Role ] )
_RoleAnnotD = prism (\( x1_127, x2_128 ) -> RoleAnnotD x1_127 x2_128)
    (\x_129 -> case x_129 of
         RoleAnnotD y1_130 y2_131 -> Right ( y1_130, y2_131 )
         _ -> Left x_129)

_StandaloneDerivD :: Prism' Dec ( Maybe DerivStrategy, Cxt, Type )
_StandaloneDerivD = prism
    (\( x1_132, x2_133, x3_134 ) -> StandaloneDerivD x1_132 x2_133 x3_134)
    (\x_135 -> case x_135 of
         StandaloneDerivD y1_136 y2_137 y3_138
             -> Right ( y1_136, y2_137, y3_138 )
         _ -> Left x_135)

_DefaultSigD :: Prism' Dec ( Name, Type )
_DefaultSigD = prism (\( x1_139, x2_140 ) -> DefaultSigD x1_139 x2_140)
    (\x_141 -> case x_141 of
         DefaultSigD y1_142 y2_143 -> Right ( y1_142, y2_143 )
         _ -> Left x_141)

_PatSynD :: Prism' Dec ( Name, PatSynArgs, PatSynDir, Pat )
_PatSynD = prism
    (\( x1_144, x2_145, x3_146, x4_147 ) -> PatSynD x1_144 x2_145 x3_146 x4_147)
    (\x_148 -> case x_148 of
         PatSynD y1_149 y2_150 y3_151 y4_152
             -> Right ( y1_149, y2_150, y3_151, y4_152 )
         _ -> Left x_148)

_PatSynSigD :: Prism' Dec ( Name, PatSynType )
_PatSynSigD = prism (\( x1_153, x2_154 ) -> PatSynSigD x1_153 x2_154)
    (\x_155 -> case x_155 of
         PatSynSigD y1_156 y2_157 -> Right ( y1_156, y2_157 )
         _ -> Left x_155)

_DecidedLazy :: Prism' DecidedStrictness ()
_DecidedLazy = prism (\() -> DecidedLazy)
    (\x_0 -> case x_0 of
         DecidedLazy -> Right ()
         _ -> Left x_0)

_DecidedStrict :: Prism' DecidedStrictness ()
_DecidedStrict = prism (\() -> DecidedStrict)
    (\x_1 -> case x_1 of
         DecidedStrict -> Right ()
         _ -> Left x_1)

_DecidedUnpack :: Prism' DecidedStrictness ()
_DecidedUnpack = prism (\() -> DecidedUnpack)
    (\x_2 -> case x_2 of
         DecidedUnpack -> Right ()
         _ -> Left x_2)

_DerivClause :: Iso' DerivClause ( Maybe DerivStrategy, Cxt )
_DerivClause = iso (\(DerivClause x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> DerivClause x1_2 x2_3)

_StockStrategy :: Prism' DerivStrategy ()
_StockStrategy = prism (\() -> StockStrategy)
    (\x_0 -> case x_0 of
         StockStrategy -> Right ()
         _ -> Left x_0)

_AnyclassStrategy :: Prism' DerivStrategy ()
_AnyclassStrategy = prism (\() -> AnyclassStrategy)
    (\x_1 -> case x_1 of
         AnyclassStrategy -> Right ()
         _ -> Left x_1)

_NewtypeStrategy :: Prism' DerivStrategy ()
_NewtypeStrategy = prism (\() -> NewtypeStrategy)
    (\x_2 -> case x_2 of
         NewtypeStrategy -> Right ()
         _ -> Left x_2)

_ViaStrategy :: Prism' DerivStrategy Type
_ViaStrategy = prism (\x1_3 -> ViaStrategy x1_3)
    (\x_4 -> case x_4 of
         ViaStrategy y1_5 -> Right y1_5
         _ -> Left x_4)

_VarE :: Prism' Exp Name
_VarE = prism (\x1_0 -> VarE x1_0) (\x_1 -> case x_1 of
                                        VarE y1_2 -> Right y1_2
                                        _ -> Left x_1)

_ConE :: Prism' Exp Name
_ConE = prism (\x1_3 -> ConE x1_3) (\x_4 -> case x_4 of
                                        ConE y1_5 -> Right y1_5
                                        _ -> Left x_4)

_LitE :: Prism' Exp Lit
_LitE = prism (\x1_6 -> LitE x1_6) (\x_7 -> case x_7 of
                                        LitE y1_8 -> Right y1_8
                                        _ -> Left x_7)

_AppE :: Prism' Exp ( Exp, Exp )
_AppE = prism (\( x1_9, x2_10 ) -> AppE x1_9 x2_10)
    (\x_11 -> case x_11 of
         AppE y1_12 y2_13 -> Right ( y1_12, y2_13 )
         _ -> Left x_11)

_AppTypeE :: Prism' Exp ( Exp, Type )
_AppTypeE = prism (\( x1_14, x2_15 ) -> AppTypeE x1_14 x2_15)
    (\x_16 -> case x_16 of
         AppTypeE y1_17 y2_18 -> Right ( y1_17, y2_18 )
         _ -> Left x_16)

_InfixE :: Prism' Exp ( Maybe Exp, Exp, Maybe Exp )
_InfixE = prism (\( x1_19, x2_20, x3_21 ) -> InfixE x1_19 x2_20 x3_21)
    (\x_22 -> case x_22 of
         InfixE y1_23 y2_24 y3_25 -> Right ( y1_23, y2_24, y3_25 )
         _ -> Left x_22)

_UInfixE :: Prism' Exp ( Exp, Exp, Exp )
_UInfixE = prism (\( x1_26, x2_27, x3_28 ) -> UInfixE x1_26 x2_27 x3_28)
    (\x_29 -> case x_29 of
         UInfixE y1_30 y2_31 y3_32 -> Right ( y1_30, y2_31, y3_32 )
         _ -> Left x_29)

_ParensE :: Prism' Exp Exp
_ParensE = prism (\x1_33 -> ParensE x1_33)
    (\x_34 -> case x_34 of
         ParensE y1_35 -> Right y1_35
         _ -> Left x_34)

_LamE :: Prism' Exp ( [ Pat ], Exp )
_LamE = prism (\( x1_36, x2_37 ) -> LamE x1_36 x2_37)
    (\x_38 -> case x_38 of
         LamE y1_39 y2_40 -> Right ( y1_39, y2_40 )
         _ -> Left x_38)

_LamCaseE :: Prism' Exp ([ Match ])
_LamCaseE = prism (\x1_41 -> LamCaseE x1_41)
    (\x_42 -> case x_42 of
         LamCaseE y1_43 -> Right y1_43
         _ -> Left x_42)

_TupE :: Prism' Exp ([ Exp ])
_TupE = prism (\x1_44 -> TupE x1_44) (\x_45 -> case x_45 of
                                          TupE y1_46 -> Right y1_46
                                          _ -> Left x_45)

_UnboxedTupE :: Prism' Exp ([ Exp ])
_UnboxedTupE = prism (\x1_47 -> UnboxedTupE x1_47)
    (\x_48 -> case x_48 of
         UnboxedTupE y1_49 -> Right y1_49
         _ -> Left x_48)

_UnboxedSumE :: Prism' Exp ( Exp, SumAlt, SumArity )
_UnboxedSumE = prism (\( x1_50, x2_51, x3_52 ) -> UnboxedSumE x1_50 x2_51 x3_52)
    (\x_53 -> case x_53 of
         UnboxedSumE y1_54 y2_55 y3_56 -> Right ( y1_54, y2_55, y3_56 )
         _ -> Left x_53)

_CondE :: Prism' Exp ( Exp, Exp, Exp )
_CondE = prism (\( x1_57, x2_58, x3_59 ) -> CondE x1_57 x2_58 x3_59)
    (\x_60 -> case x_60 of
         CondE y1_61 y2_62 y3_63 -> Right ( y1_61, y2_62, y3_63 )
         _ -> Left x_60)

_MultiIfE :: Prism' Exp ([ ( Guard, Exp ) ])
_MultiIfE = prism (\x1_64 -> MultiIfE x1_64)
    (\x_65 -> case x_65 of
         MultiIfE y1_66 -> Right y1_66
         _ -> Left x_65)

_LetE :: Prism' Exp ( [ Dec ], Exp )
_LetE = prism (\( x1_67, x2_68 ) -> LetE x1_67 x2_68)
    (\x_69 -> case x_69 of
         LetE y1_70 y2_71 -> Right ( y1_70, y2_71 )
         _ -> Left x_69)

_CaseE :: Prism' Exp ( Exp, [ Match ] )
_CaseE = prism (\( x1_72, x2_73 ) -> CaseE x1_72 x2_73)
    (\x_74 -> case x_74 of
         CaseE y1_75 y2_76 -> Right ( y1_75, y2_76 )
         _ -> Left x_74)

_DoE :: Prism' Exp ([ Stmt ])
_DoE = prism (\x1_77 -> DoE x1_77) (\x_78 -> case x_78 of
                                        DoE y1_79 -> Right y1_79
                                        _ -> Left x_78)

_CompE :: Prism' Exp ([ Stmt ])
_CompE = prism (\x1_80 -> CompE x1_80)
    (\x_81 -> case x_81 of
         CompE y1_82 -> Right y1_82
         _ -> Left x_81)

_ArithSeqE :: Prism' Exp Range
_ArithSeqE = prism (\x1_83 -> ArithSeqE x1_83)
    (\x_84 -> case x_84 of
         ArithSeqE y1_85 -> Right y1_85
         _ -> Left x_84)

_ListE :: Prism' Exp ([ Exp ])
_ListE = prism (\x1_86 -> ListE x1_86)
    (\x_87 -> case x_87 of
         ListE y1_88 -> Right y1_88
         _ -> Left x_87)

_SigE :: Prism' Exp ( Exp, Type )
_SigE = prism (\( x1_89, x2_90 ) -> SigE x1_89 x2_90)
    (\x_91 -> case x_91 of
         SigE y1_92 y2_93 -> Right ( y1_92, y2_93 )
         _ -> Left x_91)

_RecConE :: Prism' Exp ( Name, [ FieldExp ] )
_RecConE = prism (\( x1_94, x2_95 ) -> RecConE x1_94 x2_95)
    (\x_96 -> case x_96 of
         RecConE y1_97 y2_98 -> Right ( y1_97, y2_98 )
         _ -> Left x_96)

_RecUpdE :: Prism' Exp ( Exp, [ FieldExp ] )
_RecUpdE = prism (\( x1_99, x2_100 ) -> RecUpdE x1_99 x2_100)
    (\x_101 -> case x_101 of
         RecUpdE y1_102 y2_103 -> Right ( y1_102, y2_103 )
         _ -> Left x_101)

_StaticE :: Prism' Exp Exp
_StaticE = prism (\x1_104 -> StaticE x1_104)
    (\x_105 -> case x_105 of
         StaticE y1_106 -> Right y1_106
         _ -> Left x_105)

_UnboundVarE :: Prism' Exp Name
_UnboundVarE = prism (\x1_107 -> UnboundVarE x1_107)
    (\x_108 -> case x_108 of
         UnboundVarE y1_109 -> Right y1_109
         _ -> Left x_108)

_LabelE :: Prism' Exp String
_LabelE = prism (\x1_110 -> LabelE x1_110)
    (\x_111 -> case x_111 of
         LabelE y1_112 -> Right y1_112
         _ -> Left x_111)

_NoSig :: Prism' FamilyResultSig ()
_NoSig = prism (\() -> NoSig) (\x_0 -> case x_0 of
                                   NoSig -> Right ()
                                   _ -> Left x_0)

_KindSig :: Prism' FamilyResultSig Kind
_KindSig = prism (\x1_1 -> KindSig x1_1)
    (\x_2 -> case x_2 of
         KindSig y1_3 -> Right y1_3
         _ -> Left x_2)

_TyVarSig :: Prism' FamilyResultSig TyVarBndr
_TyVarSig = prism (\x1_4 -> TyVarSig x1_4)
    (\x_5 -> case x_5 of
         TyVarSig y1_6 -> Right y1_6
         _ -> Left x_5)

_InfixL :: Prism' FixityDirection ()
_InfixL = prism (\() -> InfixL) (\x_0 -> case x_0 of
                                     InfixL -> Right ()
                                     _ -> Left x_0)

_InfixR :: Prism' FixityDirection ()
_InfixR = prism (\() -> InfixR) (\x_1 -> case x_1 of
                                     InfixR -> Right ()
                                     _ -> Left x_1)

_InfixN :: Prism' FixityDirection ()
_InfixN = prism (\() -> InfixN) (\x_2 -> case x_2 of
                                     InfixN -> Right ()
                                     _ -> Left x_2)

_Fixity :: Iso' Fixity ( Int, FixityDirection )
_Fixity = iso (\(Fixity x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> Fixity x1_2 x2_3)

_ImportF :: Prism' Foreign ( Callconv, Safety, String, Name, Type )
_ImportF = prism
    (\( x1_0, x2_1, x3_2, x4_3, x5_4 ) -> ImportF x1_0 x2_1 x3_2 x4_3 x5_4)
    (\x_5 -> case x_5 of
         ImportF y1_6 y2_7 y3_8 y4_9 y5_10
             -> Right ( y1_6, y2_7, y3_8, y4_9, y5_10 )
         _ -> Left x_5)

_ExportF :: Prism' Foreign ( Callconv, String, Name, Type )
_ExportF = prism
    (\( x1_11, x2_12, x3_13, x4_14 ) -> ExportF x1_11 x2_12 x3_13 x4_14)
    (\x_15 -> case x_15 of
         ExportF y1_16 y2_17 y3_18 y4_19
             -> Right ( y1_16, y2_17, y3_18, y4_19 )
         _ -> Left x_15)

_FunDep :: Iso' FunDep ( [ Name ], [ Name ] )
_FunDep = iso (\(FunDep x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> FunDep x1_2 x2_3)

_NormalG :: Prism' Guard Exp
_NormalG = prism (\x1_0 -> NormalG x1_0)
    (\x_1 -> case x_1 of
         NormalG y1_2 -> Right y1_2
         _ -> Left x_1)

_PatG :: Prism' Guard ([ Stmt ])
_PatG = prism (\x1_3 -> PatG x1_3) (\x_4 -> case x_4 of
                                        PatG y1_5 -> Right y1_5
                                        _ -> Left x_4)

_ClassI :: Prism' Info ( Dec, [ InstanceDec ] )
_ClassI = prism (\( x1_0, x2_1 ) -> ClassI x1_0 x2_1)
    (\x_2 -> case x_2 of
         ClassI y1_3 y2_4 -> Right ( y1_3, y2_4 )
         _ -> Left x_2)

_ClassOpI :: Prism' Info ( Name, Type, ParentName )
_ClassOpI = prism (\( x1_5, x2_6, x3_7 ) -> ClassOpI x1_5 x2_6 x3_7)
    (\x_8 -> case x_8 of
         ClassOpI y1_9 y2_10 y3_11 -> Right ( y1_9, y2_10, y3_11 )
         _ -> Left x_8)

_TyConI :: Prism' Info Dec
_TyConI = prism (\x1_12 -> TyConI x1_12)
    (\x_13 -> case x_13 of
         TyConI y1_14 -> Right y1_14
         _ -> Left x_13)

_FamilyI :: Prism' Info ( Dec, [ InstanceDec ] )
_FamilyI = prism (\( x1_15, x2_16 ) -> FamilyI x1_15 x2_16)
    (\x_17 -> case x_17 of
         FamilyI y1_18 y2_19 -> Right ( y1_18, y2_19 )
         _ -> Left x_17)

_PrimTyConI :: Prism' Info ( Name, Arity, Unlifted )
_PrimTyConI = prism (\( x1_20, x2_21, x3_22 ) -> PrimTyConI x1_20 x2_21 x3_22)
    (\x_23 -> case x_23 of
         PrimTyConI y1_24 y2_25 y3_26 -> Right ( y1_24, y2_25, y3_26 )
         _ -> Left x_23)

_DataConI :: Prism' Info ( Name, Type, ParentName )
_DataConI = prism (\( x1_27, x2_28, x3_29 ) -> DataConI x1_27 x2_28 x3_29)
    (\x_30 -> case x_30 of
         DataConI y1_31 y2_32 y3_33 -> Right ( y1_31, y2_32, y3_33 )
         _ -> Left x_30)

_PatSynI :: Prism' Info ( Name, PatSynType )
_PatSynI = prism (\( x1_34, x2_35 ) -> PatSynI x1_34 x2_35)
    (\x_36 -> case x_36 of
         PatSynI y1_37 y2_38 -> Right ( y1_37, y2_38 )
         _ -> Left x_36)

_VarI :: Prism' Info ( Name, Type, Maybe Dec )
_VarI = prism (\( x1_39, x2_40, x3_41 ) -> VarI x1_39 x2_40 x3_41)
    (\x_42 -> case x_42 of
         VarI y1_43 y2_44 y3_45 -> Right ( y1_43, y2_44, y3_45 )
         _ -> Left x_42)

_TyVarI :: Prism' Info ( Name, Type )
_TyVarI = prism (\( x1_46, x2_47 ) -> TyVarI x1_46 x2_47)
    (\x_48 -> case x_48 of
         TyVarI y1_49 y2_50 -> Right ( y1_49, y2_50 )
         _ -> Left x_48)

_InjectivityAnn :: Iso' InjectivityAnn ( Name, [ Name ] )
_InjectivityAnn = iso (\(InjectivityAnn x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> InjectivityAnn x1_2 x2_3)

_NoInline :: Prism' Inline ()
_NoInline = prism (\() -> NoInline) (\x_0 -> case x_0 of
                                         NoInline -> Right ()
                                         _ -> Left x_0)

_Inline :: Prism' Inline ()
_Inline = prism (\() -> Inline) (\x_1 -> case x_1 of
                                     Inline -> Right ()
                                     _ -> Left x_1)

_Inlinable :: Prism' Inline ()
_Inlinable = prism (\() -> Inlinable) (\x_2 -> case x_2 of
                                           Inlinable -> Right ()
                                           _ -> Left x_2)

_CharL :: Prism' Lit Char
_CharL = prism (\x1_0 -> CharL x1_0) (\x_1 -> case x_1 of
                                          CharL y1_2 -> Right y1_2
                                          _ -> Left x_1)

_StringL :: Prism' Lit String
_StringL = prism (\x1_3 -> StringL x1_3)
    (\x_4 -> case x_4 of
         StringL y1_5 -> Right y1_5
         _ -> Left x_4)

_IntegerL :: Prism' Lit Integer
_IntegerL = prism (\x1_6 -> IntegerL x1_6)
    (\x_7 -> case x_7 of
         IntegerL y1_8 -> Right y1_8
         _ -> Left x_7)

_RationalL :: Prism' Lit Rational
_RationalL = prism (\x1_9 -> RationalL x1_9)
    (\x_10 -> case x_10 of
         RationalL y1_11 -> Right y1_11
         _ -> Left x_10)

_IntPrimL :: Prism' Lit Integer
_IntPrimL = prism (\x1_12 -> IntPrimL x1_12)
    (\x_13 -> case x_13 of
         IntPrimL y1_14 -> Right y1_14
         _ -> Left x_13)

_WordPrimL :: Prism' Lit Integer
_WordPrimL = prism (\x1_15 -> WordPrimL x1_15)
    (\x_16 -> case x_16 of
         WordPrimL y1_17 -> Right y1_17
         _ -> Left x_16)

_FloatPrimL :: Prism' Lit Rational
_FloatPrimL = prism (\x1_18 -> FloatPrimL x1_18)
    (\x_19 -> case x_19 of
         FloatPrimL y1_20 -> Right y1_20
         _ -> Left x_19)

_DoublePrimL :: Prism' Lit Rational
_DoublePrimL = prism (\x1_21 -> DoublePrimL x1_21)
    (\x_22 -> case x_22 of
         DoublePrimL y1_23 -> Right y1_23
         _ -> Left x_22)

_StringPrimL :: Prism' Lit ([ Word8 ])
_StringPrimL = prism (\x1_24 -> StringPrimL x1_24)
    (\x_25 -> case x_25 of
         StringPrimL y1_26 -> Right y1_26
         _ -> Left x_25)

_CharPrimL :: Prism' Lit Char
_CharPrimL = prism (\x1_27 -> CharPrimL x1_27)
    (\x_28 -> case x_28 of
         CharPrimL y1_29 -> Right y1_29
         _ -> Left x_28)

_Loc :: Iso' Loc ( String, String, String, CharPos, CharPos )
_Loc = iso (\(Loc x1_0 x2_1 x3_2 x4_3 x5_4) -> ( x1_0, x2_1, x3_2, x4_3, x5_4 ))
    (\( x1_5, x2_6, x3_7, x4_8, x5_9 ) -> Loc x1_5 x2_6 x3_7 x4_8 x5_9)

_Match :: Iso' Match ( Pat, Body, [ Dec ] )
_Match = iso (\(Match x1_0 x2_1 x3_2) -> ( x1_0, x2_1, x3_2 ))
    (\( x1_3, x2_4, x3_5 ) -> Match x1_3 x2_4 x3_5)

_ModName :: Iso' ModName String
_ModName = iso (\(ModName x1_0) -> x1_0) (\x1_1 -> ModName x1_1)

_Module :: Iso' Module ( PkgName, ModName )
_Module = iso (\(Module x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> Module x1_2 x2_3)

_ModuleInfo :: Iso' ModuleInfo ([ Module ])
_ModuleInfo = iso (\(ModuleInfo x1_0) -> x1_0) (\x1_1 -> ModuleInfo x1_1)

_NameS :: Prism' NameFlavour ()
_NameS = prism (\() -> NameS) (\x_0 -> case x_0 of
                                   NameS -> Right ()
                                   _ -> Left x_0)

_NameQ :: Prism' NameFlavour ModName
_NameQ = prism (\x1_1 -> NameQ x1_1) (\x_2 -> case x_2 of
                                          NameQ y1_3 -> Right y1_3
                                          _ -> Left x_2)

_NameU :: Prism' NameFlavour Int
_NameU = prism (\x1_4 -> NameU x1_4) (\x_5 -> case x_5 of
                                          NameU y1_6 -> Right y1_6
                                          _ -> Left x_5)

_NameL :: Prism' NameFlavour Int
_NameL = prism (\x1_7 -> NameL x1_7) (\x_8 -> case x_8 of
                                          NameL y1_9 -> Right y1_9
                                          _ -> Left x_8)

_NameG :: Prism' NameFlavour ( NameSpace, PkgName, ModName )
_NameG = prism (\( x1_10, x2_11, x3_12 ) -> NameG x1_10 x2_11 x3_12)
    (\x_13 -> case x_13 of
         NameG y1_14 y2_15 y3_16 -> Right ( y1_14, y2_15, y3_16 )
         _ -> Left x_13)

_Name :: Iso' Name ( OccName, NameFlavour )
_Name = iso (\(Name x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> Name x1_2 x2_3)

_Alone :: Prism' NameIs ()
_Alone = prism (\() -> Alone) (\x_0 -> case x_0 of
                                   Alone -> Right ()
                                   _ -> Left x_0)

_Applied :: Prism' NameIs ()
_Applied = prism (\() -> Applied) (\x_1 -> case x_1 of
                                       Applied -> Right ()
                                       _ -> Left x_1)

_Infix :: Prism' NameIs ()
_Infix = prism (\() -> Infix) (\x_2 -> case x_2 of
                                   Infix -> Right ()
                                   _ -> Left x_2)

_VarName :: Prism' NameSpace ()
_VarName = prism (\() -> VarName) (\x_0 -> case x_0 of
                                       VarName -> Right ()
                                       _ -> Left x_0)

_DataName :: Prism' NameSpace ()
_DataName = prism (\() -> DataName) (\x_1 -> case x_1 of
                                         DataName -> Right ()
                                         _ -> Left x_1)

_TcClsName :: Prism' NameSpace ()
_TcClsName = prism (\() -> TcClsName) (\x_2 -> case x_2 of
                                           TcClsName -> Right ()
                                           _ -> Left x_2)

_OccName :: Iso' OccName String
_OccName = iso (\(OccName x1_0) -> x1_0) (\x1_1 -> OccName x1_1)

_Overlappable :: Prism' Overlap ()
_Overlappable = prism (\() -> Overlappable)
    (\x_0 -> case x_0 of
         Overlappable -> Right ()
         _ -> Left x_0)

_Overlapping :: Prism' Overlap ()
_Overlapping = prism (\() -> Overlapping)
    (\x_1 -> case x_1 of
         Overlapping -> Right ()
         _ -> Left x_1)

_Overlaps :: Prism' Overlap ()
_Overlaps = prism (\() -> Overlaps) (\x_2 -> case x_2 of
                                         Overlaps -> Right ()
                                         _ -> Left x_2)

_Incoherent :: Prism' Overlap ()
_Incoherent = prism (\() -> Incoherent)
    (\x_3 -> case x_3 of
         Incoherent -> Right ()
         _ -> Left x_3)

_LitP :: Prism' Pat Lit
_LitP = prism (\x1_0 -> LitP x1_0) (\x_1 -> case x_1 of
                                        LitP y1_2 -> Right y1_2
                                        _ -> Left x_1)

_VarP :: Prism' Pat Name
_VarP = prism (\x1_3 -> VarP x1_3) (\x_4 -> case x_4 of
                                        VarP y1_5 -> Right y1_5
                                        _ -> Left x_4)

_TupP :: Prism' Pat ([ Pat ])
_TupP = prism (\x1_6 -> TupP x1_6) (\x_7 -> case x_7 of
                                        TupP y1_8 -> Right y1_8
                                        _ -> Left x_7)

_UnboxedTupP :: Prism' Pat ([ Pat ])
_UnboxedTupP = prism (\x1_9 -> UnboxedTupP x1_9)
    (\x_10 -> case x_10 of
         UnboxedTupP y1_11 -> Right y1_11
         _ -> Left x_10)

_UnboxedSumP :: Prism' Pat ( Pat, SumAlt, SumArity )
_UnboxedSumP = prism (\( x1_12, x2_13, x3_14 ) -> UnboxedSumP x1_12 x2_13 x3_14)
    (\x_15 -> case x_15 of
         UnboxedSumP y1_16 y2_17 y3_18 -> Right ( y1_16, y2_17, y3_18 )
         _ -> Left x_15)

_ConP :: Prism' Pat ( Name, [ Pat ] )
_ConP = prism (\( x1_19, x2_20 ) -> ConP x1_19 x2_20)
    (\x_21 -> case x_21 of
         ConP y1_22 y2_23 -> Right ( y1_22, y2_23 )
         _ -> Left x_21)

_InfixP :: Prism' Pat ( Pat, Name, Pat )
_InfixP = prism (\( x1_24, x2_25, x3_26 ) -> InfixP x1_24 x2_25 x3_26)
    (\x_27 -> case x_27 of
         InfixP y1_28 y2_29 y3_30 -> Right ( y1_28, y2_29, y3_30 )
         _ -> Left x_27)

_UInfixP :: Prism' Pat ( Pat, Name, Pat )
_UInfixP = prism (\( x1_31, x2_32, x3_33 ) -> UInfixP x1_31 x2_32 x3_33)
    (\x_34 -> case x_34 of
         UInfixP y1_35 y2_36 y3_37 -> Right ( y1_35, y2_36, y3_37 )
         _ -> Left x_34)

_ParensP :: Prism' Pat Pat
_ParensP = prism (\x1_38 -> ParensP x1_38)
    (\x_39 -> case x_39 of
         ParensP y1_40 -> Right y1_40
         _ -> Left x_39)

_TildeP :: Prism' Pat Pat
_TildeP = prism (\x1_41 -> TildeP x1_41)
    (\x_42 -> case x_42 of
         TildeP y1_43 -> Right y1_43
         _ -> Left x_42)

_BangP :: Prism' Pat Pat
_BangP = prism (\x1_44 -> BangP x1_44)
    (\x_45 -> case x_45 of
         BangP y1_46 -> Right y1_46
         _ -> Left x_45)

_AsP :: Prism' Pat ( Name, Pat )
_AsP = prism (\( x1_47, x2_48 ) -> AsP x1_47 x2_48)
    (\x_49 -> case x_49 of
         AsP y1_50 y2_51 -> Right ( y1_50, y2_51 )
         _ -> Left x_49)

_WildP :: Prism' Pat ()
_WildP = prism (\() -> WildP) (\x_52 -> case x_52 of
                                   WildP -> Right ()
                                   _ -> Left x_52)

_RecP :: Prism' Pat ( Name, [ FieldPat ] )
_RecP = prism (\( x1_53, x2_54 ) -> RecP x1_53 x2_54)
    (\x_55 -> case x_55 of
         RecP y1_56 y2_57 -> Right ( y1_56, y2_57 )
         _ -> Left x_55)

_ListP :: Prism' Pat ([ Pat ])
_ListP = prism (\x1_58 -> ListP x1_58)
    (\x_59 -> case x_59 of
         ListP y1_60 -> Right y1_60
         _ -> Left x_59)

_SigP :: Prism' Pat ( Pat, Type )
_SigP = prism (\( x1_61, x2_62 ) -> SigP x1_61 x2_62)
    (\x_63 -> case x_63 of
         SigP y1_64 y2_65 -> Right ( y1_64, y2_65 )
         _ -> Left x_63)

_ViewP :: Prism' Pat ( Exp, Pat )
_ViewP = prism (\( x1_66, x2_67 ) -> ViewP x1_66 x2_67)
    (\x_68 -> case x_68 of
         ViewP y1_69 y2_70 -> Right ( y1_69, y2_70 )
         _ -> Left x_68)

_PrefixPatSyn :: Prism' PatSynArgs ([ Name ])
_PrefixPatSyn = prism (\x1_0 -> PrefixPatSyn x1_0)
    (\x_1 -> case x_1 of
         PrefixPatSyn y1_2 -> Right y1_2
         _ -> Left x_1)

_InfixPatSyn :: Prism' PatSynArgs ( Name, Name )
_InfixPatSyn = prism (\( x1_3, x2_4 ) -> InfixPatSyn x1_3 x2_4)
    (\x_5 -> case x_5 of
         InfixPatSyn y1_6 y2_7 -> Right ( y1_6, y2_7 )
         _ -> Left x_5)

_RecordPatSyn :: Prism' PatSynArgs ([ Name ])
_RecordPatSyn = prism (\x1_8 -> RecordPatSyn x1_8)
    (\x_9 -> case x_9 of
         RecordPatSyn y1_10 -> Right y1_10
         _ -> Left x_9)

_Unidir :: Prism' PatSynDir ()
_Unidir = prism (\() -> Unidir) (\x_0 -> case x_0 of
                                     Unidir -> Right ()
                                     _ -> Left x_0)

_ImplBidir :: Prism' PatSynDir ()
_ImplBidir = prism (\() -> ImplBidir) (\x_1 -> case x_1 of
                                           ImplBidir -> Right ()
                                           _ -> Left x_1)

_ExplBidir :: Prism' PatSynDir ([ Clause ])
_ExplBidir = prism (\x1_2 -> ExplBidir x1_2)
    (\x_3 -> case x_3 of
         ExplBidir y1_4 -> Right y1_4
         _ -> Left x_3)

_AllPhases :: Prism' Phases ()
_AllPhases = prism (\() -> AllPhases) (\x_0 -> case x_0 of
                                           AllPhases -> Right ()
                                           _ -> Left x_0)

_FromPhase :: Prism' Phases Int
_FromPhase = prism (\x1_1 -> FromPhase x1_1)
    (\x_2 -> case x_2 of
         FromPhase y1_3 -> Right y1_3
         _ -> Left x_2)

_BeforePhase :: Prism' Phases Int
_BeforePhase = prism (\x1_4 -> BeforePhase x1_4)
    (\x_5 -> case x_5 of
         BeforePhase y1_6 -> Right y1_6
         _ -> Left x_5)

_PkgName :: Iso' PkgName String
_PkgName = iso (\(PkgName x1_0) -> x1_0) (\x1_1 -> PkgName x1_1)

_InlineP :: Prism' Pragma ( Name, Inline, RuleMatch, Phases )
_InlineP = prism (\( x1_0, x2_1, x3_2, x4_3 ) -> InlineP x1_0 x2_1 x3_2 x4_3)
    (\x_4 -> case x_4 of
         InlineP y1_5 y2_6 y3_7 y4_8 -> Right ( y1_5, y2_6, y3_7, y4_8 )
         _ -> Left x_4)

_SpecialiseP :: Prism' Pragma ( Name, Type, Maybe Inline, Phases )
_SpecialiseP = prism
    (\( x1_9, x2_10, x3_11, x4_12 ) -> SpecialiseP x1_9 x2_10 x3_11 x4_12)
    (\x_13 -> case x_13 of
         SpecialiseP y1_14 y2_15 y3_16 y4_17
             -> Right ( y1_14, y2_15, y3_16, y4_17 )
         _ -> Left x_13)

_SpecialiseInstP :: Prism' Pragma Type
_SpecialiseInstP = prism (\x1_18 -> SpecialiseInstP x1_18)
    (\x_19 -> case x_19 of
         SpecialiseInstP y1_20 -> Right y1_20
         _ -> Left x_19)

_RuleP :: Prism' Pragma ( String, [ RuleBndr ], Exp, Exp, Phases )
_RuleP = prism (\( x1_21, x2_22, x3_23, x4_24, x5_25 )
                -> RuleP x1_21 x2_22 x3_23 x4_24 x5_25)
    (\x_26 -> case x_26 of
         RuleP y1_27 y2_28 y3_29 y4_30 y5_31
             -> Right ( y1_27, y2_28, y3_29, y4_30, y5_31 )
         _ -> Left x_26)

_AnnP :: Prism' Pragma ( AnnTarget, Exp )
_AnnP = prism (\( x1_32, x2_33 ) -> AnnP x1_32 x2_33)
    (\x_34 -> case x_34 of
         AnnP y1_35 y2_36 -> Right ( y1_35, y2_36 )
         _ -> Left x_34)

_LineP :: Prism' Pragma ( Int, String )
_LineP = prism (\( x1_37, x2_38 ) -> LineP x1_37 x2_38)
    (\x_39 -> case x_39 of
         LineP y1_40 y2_41 -> Right ( y1_40, y2_41 )
         _ -> Left x_39)

_CompleteP :: Prism' Pragma ( [ Name ], Maybe Name )
_CompleteP = prism (\( x1_42, x2_43 ) -> CompleteP x1_42 x2_43)
    (\x_44 -> case x_44 of
         CompleteP y1_45 y2_46 -> Right ( y1_45, y2_46 )
         _ -> Left x_44)

_FromR :: Prism' Range Exp
_FromR = prism (\x1_0 -> FromR x1_0) (\x_1 -> case x_1 of
                                          FromR y1_2 -> Right y1_2
                                          _ -> Left x_1)

_FromThenR :: Prism' Range ( Exp, Exp )
_FromThenR = prism (\( x1_3, x2_4 ) -> FromThenR x1_3 x2_4)
    (\x_5 -> case x_5 of
         FromThenR y1_6 y2_7 -> Right ( y1_6, y2_7 )
         _ -> Left x_5)

_FromToR :: Prism' Range ( Exp, Exp )
_FromToR = prism (\( x1_8, x2_9 ) -> FromToR x1_8 x2_9)
    (\x_10 -> case x_10 of
         FromToR y1_11 y2_12 -> Right ( y1_11, y2_12 )
         _ -> Left x_10)

_FromThenToR :: Prism' Range ( Exp, Exp, Exp )
_FromThenToR = prism (\( x1_13, x2_14, x3_15 ) -> FromThenToR x1_13 x2_14 x3_15)
    (\x_16 -> case x_16 of
         FromThenToR y1_17 y2_18 y3_19 -> Right ( y1_17, y2_18, y3_19 )
         _ -> Left x_16)

_NominalR :: Prism' Role ()
_NominalR = prism (\() -> NominalR) (\x_0 -> case x_0 of
                                         NominalR -> Right ()
                                         _ -> Left x_0)

_RepresentationalR :: Prism' Role ()
_RepresentationalR = prism (\() -> RepresentationalR)
    (\x_1 -> case x_1 of
         RepresentationalR -> Right ()
         _ -> Left x_1)

_PhantomR :: Prism' Role ()
_PhantomR = prism (\() -> PhantomR) (\x_2 -> case x_2 of
                                         PhantomR -> Right ()
                                         _ -> Left x_2)

_InferR :: Prism' Role ()
_InferR = prism (\() -> InferR) (\x_3 -> case x_3 of
                                     InferR -> Right ()
                                     _ -> Left x_3)

_RuleVar :: Prism' RuleBndr Name
_RuleVar = prism (\x1_0 -> RuleVar x1_0)
    (\x_1 -> case x_1 of
         RuleVar y1_2 -> Right y1_2
         _ -> Left x_1)

_TypedRuleVar :: Prism' RuleBndr ( Name, Type )
_TypedRuleVar = prism (\( x1_3, x2_4 ) -> TypedRuleVar x1_3 x2_4)
    (\x_5 -> case x_5 of
         TypedRuleVar y1_6 y2_7 -> Right ( y1_6, y2_7 )
         _ -> Left x_5)

_ConLike :: Prism' RuleMatch ()
_ConLike = prism (\() -> ConLike) (\x_0 -> case x_0 of
                                       ConLike -> Right ()
                                       _ -> Left x_0)

_FunLike :: Prism' RuleMatch ()
_FunLike = prism (\() -> FunLike) (\x_1 -> case x_1 of
                                       FunLike -> Right ()
                                       _ -> Left x_1)

_Unsafe :: Prism' Safety ()
_Unsafe = prism (\() -> Unsafe) (\x_0 -> case x_0 of
                                     Unsafe -> Right ()
                                     _ -> Left x_0)

_Safe :: Prism' Safety ()
_Safe = prism (\() -> Safe) (\x_1 -> case x_1 of
                                 Safe -> Right ()
                                 _ -> Left x_1)

_Interruptible :: Prism' Safety ()
_Interruptible = prism (\() -> Interruptible)
    (\x_2 -> case x_2 of
         Interruptible -> Right ()
         _ -> Left x_2)

_NoSourceStrictness :: Prism' SourceStrictness ()
_NoSourceStrictness = prism (\() -> NoSourceStrictness)
    (\x_0 -> case x_0 of
         NoSourceStrictness -> Right ()
         _ -> Left x_0)

_SourceLazy :: Prism' SourceStrictness ()
_SourceLazy = prism (\() -> SourceLazy)
    (\x_1 -> case x_1 of
         SourceLazy -> Right ()
         _ -> Left x_1)

_SourceStrict :: Prism' SourceStrictness ()
_SourceStrict = prism (\() -> SourceStrict)
    (\x_2 -> case x_2 of
         SourceStrict -> Right ()
         _ -> Left x_2)

_NoSourceUnpackedness :: Prism' SourceUnpackedness ()
_NoSourceUnpackedness = prism (\() -> NoSourceUnpackedness)
    (\x_0 -> case x_0 of
         NoSourceUnpackedness -> Right ()
         _ -> Left x_0)

_SourceNoUnpack :: Prism' SourceUnpackedness ()
_SourceNoUnpack = prism (\() -> SourceNoUnpack)
    (\x_1 -> case x_1 of
         SourceNoUnpack -> Right ()
         _ -> Left x_1)

_SourceUnpack :: Prism' SourceUnpackedness ()
_SourceUnpack = prism (\() -> SourceUnpack)
    (\x_2 -> case x_2 of
         SourceUnpack -> Right ()
         _ -> Left x_2)

_BindS :: Prism' Stmt ( Pat, Exp )
_BindS = prism (\( x1_0, x2_1 ) -> BindS x1_0 x2_1)
    (\x_2 -> case x_2 of
         BindS y1_3 y2_4 -> Right ( y1_3, y2_4 )
         _ -> Left x_2)

_LetS :: Prism' Stmt ([ Dec ])
_LetS = prism (\x1_5 -> LetS x1_5) (\x_6 -> case x_6 of
                                        LetS y1_7 -> Right y1_7
                                        _ -> Left x_6)

_NoBindS :: Prism' Stmt Exp
_NoBindS = prism (\x1_8 -> NoBindS x1_8)
    (\x_9 -> case x_9 of
         NoBindS y1_10 -> Right y1_10
         _ -> Left x_9)

_ParS :: Prism' Stmt ([ [ Stmt ] ])
_ParS = prism (\x1_11 -> ParS x1_11) (\x_12 -> case x_12 of
                                          ParS y1_13 -> Right y1_13
                                          _ -> Left x_12)

_NumTyLit :: Prism' TyLit Integer
_NumTyLit = prism (\x1_0 -> NumTyLit x1_0)
    (\x_1 -> case x_1 of
         NumTyLit y1_2 -> Right y1_2
         _ -> Left x_1)

_StrTyLit :: Prism' TyLit String
_StrTyLit = prism (\x1_3 -> StrTyLit x1_3)
    (\x_4 -> case x_4 of
         StrTyLit y1_5 -> Right y1_5
         _ -> Left x_4)

_TypeFamilyHead :: Iso' TypeFamilyHead ( Name
                                       , [ TyVarBndr ]
                                       , FamilyResultSig
                                       , Maybe InjectivityAnn
                                       )
_TypeFamilyHead = iso
    (\(TypeFamilyHead x1_0 x2_1 x3_2 x4_3) -> ( x1_0, x2_1, x3_2, x4_3 ))
    (\( x1_4, x2_5, x3_6, x4_7 ) -> TypeFamilyHead x1_4 x2_5 x3_6 x4_7)

_ForallT :: Prism' Type ( [ TyVarBndr ], Cxt, Type )
_ForallT = prism (\( x1_0, x2_1, x3_2 ) -> ForallT x1_0 x2_1 x3_2)
    (\x_3 -> case x_3 of
         ForallT y1_4 y2_5 y3_6 -> Right ( y1_4, y2_5, y3_6 )
         _ -> Left x_3)

_AppT :: Prism' Type ( Type, Type )
_AppT = prism (\( x1_7, x2_8 ) -> AppT x1_7 x2_8)
    (\x_9 -> case x_9 of
         AppT y1_10 y2_11 -> Right ( y1_10, y2_11 )
         _ -> Left x_9)

_SigT :: Prism' Type ( Type, Kind )
_SigT = prism (\( x1_12, x2_13 ) -> SigT x1_12 x2_13)
    (\x_14 -> case x_14 of
         SigT y1_15 y2_16 -> Right ( y1_15, y2_16 )
         _ -> Left x_14)

_VarT :: Prism' Type Name
_VarT = prism (\x1_17 -> VarT x1_17) (\x_18 -> case x_18 of
                                          VarT y1_19 -> Right y1_19
                                          _ -> Left x_18)

_ConT :: Prism' Type Name
_ConT = prism (\x1_20 -> ConT x1_20) (\x_21 -> case x_21 of
                                          ConT y1_22 -> Right y1_22
                                          _ -> Left x_21)

_PromotedT :: Prism' Type Name
_PromotedT = prism (\x1_23 -> PromotedT x1_23)
    (\x_24 -> case x_24 of
         PromotedT y1_25 -> Right y1_25
         _ -> Left x_24)

_InfixT :: Prism' Type ( Type, Name, Type )
_InfixT = prism (\( x1_26, x2_27, x3_28 ) -> InfixT x1_26 x2_27 x3_28)
    (\x_29 -> case x_29 of
         InfixT y1_30 y2_31 y3_32 -> Right ( y1_30, y2_31, y3_32 )
         _ -> Left x_29)

_UInfixT :: Prism' Type ( Type, Name, Type )
_UInfixT = prism (\( x1_33, x2_34, x3_35 ) -> UInfixT x1_33 x2_34 x3_35)
    (\x_36 -> case x_36 of
         UInfixT y1_37 y2_38 y3_39 -> Right ( y1_37, y2_38, y3_39 )
         _ -> Left x_36)

_ParensT :: Prism' Type Type
_ParensT = prism (\x1_40 -> ParensT x1_40)
    (\x_41 -> case x_41 of
         ParensT y1_42 -> Right y1_42
         _ -> Left x_41)

_TupleT :: Prism' Type Int
_TupleT = prism (\x1_43 -> TupleT x1_43)
    (\x_44 -> case x_44 of
         TupleT y1_45 -> Right y1_45
         _ -> Left x_44)

_UnboxedTupleT :: Prism' Type Int
_UnboxedTupleT = prism (\x1_46 -> UnboxedTupleT x1_46)
    (\x_47 -> case x_47 of
         UnboxedTupleT y1_48 -> Right y1_48
         _ -> Left x_47)

_UnboxedSumT :: Prism' Type SumArity
_UnboxedSumT = prism (\x1_49 -> UnboxedSumT x1_49)
    (\x_50 -> case x_50 of
         UnboxedSumT y1_51 -> Right y1_51
         _ -> Left x_50)

_ArrowT :: Prism' Type ()
_ArrowT = prism (\() -> ArrowT) (\x_52 -> case x_52 of
                                     ArrowT -> Right ()
                                     _ -> Left x_52)

_EqualityT :: Prism' Type ()
_EqualityT = prism (\() -> EqualityT) (\x_53 -> case x_53 of
                                           EqualityT -> Right ()
                                           _ -> Left x_53)

_ListT :: Prism' Type ()
_ListT = prism (\() -> ListT) (\x_54 -> case x_54 of
                                   ListT -> Right ()
                                   _ -> Left x_54)

_PromotedTupleT :: Prism' Type Int
_PromotedTupleT = prism (\x1_55 -> PromotedTupleT x1_55)
    (\x_56 -> case x_56 of
         PromotedTupleT y1_57 -> Right y1_57
         _ -> Left x_56)

_PromotedNilT :: Prism' Type ()
_PromotedNilT = prism (\() -> PromotedNilT)
    (\x_58 -> case x_58 of
         PromotedNilT -> Right ()
         _ -> Left x_58)

_PromotedConsT :: Prism' Type ()
_PromotedConsT = prism (\() -> PromotedConsT)
    (\x_59 -> case x_59 of
         PromotedConsT -> Right ()
         _ -> Left x_59)

_StarT :: Prism' Type ()
_StarT = prism (\() -> StarT) (\x_60 -> case x_60 of
                                   StarT -> Right ()
                                   _ -> Left x_60)

_ConstraintT :: Prism' Type ()
_ConstraintT = prism (\() -> ConstraintT)
    (\x_61 -> case x_61 of
         ConstraintT -> Right ()
         _ -> Left x_61)

_LitT :: Prism' Type TyLit
_LitT = prism (\x1_62 -> LitT x1_62) (\x_63 -> case x_63 of
                                          LitT y1_64 -> Right y1_64
                                          _ -> Left x_63)

_WildCardT :: Prism' Type ()
_WildCardT = prism (\() -> WildCardT) (\x_65 -> case x_65 of
                                           WildCardT -> Right ()
                                           _ -> Left x_65)

_TySynEqn :: Iso' TySynEqn ( [ Type ], Type )
_TySynEqn = iso (\(TySynEqn x1_0 x2_1) -> ( x1_0, x2_1 ))
    (\( x1_2, x2_3 ) -> TySynEqn x1_2 x2_3)

_PlainTV :: Prism' TyVarBndr Name
_PlainTV = prism (\x1_0 -> PlainTV x1_0)
    (\x_1 -> case x_1 of
         PlainTV y1_2 -> Right y1_2
         _ -> Left x_1)

_KindedTV :: Prism' TyVarBndr ( Name, Kind )
_KindedTV = prism (\( x1_3, x2_4 ) -> KindedTV x1_3 x2_4)
    (\x_5 -> case x_5 of
         KindedTV y1_6 y2_7 -> Right ( y1_6, y2_7 )
         _ -> Left x_5)
