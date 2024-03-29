(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_52 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_52))))
(assert (forall ((x_53 Nat_0))
	(diseqNat_0 (succ_0 x_53) zero_0)))
(assert (forall ((x_54 Nat_0) (x_55 Nat_0))
	(=> (diseqNat_0 x_54 x_55) (diseqNat_0 (succ_0 x_54) (succ_0 x_55)))))
(assert (forall ((x_12 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (plus_0 x_12 z_0 y_0) (plus_0 (succ_0 x_12) (succ_0 z_0) y_0))))
(assert (forall ((x_13 Nat_0))
	(plus_0 x_13 zero_0 x_13)))
(assert (forall ((x_14 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (leq_0 x_14 z_1 x_2) (leq_0 x_14 (succ_0 z_1) (succ_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(leq_0 false_0 (succ_0 z_1) zero_0)))
(assert (forall ((y_1 Nat_0))
	(leq_0 true_0 zero_0 y_1)))
(assert (forall ((z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (leq_0 true_0 x_3 z_2) (insert_0 (cons_0 x_3 (cons_0 z_2 xs_0)) x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_22 list_0) (x_20 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_20 true_0) (insert_0 x_22 x_3 xs_0) (leq_0 x_20 x_3 z_2)) (insert_0 (cons_0 z_2 x_22) x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(insert_0 (cons_0 x_3 nil_0) x_3 nil_0)))
(assert (forall ((x_24 list_0) (x_25 list_0) (y_3 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_25 xs_1) (insert_0 x_24 y_3 x_25)) (isort_0 x_24 (cons_0 y_3 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0) (ys_0 list_0) (x_5 Nat_0))
	(=> (and (count_0 x_29 x_5 ys_0) (plus_0 x_28 (succ_0 zero_0) x_29)) (count_0 x_28 x_5 (cons_0 x_5 ys_0)))))
(assert (forall ((x_31 Nat_0) (z_3 Nat_0) (ys_0 list_0) (x_5 Nat_0))
	(=> (and (diseqNat_0 x_5 z_3) (count_0 x_31 x_5 ys_0)) (count_0 x_31 x_5 (cons_0 z_3 ys_0)))))
(assert (forall ((x_5 Nat_0))
	(count_0 zero_0 x_5 nil_0)))
(assert (forall ((x_34 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_6 Nat_0) (y_5 Nat_0) (z_4 Nat_0))
	(=> (and (diseqNat_0 x_35 x_37) (plus_0 x_34 y_5 z_4) (plus_0 x_35 x_6 x_34) (plus_0 x_36 x_6 y_5) (plus_0 x_37 x_36 z_4)) false)))
(assert (forall ((x_38 Nat_0) (x_39 Nat_0) (x_7 Nat_0) (y_6 Nat_0))
	(=> (and (diseqNat_0 x_38 x_39) (plus_0 x_38 x_7 y_6) (plus_0 x_39 y_6 x_7)) false)))
(assert (forall ((x_40 Nat_0) (x_8 Nat_0))
	(=> (and (diseqNat_0 x_40 x_8) (plus_0 x_40 x_8 zero_0)) false)))
(assert (forall ((x_41 Nat_0) (x_9 Nat_0))
	(=> (and (diseqNat_0 x_41 x_9) (plus_0 x_41 zero_0 x_9)) false)))
(assert (forall ((x_42 list_0) (x_43 Nat_0) (x_44 Nat_0) (x_10 Nat_0) (xs_2 list_0))
	(=> (and (diseqNat_0 x_43 x_44) (isort_0 x_42 xs_2) (count_0 x_43 x_10 x_42) (count_0 x_44 x_10 xs_2)) false)))
(check-sat)
(get-model)
