(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_12 ) (Z_13 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun x_7 (list_0 list_0 list_0) Bool)
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_97 Nat_1))
	(diseqNat_1 Z_12 (Z_13 x_97))))
(assert (forall ((x_98 Nat_1))
	(diseqNat_1 (Z_13 x_98) Z_12)))
(assert (forall ((x_100 Nat_1) (x_99 Nat_1))
	(=> (diseqNat_1 x_99 x_100) (diseqNat_1 (Z_13 x_99) (Z_13 x_100)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_77 Nat_1) (x_78 list_0))
	(diseqlist_0 nil_0 (cons_0 x_77 x_78))))
(assert (forall ((x_79 Nat_1) (x_80 list_0))
	(diseqlist_0 (cons_0 x_79 x_80) nil_0)))
(assert (forall ((x_81 Nat_1) (x_82 list_0) (x_83 Nat_1) (x_84 list_0))
	(=> (diseqNat_1 x_81 x_83) (diseqlist_0 (cons_0 x_81 x_82) (cons_0 x_83 x_84)))))
(assert (forall ((x_81 Nat_1) (x_82 list_0) (x_83 Nat_1) (x_84 list_0))
	(=> (diseqlist_0 x_82 x_84) (diseqlist_0 (cons_0 x_81 x_82) (cons_0 x_83 x_84)))))
(assert (forall ((x_89 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_89))))
(assert (forall ((x_90 Nat_0))
	(diseqNat_0 (succ_0 x_90) zero_0)))
(assert (forall ((x_91 Nat_0) (x_92 Nat_0))
	(=> (diseqNat_0 x_91 x_92) (diseqNat_0 (succ_0 x_91) (succ_0 x_92)))))
(assert (forall ((x_15 list_0) (z_1 Nat_1) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_15 z_0 xs_0) (take_0 (cons_0 z_1 x_15) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_19 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_19 z_2 y_1) (plus_0 (succ_0 x_19) (succ_0 z_2) y_1))))
(assert (forall ((x_20 Nat_0))
	(plus_0 x_20 zero_0 x_20)))
(assert (forall ((x_21 Nat_0) (y_3 Nat_0) (z_3 Nat_0))
	(=> (minus_0 x_21 z_3 y_3) (minus_0 x_21 (succ_0 z_3) (succ_0 y_3)))))
(assert (forall ((z_3 Nat_0))
	(minus_0 zero_0 (succ_0 z_3) zero_0)))
(assert (forall ((y_2 Nat_0))
	(minus_0 zero_0 zero_0 y_2)))
(assert (forall ((x_25 Bool_0) (n_0 Nat_0) (z_4 Nat_0))
	(=> (lt_0 x_25 n_0 z_4) (lt_0 x_25 (succ_0 n_0) (succ_0 z_4)))))
(assert (forall ((z_4 Nat_0))
	(lt_0 true_0 zero_0 (succ_0 z_4))))
(assert (forall ((x_3 Nat_0))
	(lt_0 false_0 x_3 zero_0)))
(assert (forall ((x_30 Nat_0) (z_5 Nat_0))
	(=> (lt_0 true_0 x_30 (succ_0 z_5)) (mod_0 x_30 x_30 (succ_0 z_5)))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_31 Bool_0) (z_5 Nat_0) (x_4 Nat_0))
	(=> (and (diseqBool_0 x_31 true_0) (minus_0 x_33 x_4 (succ_0 z_5)) (mod_0 x_32 x_33 (succ_0 z_5)) (lt_0 x_31 x_4 (succ_0 z_5))) (mod_0 x_32 x_4 (succ_0 z_5)))))
(assert (forall ((x_4 Nat_0))
	(mod_0 zero_0 x_4 zero_0)))
(assert (forall ((x_36 Nat_0) (x_37 Nat_0) (y_6 Nat_1) (l_0 list_0))
	(=> (and (length_0 x_37 l_0) (plus_0 x_36 (succ_0 zero_0) x_37)) (length_0 x_36 (cons_0 y_6 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_40 list_0) (z_7 Nat_1) (xs_1 list_0) (z_6 Nat_0))
	(=> (drop_0 x_40 z_6 xs_1) (drop_0 x_40 (succ_0 z_6) (cons_0 z_7 xs_1)))))
(assert (forall ((z_6 Nat_0))
	(drop_0 nil_0 (succ_0 z_6) nil_0)))
(assert (forall ((x_43 list_0))
	(drop_0 x_43 zero_0 x_43)))
(assert (forall ((x_45 list_0) (z_8 Nat_1) (xs_2 list_0) (y_8 list_0))
	(=> (x_7 x_45 xs_2 y_8) (x_7 (cons_0 z_8 x_45) (cons_0 z_8 xs_2) y_8))))
(assert (forall ((x_46 list_0))
	(x_7 x_46 nil_0 x_46)))
(assert (forall ((x_47 list_0) (x_48 list_0) (z_10 Nat_1) (xs_3 list_0) (z_9 Nat_0))
	(=> (and (x_7 x_48 xs_3 (cons_0 z_10 nil_0)) (rotate_0 x_47 z_9 x_48)) (rotate_0 x_47 (succ_0 z_9) (cons_0 z_10 xs_3)))))
(assert (forall ((z_9 Nat_0))
	(rotate_0 nil_0 (succ_0 z_9) nil_0)))
(assert (forall ((x_51 list_0))
	(rotate_0 x_51 zero_0 x_51)))
(assert (forall ((x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_10 Nat_0) (y_10 Nat_0) (z_11 Nat_0))
	(=> (and (diseqNat_0 x_53 x_55) (plus_0 x_52 y_10 z_11) (plus_0 x_53 x_10 x_52) (plus_0 x_54 x_10 y_10) (plus_0 x_55 x_54 z_11)) false)))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0) (x_11 Nat_0) (y_11 Nat_0))
	(=> (and (diseqNat_0 x_56 x_57) (plus_0 x_56 x_11 y_11) (plus_0 x_57 y_11 x_11)) false)))
(assert (forall ((x_58 Nat_0) (x_12 Nat_0))
	(=> (and (diseqNat_0 x_58 x_12) (plus_0 x_58 x_12 zero_0)) false)))
(assert (forall ((x_59 Nat_0) (x_13 Nat_0))
	(=> (and (diseqNat_0 x_59 x_13) (plus_0 x_59 zero_0 x_13)) false)))
(assert (forall ((x_60 list_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 list_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 list_0) (x_67 list_0) (n_1 Nat_0) (xs_4 list_0))
	(=> (and (diseqlist_0 x_60 x_67) (rotate_0 x_60 n_1 xs_4) (length_0 x_61 xs_4) (mod_0 x_62 n_1 x_61) (drop_0 x_63 x_62 xs_4) (length_0 x_64 xs_4) (mod_0 x_65 n_1 x_64) (take_0 x_66 x_65 xs_4) (x_7 x_67 x_63 x_66)) false)))
(check-sat)
(get-model)
