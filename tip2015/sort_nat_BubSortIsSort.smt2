(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool_0) (projpair_1 list_0)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun bubble_0 (pair_0 list_0) Bool)
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_42 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_42))))
(assert (forall ((x_43 Nat_0))
	(diseqNat_0 (succ_0 x_43) zero_0)))
(assert (forall ((x_44 Nat_0) (x_45 Nat_0))
	(=> (diseqNat_0 x_44 x_45) (diseqNat_0 (succ_0 x_44) (succ_0 x_45)))))
(assert (forall ((x_52 Nat_0) (x_53 list_0))
	(diseqlist_0 nil_0 (cons_0 x_52 x_53))))
(assert (forall ((x_54 Nat_0) (x_55 list_0))
	(diseqlist_0 (cons_0 x_54 x_55) nil_0)))
(assert (forall ((x_56 Nat_0) (x_57 list_0) (x_58 Nat_0) (x_59 list_0))
	(=> (diseqNat_0 x_56 x_58) (diseqlist_0 (cons_0 x_56 x_57) (cons_0 x_58 x_59)))))
(assert (forall ((x_56 Nat_0) (x_57 list_0) (x_58 Nat_0) (x_59 list_0))
	(=> (diseqlist_0 x_57 x_59) (diseqlist_0 (cons_0 x_56 x_57) (cons_0 x_58 x_59)))))
(assert (forall ((x_6 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_6 z_0 x_1) (leq_0 x_6 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((z_1 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (leq_0 true_0 x_2 z_1) (insert_0 (cons_0 x_2 (cons_0 z_1 xs_0)) x_2 (cons_0 z_1 xs_0)))))
(assert (forall ((x_14 list_0) (x_12 Bool_0) (z_1 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (and (diseqBool_0 x_12 true_0) (insert_0 x_14 x_2 xs_0) (leq_0 x_12 x_2 z_1)) (insert_0 (cons_0 z_1 x_14) x_2 (cons_0 z_1 xs_0)))))
(assert (forall ((x_2 Nat_0))
	(insert_0 (cons_0 x_2 nil_0) x_2 nil_0)))
(assert (forall ((x_16 list_0) (x_17 list_0) (y_2 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_17 xs_1) (insert_0 x_16 y_2 x_17)) (isort_0 x_16 (cons_0 y_2 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((b_0 Bool_0) (ys_0 list_0) (y_4 Nat_0) (xs_2 list_0) (y_3 Nat_0))
	(=> (and (bubble_0 (pair_1 b_0 ys_0) (cons_0 y_4 xs_2)) (leq_0 true_0 y_3 y_4)) (bubble_0 (pair_1 b_0 (cons_0 y_3 ys_0)) (cons_0 y_3 (cons_0 y_4 xs_2))))))
(assert (forall ((x_23 Bool_0) (b_1 Bool_0) (ys_1 list_0) (y_4 Nat_0) (xs_2 list_0) (y_3 Nat_0))
	(=> (and (diseqBool_0 x_23 true_0) (bubble_0 (pair_1 b_1 ys_1) (cons_0 y_3 xs_2)) (leq_0 x_23 y_3 y_4)) (bubble_0 (pair_1 true_0 (cons_0 y_4 ys_1)) (cons_0 y_3 (cons_0 y_4 xs_2))))))
(assert (forall ((y_3 Nat_0))
	(bubble_0 (pair_1 false_0 (cons_0 y_3 nil_0)) (cons_0 y_3 nil_0))))
(assert (bubble_0 (pair_1 false_0 nil_0) nil_0))
(assert (forall ((x_29 list_0) (ys_2 list_0) (x_5 list_0))
	(=> (and (bubsort_0 x_29 ys_2) (bubble_0 (pair_1 true_0 ys_2) x_5)) (bubsort_0 x_29 x_5))))
(assert (forall ((x_32 list_0) (c_0 Bool_0) (ys_2 list_0))
	(=> (and (diseqBool_0 c_0 true_0) (bubble_0 (pair_1 c_0 ys_2) x_32)) (bubsort_0 x_32 x_32))))
(assert (forall ((x_33 list_0) (x_34 list_0) (xs_3 list_0))
	(=> (and (diseqlist_0 x_33 x_34) (bubsort_0 x_33 xs_3) (isort_0 x_34 xs_3)) false)))
(check-sat)
(get-model)
