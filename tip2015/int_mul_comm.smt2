(set-logic HORN)
(declare-datatypes ((Sign_0 0)) (((Pos_0 ) (Neg_0 ))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Integer_0 0)) (((P_1 (projP_0 Nat_0)) (N_0 (projN_0 Nat_0)))))
(declare-fun diseqInteger_0 (Integer_0 Integer_0) Bool)
(declare-fun toInteger_0 (Integer_0 Sign_0 Nat_0) Bool)
(declare-fun sign_1 (Sign_0 Integer_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun opposite_0 (Sign_0 Sign_0) Bool)
(declare-fun timesSign_0 (Sign_0 Sign_0 Sign_0) Bool)
(declare-fun absVal_0 (Nat_0 Integer_0) Bool)
(declare-fun times_1 (Integer_0 Integer_0 Integer_0) Bool)
(assert (forall ((x_86 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_86))))
(assert (forall ((x_87 Nat_0))
	(diseqNat_0 (succ_0 x_87) zero_0)))
(assert (forall ((x_88 Nat_0) (x_89 Nat_0))
	(=> (diseqNat_0 x_88 x_89) (diseqNat_0 (succ_0 x_88) (succ_0 x_89)))))
(assert (forall ((x_96 Nat_0) (x_97 Nat_0))
	(diseqInteger_0 (P_1 x_96) (N_0 x_97))))
(assert (forall ((x_98 Nat_0) (x_99 Nat_0))
	(diseqInteger_0 (N_0 x_98) (P_1 x_99))))
(assert (forall ((x_100 Nat_0) (x_101 Nat_0))
	(=> (diseqNat_0 x_100 x_101) (diseqInteger_0 (P_1 x_100) (P_1 x_101)))))
(assert (forall ((x_102 Nat_0) (x_103 Nat_0))
	(=> (diseqNat_0 x_102 x_103) (diseqInteger_0 (N_0 x_102) (N_0 x_103)))))
(assert (forall ((z_0 Nat_0))
	(toInteger_0 (N_0 z_0) Neg_0 (succ_0 z_0))))
(assert (toInteger_0 (P_1 zero_0) Neg_0 zero_0))
(assert (forall ((y_0 Nat_0))
	(toInteger_0 (P_1 y_0) Pos_0 y_0)))
(assert (forall ((z_1 Nat_0))
	(sign_1 Neg_0 (N_0 z_1))))
(assert (forall ((y_1 Nat_0))
	(sign_1 Pos_0 (P_1 y_1))))
(assert (forall ((x_27 Nat_0) (z_2 Nat_0) (y_2 Nat_0))
	(=> (plus_0 x_27 z_2 y_2) (plus_0 (succ_0 x_27) (succ_0 z_2) y_2))))
(assert (forall ((x_28 Nat_0))
	(plus_0 x_28 zero_0 x_28)))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0) (z_3 Nat_0) (y_3 Nat_0))
	(=> (and (times_0 x_30 z_3 y_3) (plus_0 x_29 y_3 x_30)) (times_0 x_29 (succ_0 z_3) y_3))))
(assert (forall ((y_3 Nat_0))
	(times_0 zero_0 zero_0 y_3)))
(assert (opposite_0 Pos_0 Neg_0))
(assert (opposite_0 Neg_0 Pos_0))
(assert (forall ((x_35 Sign_0) (y_4 Sign_0))
	(=> (opposite_0 x_35 y_4) (timesSign_0 x_35 Neg_0 y_4))))
(assert (forall ((x_37 Sign_0))
	(timesSign_0 x_37 Pos_0 x_37)))
(assert (forall ((x_38 Nat_0) (m_0 Nat_0))
	(=> (plus_0 x_38 (succ_0 zero_0) m_0) (absVal_0 x_38 (N_0 m_0)))))
(assert (forall ((n_1 Nat_0))
	(absVal_0 n_1 (P_1 n_1))))
