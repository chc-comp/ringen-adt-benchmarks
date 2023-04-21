(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_11 ) (Z_12 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun go_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun modstructural_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun x_11 (list_0 list_0 list_0) Bool)
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_98 Nat_1))
	(diseqNat_1 Z_11 (Z_12 x_98))))
(assert (forall ((x_99 Nat_1))
	(diseqNat_1 (Z_12 x_99) Z_11)))
(assert (forall ((x_100 Nat_1) (x_101 Nat_1))
	(=> (diseqNat_1 x_100 x_101) (diseqNat_1 (Z_12 x_100) (Z_12 x_101)))))
(assert (forall ((x_78 Nat_1) (x_79 list_0))
	(diseqlist_0 nil_0 (cons_0 x_78 x_79))))
(assert (forall ((x_80 Nat_1) (x_81 list_0))
	(diseqlist_0 (cons_0 x_80 x_81) nil_0)))
(assert (forall ((x_82 Nat_1) (x_83 list_0) (x_84 Nat_1) (x_85 list_0))
	(=> (diseqNat_1 x_82 x_84) (diseqlist_0 (cons_0 x_82 x_83) (cons_0 x_84 x_85)))))
(assert (forall ((x_82 Nat_1) (x_83 list_0) (x_84 Nat_1) (x_85 list_0))
	(=> (diseqlist_0 x_83 x_85) (diseqlist_0 (cons_0 x_82 x_83) (cons_0 x_84 x_85)))))
(assert (forall ((x_90 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_90))))
(assert (forall ((x_91 Nat_0))
	(diseqNat_0 (succ_0 x_91) zero_0)))
(assert (forall ((x_92 Nat_0) (x_93 Nat_0))
	(=> (diseqNat_0 x_92 x_93) (diseqNat_0 (succ_0 x_92) (succ_0 x_93)))))
(assert (forall ((x_19 list_0) (z_1 Nat_1) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_19 z_0 xs_0) (take_0 (cons_0 z_1 x_19) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_23 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_23 z_2 y_1) (plus_0 (succ_0 x_23) (succ_0 z_2) y_1))))
(assert (forall ((x_24 Nat_0))
	(plus_0 x_24 zero_0 x_24)))
(assert (forall ((x_25 Nat_0) (y_3 Nat_0) (z_3 Nat_0))
	(=> (minus_0 x_25 z_3 y_3) (minus_0 x_25 (succ_0 z_3) (succ_0 y_3)))))
(assert (forall ((z_3 Nat_0))
	(minus_0 zero_0 (succ_0 z_3) zero_0)))
(assert (forall ((y_2 Nat_0))
	(minus_0 zero_0 zero_0 y_2)))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0) (y_4 Nat_1) (l_0 list_0))
	(=> (and (length_0 x_30 l_0) (plus_0 x_29 (succ_0 zero_0) x_30)) (length_0 x_29 (cons_0 y_4 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_33 Nat_0) (x_8 Nat_0) (x_7 Nat_0) (x_5 Nat_0))
	(=> (go_0 x_33 x_7 x_8 (succ_0 x_5)) (go_0 x_33 (succ_0 x_7) (succ_0 x_8) (succ_0 x_5)))))
(assert (forall ((x_35 Nat_0) (x_7 Nat_0) (x_5 Nat_0))
	(=> (go_0 x_35 x_7 x_5 (succ_0 x_5)) (go_0 x_35 (succ_0 x_7) zero_0 (succ_0 x_5)))))
(assert (forall ((x_37 Nat_0) (x_6 Nat_0) (x_5 Nat_0))
	(=> (minus_0 x_37 (succ_0 x_5) (succ_0 x_6)) (go_0 x_37 zero_0 (succ_0 x_6) (succ_0 x_5)))))
(assert (forall ((x_5 Nat_0))
	(go_0 zero_0 zero_0 zero_0 (succ_0 x_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0))
	(go_0 zero_0 x_4 y_5 zero_0)))
(assert (forall ((x_41 Nat_0) (x_9 Nat_0) (y_6 Nat_0))
	(=> (go_0 x_41 x_9 zero_0 y_6) (modstructural_0 x_41 x_9 y_6))))
(assert (forall ((x_43 list_0) (z_6 Nat_1) (xs_1 list_0) (z_5 Nat_0))
	(=> (drop_0 x_43 z_5 xs_1) (drop_0 x_43 (succ_0 z_5) (cons_0 z_6 xs_1)))))
(assert (forall ((z_5 Nat_0))
	(drop_0 nil_0 (succ_0 z_5) nil_0)))
(assert (forall ((x_46 list_0))
	(drop_0 x_46 zero_0 x_46)))
(assert (forall ((x_48 list_0) (z_7 Nat_1) (xs_2 list_0) (y_8 list_0))
	(=> (x_11 x_48 xs_2 y_8) (x_11 (cons_0 z_7 x_48) (cons_0 z_7 xs_2) y_8))))
(assert (forall ((x_49 list_0))
	(x_11 x_49 nil_0 x_49)))
(assert (forall ((x_50 list_0) (x_51 list_0) (z_9 Nat_1) (xs_3 list_0) (z_8 Nat_0))
	(=> (and (x_11 x_51 xs_3 (cons_0 z_9 nil_0)) (rotate_0 x_50 z_8 x_51)) (rotate_0 x_50 (succ_0 z_8) (cons_0 z_9 xs_3)))))
(assert (forall ((z_8 Nat_0))
	(rotate_0 nil_0 (succ_0 z_8) nil_0)))
(assert (forall ((x_54 list_0))
	(rotate_0 x_54 zero_0 x_54)))
(assert (forall ((x_55 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_14 Nat_0) (y_10 Nat_0) (z_10 Nat_0))
	(=> (and (diseqNat_0 x_56 x_58) (plus_0 x_55 y_10 z_10) (plus_0 x_56 x_14 x_55) (plus_0 x_57 x_14 y_10) (plus_0 x_58 x_57 z_10)) false)))
(assert (forall ((x_59 Nat_0) (x_60 Nat_0) (x_15 Nat_0) (y_11 Nat_0))
	(=> (and (diseqNat_0 x_59 x_60) (plus_0 x_59 x_15 y_11) (plus_0 x_60 y_11 x_15)) false)))
(assert (forall ((x_61 Nat_0) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_61 x_16) (plus_0 x_61 x_16 zero_0)) false)))
(assert (forall ((x_62 Nat_0) (x_17 Nat_0))
	(=> (and (diseqNat_0 x_62 x_17) (plus_0 x_62 zero_0 x_17)) false)))
(assert (forall ((x_63 list_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 list_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 list_0) (x_70 list_0) (n_0 Nat_0) (xs_4 list_0))
	(=> (and (diseqlist_0 x_63 x_70) (rotate_0 x_63 n_0 xs_4) (length_0 x_64 xs_4) (modstructural_0 x_65 n_0 x_64) (drop_0 x_66 x_65 xs_4) (length_0 x_67 xs_4) (modstructural_0 x_68 n_0 x_67) (take_0 x_69 x_68 xs_4) (x_11 x_70 x_66 x_69)) false)))
(check-sat)
(get-model)