(set-logic HORN)
(declare-datatypes ((Tok_0 0)) (((C_0 ) (D_0 ) (X_0 ) (Y_0 ) (Plus_0 ) (Mul_0 ))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Tok_0) (tail_0 list_0)))))
(declare-datatypes ((E_0 0)) (((x_1 (proj_0 E_0) (proj_1 E_0)) (x_2 (proj_2 E_0) (proj_3 E_0)) (EX_0 ) (EY_0 ))))
(declare-fun diseqE_0 (E_0 E_0) Bool)
(declare-fun assoc_0 (E_0 E_0) Bool)
(declare-fun x_6 (list_0 list_0 list_0) Bool)
(declare-fun linTerm_0 (list_0 E_0) Bool)
(declare-fun lin_0 (list_0 E_0) Bool)
(assert (forall ((x_95 E_0) (x_96 E_0) (x_97 E_0) (x_98 E_0))
	(diseqE_0 (x_1 x_95 x_96) (x_2 x_97 x_98))))
(assert (forall ((x_100 E_0) (x_99 E_0))
	(diseqE_0 (x_1 x_99 x_100) EX_0)))
(assert (forall ((x_101 E_0) (x_102 E_0))
	(diseqE_0 (x_1 x_101 x_102) EY_0)))
(assert (forall ((x_103 E_0) (x_104 E_0) (x_105 E_0) (x_106 E_0))
	(diseqE_0 (x_2 x_103 x_104) (x_1 x_105 x_106))))
(assert (forall ((x_107 E_0) (x_108 E_0))
	(diseqE_0 EX_0 (x_1 x_107 x_108))))
(assert (forall ((x_109 E_0) (x_110 E_0))
	(diseqE_0 EY_0 (x_1 x_109 x_110))))
(assert (forall ((x_111 E_0) (x_112 E_0))
	(diseqE_0 (x_2 x_111 x_112) EX_0)))
(assert (forall ((x_113 E_0) (x_114 E_0))
	(diseqE_0 (x_2 x_113 x_114) EY_0)))
(assert (forall ((x_115 E_0) (x_116 E_0))
	(diseqE_0 EX_0 (x_2 x_115 x_116))))
(assert (forall ((x_117 E_0) (x_118 E_0))
	(diseqE_0 EY_0 (x_2 x_117 x_118))))
(assert (diseqE_0 EX_0 EY_0))
(assert (diseqE_0 EY_0 EX_0))
(assert (forall ((x_119 E_0) (x_120 E_0) (x_121 E_0) (x_122 E_0))
	(=> (diseqE_0 x_119 x_121) (diseqE_0 (x_1 x_119 x_120) (x_1 x_121 x_122)))))
(assert (forall ((x_119 E_0) (x_120 E_0) (x_121 E_0) (x_122 E_0))
	(=> (diseqE_0 x_120 x_122) (diseqE_0 (x_1 x_119 x_120) (x_1 x_121 x_122)))))
(assert (forall ((x_123 E_0) (x_124 E_0) (x_125 E_0) (x_126 E_0))
	(=> (diseqE_0 x_123 x_125) (diseqE_0 (x_2 x_123 x_124) (x_2 x_125 x_126)))))
(assert (forall ((x_123 E_0) (x_124 E_0) (x_125 E_0) (x_126 E_0))
	(=> (diseqE_0 x_124 x_126) (diseqE_0 (x_2 x_123 x_124) (x_2 x_125 x_126)))))
(assert (forall ((x_18 E_0) (x_19 E_0) (a_1 E_0) (b_1 E_0))
	(=> (and (assoc_0 x_18 a_1) (assoc_0 x_19 b_1)) (assoc_0 (x_2 x_18 x_19) (x_2 a_1 b_1)))))
(assert (forall ((x_20 E_0) (a_0 E_0) (b_0 E_0) (c_1 E_0))
	(=> (assoc_0 x_20 (x_1 a_0 (x_1 b_0 c_1))) (assoc_0 x_20 (x_1 (x_1 a_0 b_0) c_1)))))
