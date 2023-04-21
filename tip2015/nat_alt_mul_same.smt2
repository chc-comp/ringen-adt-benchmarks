(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun altmul_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_66 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_66))))
(assert (forall ((x_67 Nat_0))
	(diseqNat_0 (succ_0 x_67) zero_0)))
(assert (forall ((x_68 Nat_0) (x_69 Nat_0))
	(=> (diseqNat_0 x_68 x_69) (diseqNat_0 (succ_0 x_68) (succ_0 x_69)))))
(assert (forall ((x_18 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (plus_0 x_18 z_0 y_0) (plus_0 (succ_0 x_18) (succ_0 z_0) y_0))))
(assert (forall ((x_19 Nat_0))
	(plus_0 x_19 zero_0 x_19)))
(assert (forall ((x_20 Nat_0) (x_21 Nat_0) (z_1 Nat_0) (y_1 Nat_0))
	(=> (and (times_0 x_21 z_1 y_1) (plus_0 x_20 y_1 x_21)) (times_0 x_20 (succ_0 z_1) y_1))))
(assert (forall ((y_1 Nat_0))
	(times_0 zero_0 zero_0 y_1)))
(assert (forall ((x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_3 Nat_0) (z_2 Nat_0))
	(=> (and (altmul_0 x_25 z_2 x_3) (plus_0 x_26 (succ_0 zero_0) x_25) (plus_0 x_27 x_26 z_2) (plus_0 x_24 x_27 x_3)) (altmul_0 x_24 (succ_0 z_2) (succ_0 x_3)))))
(assert (forall ((z_2 Nat_0))
	(altmul_0 zero_0 (succ_0 z_2) zero_0)))
(assert (forall ((y_2 Nat_0))
	(altmul_0 zero_0 zero_0 y_2)))
(assert (forall ((x_31 Nat_0) (x_32 Nat_0) (x_4 Nat_0) (y_3 Nat_0))
	(=> (and (diseqNat_0 x_31 x_32) (altmul_0 x_31 x_4 y_3) (times_0 x_32 x_4 y_3)) false)))
(assert (forall ((x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (x_5 Nat_0) (y_4 Nat_0) (z_3 Nat_0))
	(=> (and (diseqNat_0 x_34 x_36) (times_0 x_33 y_4 z_3) (times_0 x_34 x_5 x_33) (times_0 x_35 x_5 y_4) (times_0 x_36 x_35 z_3)) false)))
(assert (forall ((x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_6 Nat_0) (y_5 Nat_0) (z_4 Nat_0))
	(=> (and (diseqNat_0 x_38 x_40) (plus_0 x_37 y_5 z_4) (plus_0 x_38 x_6 x_37) (plus_0 x_39 x_6 y_5) (plus_0 x_40 x_39 z_4)) false)))
(assert (forall ((x_41 Nat_0) (x_42 Nat_0) (x_7 Nat_0) (y_6 Nat_0))
	(=> (and (diseqNat_0 x_41 x_42) (times_0 x_41 x_7 y_6) (times_0 x_42 y_6 x_7)) false)))
(assert (forall ((x_43 Nat_0) (x_44 Nat_0) (x_8 Nat_0) (y_7 Nat_0))
	(=> (and (diseqNat_0 x_43 x_44) (plus_0 x_43 x_8 y_7) (plus_0 x_44 y_7 x_8)) false)))
(assert (forall ((x_45 Nat_0) (x_46 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_9 Nat_0) (y_8 Nat_0) (z_5 Nat_0))
	(=> (and (diseqNat_0 x_46 x_49) (plus_0 x_45 y_8 z_5) (times_0 x_46 x_9 x_45) (times_0 x_47 x_9 y_8) (times_0 x_48 x_9 z_5) (plus_0 x_49 x_47 x_48)) false)))
(assert (forall ((x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_10 Nat_0) (y_9 Nat_0) (z_6 Nat_0))
	(=> (and (diseqNat_0 x_51 x_54) (plus_0 x_50 x_10 y_9) (times_0 x_51 x_50 z_6) (times_0 x_52 x_10 z_6) (times_0 x_53 y_9 z_6) (plus_0 x_54 x_52 x_53)) false)))
(assert (forall ((x_55 Nat_0) (x_11 Nat_0))
	(=> (and (diseqNat_0 x_55 x_11) (times_0 x_55 x_11 (succ_0 zero_0))) false)))
(assert (forall ((x_56 Nat_0) (x_12 Nat_0))
	(=> (and (diseqNat_0 x_56 x_12) (times_0 x_56 (succ_0 zero_0) x_12)) false)))
(assert (forall ((x_57 Nat_0) (x_13 Nat_0))
	(=> (and (diseqNat_0 x_57 x_13) (plus_0 x_57 x_13 zero_0)) false)))
(assert (forall ((x_58 Nat_0) (x_14 Nat_0))
	(=> (and (diseqNat_0 x_58 x_14) (plus_0 x_58 zero_0 x_14)) false)))
(assert (forall ((x_59 Nat_0) (x_15 Nat_0))
	(=> (and (diseqNat_0 x_59 zero_0) (times_0 x_59 x_15 zero_0)) false)))
(assert (forall ((x_60 Nat_0) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_60 zero_0) (times_0 x_60 zero_0 x_16)) false)))
(check-sat)
(get-model)