(assert (forall ((x_41 Integer_0) (x_42 Sign_0) (x_43 Sign_0) (x_44 Sign_0) (x_45 Nat_0) (x_46 Nat_0) (x_47 Nat_0) (x_7 Integer_0) (y_5 Integer_0))
	(=> (and (sign_1 x_42 x_7) (sign_1 x_43 y_5) (timesSign_0 x_44 x_42 x_43) (absVal_0 x_45 x_7) (absVal_0 x_46 y_5) (times_0 x_47 x_45 x_46) (toInteger_0 x_41 x_44 x_47)) (times_1 x_41 x_7 y_5))))
(assert (forall ((x_49 Integer_0) (x_50 Integer_0) (x_8 Integer_0) (y_6 Integer_0))
	(=> (and (diseqInteger_0 x_49 x_50) (times_1 x_49 x_8 y_6) (times_1 x_50 y_6 x_8)) false)))
(assert (forall ((x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_9 Nat_0) (y_7 Nat_0) (z_4 Nat_0))
	(=> (and (diseqNat_0 x_52 x_54) (times_0 x_51 y_7 z_4) (times_0 x_52 x_9 x_51) (times_0 x_53 x_9 y_7) (times_0 x_54 x_53 z_4)) false)))
(assert (forall ((x_55 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_10 Nat_0) (y_8 Nat_0) (z_5 Nat_0))
	(=> (and (diseqNat_0 x_56 x_58) (plus_0 x_55 y_8 z_5) (plus_0 x_56 x_10 x_55) (plus_0 x_57 x_10 y_8) (plus_0 x_58 x_57 z_5)) false)))
(assert (forall ((x_59 Nat_0) (x_60 Nat_0) (x_11 Nat_0) (y_9 Nat_0))
	(=> (and (diseqNat_0 x_59 x_60) (times_0 x_59 x_11 y_9) (times_0 x_60 y_9 x_11)) false)))
(assert (forall ((x_61 Nat_0) (x_62 Nat_0) (x_12 Nat_0) (y_10 Nat_0))
	(=> (and (diseqNat_0 x_61 x_62) (plus_0 x_61 x_12 y_10) (plus_0 x_62 y_10 x_12)) false)))
(assert (forall ((x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_13 Nat_0) (y_11 Nat_0) (z_6 Nat_0))
	(=> (and (diseqNat_0 x_64 x_67) (plus_0 x_63 y_11 z_6) (times_0 x_64 x_13 x_63) (times_0 x_65 x_13 y_11) (times_0 x_66 x_13 z_6) (plus_0 x_67 x_65 x_66)) false)))
(assert (forall ((x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_14 Nat_0) (y_12 Nat_0) (z_7 Nat_0))
	(=> (and (diseqNat_0 x_69 x_72) (plus_0 x_68 x_14 y_12) (times_0 x_69 x_68 z_7) (times_0 x_70 x_14 z_7) (times_0 x_71 y_12 z_7) (plus_0 x_72 x_70 x_71)) false)))
(assert (forall ((x_73 Nat_0) (x_15 Nat_0))
	(=> (and (diseqNat_0 x_73 x_15) (times_0 x_73 x_15 (succ_0 zero_0))) false)))
(assert (forall ((x_74 Nat_0) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_74 x_16) (times_0 x_74 (succ_0 zero_0) x_16)) false)))
(assert (forall ((x_75 Nat_0) (x_17 Nat_0))
	(=> (and (diseqNat_0 x_75 x_17) (plus_0 x_75 x_17 zero_0)) false)))
(assert (forall ((x_76 Nat_0) (x_18 Nat_0))
	(=> (and (diseqNat_0 x_76 x_18) (plus_0 x_76 zero_0 x_18)) false)))
(assert (forall ((x_77 Nat_0) (x_19 Nat_0))
	(=> (and (diseqNat_0 x_77 zero_0) (times_0 x_77 x_19 zero_0)) false)))
(assert (forall ((x_78 Nat_0) (x_20 Nat_0))
	(=> (and (diseqNat_0 x_78 zero_0) (times_0 x_78 zero_0 x_20)) false)))
(check-sat)
(get-model)
