(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Integer_0 0)) (((P_1 (projP_0 Nat_0)) (N_0 (projN_0 Nat_0)))))
(declare-fun diseqInteger_0 (Integer_0 Integer_0) Bool)
(declare-fun zero_1 (Integer_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun x_1 (Integer_0 Nat_0 Nat_0) Bool)
(declare-fun plus_1 (Integer_0 Integer_0 Integer_0) Bool)
(assert (forall ((x_54 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_54))))
(assert (forall ((x_55 Nat_0))
	(diseqNat_0 (succ_0 x_55) zero_0)))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0))
	(=> (diseqNat_0 x_56 x_57) (diseqNat_0 (succ_0 x_56) (succ_0 x_57)))))
(assert (forall ((x_64 Nat_0) (x_65 Nat_0))
	(diseqInteger_0 (P_1 x_64) (N_0 x_65))))
(assert (forall ((x_66 Nat_0) (x_67 Nat_0))
	(diseqInteger_0 (N_0 x_66) (P_1 x_67))))
(assert (forall ((x_68 Nat_0) (x_69 Nat_0))
	(=> (diseqNat_0 x_68 x_69) (diseqInteger_0 (P_1 x_68) (P_1 x_69)))))
(assert (forall ((x_70 Nat_0) (x_71 Nat_0))
	(=> (diseqNat_0 x_70 x_71) (diseqInteger_0 (N_0 x_70) (N_0 x_71)))))
(assert (zero_1 (P_1 zero_0)))
(assert (forall ((x_14 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (plus_0 x_14 z_0 y_0) (plus_0 (succ_0 x_14) (succ_0 z_0) y_0))))
(assert (forall ((x_15 Nat_0))
	(plus_0 x_15 zero_0 x_15)))
(assert (forall ((x_3 Nat_0) (z_1 Nat_0) (fail_0 Integer_0))
	(=> (x_1 fail_0 x_3 z_1) (x_1 fail_0 (succ_0 x_3) (succ_0 z_1)))))
(assert (forall ((x_4 Nat_0))
	(x_1 (N_0 (succ_0 x_4)) zero_0 (succ_0 x_4))))
(assert (forall ((x_5 Nat_0))
	(x_1 (P_1 (succ_0 x_5)) (succ_0 x_5) zero_0)))
(assert (x_1 (P_1 zero_0) zero_0 zero_0))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0) (n_3 Nat_0) (m_1 Nat_0))
	(=> (and (plus_0 x_29 (succ_0 zero_0) m_1) (plus_0 x_30 x_29 n_3)) (plus_1 (N_0 x_30) (N_0 m_1) (N_0 n_3)))))
(assert (forall ((x_31 Integer_0) (x_32 Nat_0) (n_2 Nat_0) (m_1 Nat_0))
	(=> (and (plus_0 x_32 (succ_0 zero_0) m_1) (x_1 x_31 n_2 x_32)) (plus_1 x_31 (N_0 m_1) (P_1 n_2)))))
(assert (forall ((x_34 Integer_0) (x_35 Nat_0) (o_0 Nat_0) (m_0 Nat_0))
	(=> (and (plus_0 x_35 (succ_0 zero_0) o_0) (x_1 x_34 m_0 x_35)) (plus_1 x_34 (P_1 m_0) (N_0 o_0)))))
(assert (forall ((x_38 Nat_0) (n_1 Nat_0) (m_0 Nat_0))
	(=> (plus_0 x_38 m_0 n_1) (plus_1 (P_1 x_38) (P_1 m_0) (P_1 n_1)))))
(assert (forall ((x_39 Integer_0) (x_40 Integer_0) (x_7 Integer_0))
	(=> (and (diseqInteger_0 x_7 x_40) (zero_1 x_39) (plus_1 x_40 x_7 x_39)) false)))
(assert (forall ((x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (x_8 Nat_0) (y_3 Nat_0) (z_2 Nat_0))
	(=> (and (diseqNat_0 x_42 x_44) (plus_0 x_41 y_3 z_2) (plus_0 x_42 x_8 x_41) (plus_0 x_43 x_8 y_3) (plus_0 x_44 x_43 z_2)) false)))
(assert (forall ((x_45 Nat_0) (x_46 Nat_0) (x_9 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 x_45 x_46) (plus_0 x_45 x_9 y_4) (plus_0 x_46 y_4 x_9)) false)))
(assert (forall ((x_47 Nat_0) (x_10 Nat_0))
	(=> (and (diseqNat_0 x_47 x_10) (plus_0 x_47 x_10 zero_0)) false)))
(assert (forall ((x_48 Nat_0) (x_11 Nat_0))
	(=> (and (diseqNat_0 x_48 x_11) (plus_0 x_48 zero_0 x_11)) false)))
(check-sat)
(get-model)