(assert (forall ((x_23 E_0) (x_24 E_0) (x_5 E_0) (c_1 E_0))
	(=> (and (assoc_0 x_23 EX_0) (assoc_0 x_24 c_1)) (assoc_0 (x_1 x_23 x_24) (x_1 EX_0 c_1)))))
(assert (forall ((x_26 E_0) (x_27 E_0) (x_5 E_0) (c_1 E_0))
	(=> (and (assoc_0 x_26 EY_0) (assoc_0 x_27 c_1)) (assoc_0 (x_1 x_26 x_27) (x_1 EY_0 c_1)))))
(assert (forall ((x_29 E_0) (x_30 E_0) (x_5 E_0) (x_13 E_0) (x_14 E_0) (c_1 E_0))
	(=> (and (assoc_0 x_29 (x_2 x_13 x_14)) (assoc_0 x_30 c_1)) (assoc_0 (x_1 x_29 x_30) (x_1 (x_2 x_13 x_14) c_1)))))
(assert (forall ((x_4 E_0))
	(assoc_0 EX_0 EX_0)))
(assert (forall ((x_4 E_0))
	(assoc_0 EY_0 EY_0)))
(assert (forall ((x_34 list_0) (z_0 Tok_0) (xs_0 list_0) (y_2 list_0))
	(=> (x_6 x_34 xs_0 y_2) (x_6 (cons_0 z_0 x_34) (cons_0 z_0 xs_0) y_2))))
(assert (forall ((x_35 list_0))
	(x_6 x_35 nil_0 x_35)))
(assert (forall ((x_36 list_0) (x_37 list_0) (x_38 list_0) (a_2 E_0) (b_2 E_0))
	(=> (and (lin_0 x_37 (x_1 a_2 b_2)) (x_6 x_38 x_37 (cons_0 D_0 nil_0)) (x_6 x_36 (cons_0 C_0 nil_0) x_38)) (linTerm_0 x_36 (x_2 a_2 b_2)))))
(assert (forall ((x_40 list_0) (x_11 E_0))
	(=> (lin_0 x_40 EX_0) (linTerm_0 x_40 EX_0))))
(assert (forall ((x_42 list_0) (x_11 E_0))
	(=> (lin_0 x_42 EY_0) (linTerm_0 x_42 EY_0))))
(assert (forall ((x_44 list_0) (x_11 E_0) (x_15 E_0) (x_16 E_0))
	(=> (lin_0 x_44 (x_1 x_15 x_16)) (linTerm_0 x_44 (x_1 x_15 x_16)))))
(assert (lin_0 (cons_0 Y_0 nil_0) EY_0))
(assert (lin_0 (cons_0 X_0 nil_0) EX_0))
(assert (forall ((x_48 list_0) (x_49 list_0) (x_50 list_0) (x_51 list_0) (a_4 E_0) (b_4 E_0))
	(=> (and (lin_0 x_49 a_4) (lin_0 x_50 b_4) (x_6 x_51 (cons_0 Mul_0 nil_0) x_50) (x_6 x_48 x_49 x_51)) (lin_0 x_48 (x_2 a_4 b_4)))))
(assert (forall ((x_53 list_0) (x_54 list_0) (x_55 list_0) (x_56 list_0) (a_3 E_0) (b_3 E_0))
	(=> (and (linTerm_0 x_54 a_3) (linTerm_0 x_55 b_3) (x_6 x_56 (cons_0 Plus_0 nil_0) x_55) (x_6 x_53 x_54 x_56)) (lin_0 x_53 (x_1 a_3 b_3)))))
(assert (forall ((x_60 list_0) (x_58 E_0) (x_59 E_0) (u_0 E_0) (v_0 E_0))
	(=> (and (diseqE_0 x_58 x_59) (lin_0 x_60 u_0) (lin_0 x_60 v_0) (assoc_0 x_58 u_0) (assoc_0 x_59 v_0)) false)))
(check-sat)
(get-model)
