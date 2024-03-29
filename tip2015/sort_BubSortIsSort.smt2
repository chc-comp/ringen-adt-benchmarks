(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool_0) (projpair_1 list_0)))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun bubble_0 (pair_0 list_0) Bool)
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (forall ((x_30 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_30))))
(assert (forall ((x_31 Nat_0))
	(diseqNat_0 (Z_3 x_31) Z_2)))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0))
	(=> (diseqNat_0 x_32 x_33) (diseqNat_0 (Z_3 x_32) (Z_3 x_33)))))
(assert (forall ((y_4 Nat_0))
	(le_0 Z_2 y_4)))
(assert (forall ((x_25 Nat_0) (y_4 Nat_0))
	(=> (le_0 x_25 y_4) (le_0 (Z_3 x_25) (Z_3 y_4)))))
(assert (forall ((y_4 Nat_0))
	(gt_0 (Z_3 y_4) Z_2)))
(assert (forall ((x_25 Nat_0) (y_4 Nat_0))
	(=> (gt_0 x_25 y_4) (gt_0 (Z_3 x_25) (Z_3 y_4)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_42 Nat_0) (x_43 list_0))
	(diseqlist_0 nil_0 (cons_0 x_42 x_43))))
(assert (forall ((x_44 Nat_0) (x_45 list_0))
	(diseqlist_0 (cons_0 x_44 x_45) nil_0)))
(assert (forall ((x_46 Nat_0) (x_47 list_0) (x_48 Nat_0) (x_49 list_0))
	(=> (diseqNat_0 x_46 x_48) (diseqlist_0 (cons_0 x_46 x_47) (cons_0 x_48 x_49)))))
(assert (forall ((x_46 Nat_0) (x_47 list_0) (x_48 Nat_0) (x_49 list_0))
	(=> (diseqlist_0 x_47 x_49) (diseqlist_0 (cons_0 x_46 x_47) (cons_0 x_48 x_49)))))
(assert (forall ((z_0 Nat_0) (xs_0 list_0) (x_0 Nat_0))
	(=> (le_0 x_0 z_0) (insert_0 (cons_0 x_0 (cons_0 z_0 xs_0)) x_0 (cons_0 z_0 xs_0)))))
(assert (forall ((x_6 list_0) (z_0 Nat_0) (xs_0 list_0) (x_0 Nat_0))
	(=> (and (gt_0 x_0 z_0) (insert_0 x_6 x_0 xs_0)) (insert_0 (cons_0 z_0 x_6) x_0 (cons_0 z_0 xs_0)))))
(assert (forall ((x_0 Nat_0))
	(insert_0 (cons_0 x_0 nil_0) x_0 nil_0)))
(assert (forall ((x_9 list_0) (x_10 list_0) (y_1 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_9 xs_1) (insert_0 x_10 y_1 x_9)) (isort_0 x_10 (cons_0 y_1 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((b_0 Bool_0) (ys_0 list_0) (y_3 Nat_0) (xs_2 list_0) (y_2 Nat_0))
	(=> (and (le_0 y_2 y_3) (bubble_0 (pair_1 b_0 ys_0) (cons_0 y_3 xs_2))) (bubble_0 (pair_1 b_0 (cons_0 y_2 ys_0)) (cons_0 y_2 (cons_0 y_3 xs_2))))))
(assert (forall ((b_1 Bool_0) (ys_1 list_0) (y_3 Nat_0) (xs_2 list_0) (y_2 Nat_0))
	(=> (and (gt_0 y_2 y_3) (bubble_0 (pair_1 b_1 ys_1) (cons_0 y_2 xs_2))) (bubble_0 (pair_1 true_0 (cons_0 y_3 ys_1)) (cons_0 y_2 (cons_0 y_3 xs_2))))))
(assert (forall ((y_2 Nat_0))
	(bubble_0 (pair_1 false_0 (cons_0 y_2 nil_0)) (cons_0 y_2 nil_0))))
(assert (bubble_0 (pair_1 false_0 nil_0) nil_0))
(assert (forall ((x_19 list_0) (ys_2 list_0) (x_3 list_0))
	(=> (and (bubsort_0 x_19 ys_2) (bubble_0 (pair_1 true_0 ys_2) x_3)) (bubsort_0 x_19 x_3))))
(assert (forall ((x_22 list_0) (c_0 Bool_0) (ys_2 list_0))
	(=> (and (diseqBool_0 c_0 true_0) (bubble_0 (pair_1 c_0 ys_2) x_22)) (bubsort_0 x_22 x_22))))
(assert (forall ((x_23 list_0) (x_24 list_0) (xs_3 list_0))
	(=> (and (diseqlist_0 x_23 x_24) (bubsort_0 x_23 xs_3) (isort_0 x_24 xs_3)) false)))
(check-sat)
(get-model)
