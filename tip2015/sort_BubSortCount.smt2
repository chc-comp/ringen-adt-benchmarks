(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool_0) (projpair_1 list_0)))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun bubble_0 (pair_0 list_0) Bool)
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (forall ((x_29 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_29))))
(assert (forall ((x_30 Nat_0))
	(diseqNat_0 (Z_3 x_30) Z_2)))
(assert (forall ((x_31 Nat_0) (x_32 Nat_0))
	(=> (diseqNat_0 x_31 x_32) (diseqNat_0 (Z_3 x_31) (Z_3 x_32)))))
(assert (forall ((y_3 Nat_0))
	(add_0 y_3 Z_2 y_3)))
(assert (forall ((r_0 Nat_0) (x_23 Nat_0) (y_3 Nat_0))
	(=> (add_0 r_0 x_23 y_3) (add_0 (Z_3 r_0) (Z_3 x_23) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_2 y_3)))
(assert (forall ((x_23 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_23 y_3) (le_0 (Z_3 x_23) (Z_3 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (Z_3 y_3) Z_2)))
(assert (forall ((x_23 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_23 y_3) (gt_0 (Z_3 x_23) (Z_3 y_3)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_24 Nat_0) (x_5 Nat_0) (ys_0 list_0) (x_0 Nat_0))
	(=> (and (count_0 x_5 x_0 ys_0) (add_0 x_24 (Z_3 Z_2) x_5)) (count_0 x_24 x_0 (cons_0 x_0 ys_0)))))
(assert (forall ((x_6 Nat_0) (z_0 Nat_0) (ys_0 list_0) (x_0 Nat_0))
	(=> (and (diseqNat_0 x_0 z_0) (count_0 x_6 x_0 ys_0)) (count_0 x_6 x_0 (cons_0 z_0 ys_0)))))
(assert (forall ((x_0 Nat_0))
	(count_0 Z_2 x_0 nil_0)))
(assert (forall ((b_0 Bool_0) (ys_1 list_0) (y_2 Nat_0) (xs_0 list_0) (y_1 Nat_0))
	(=> (and (le_0 y_1 y_2) (bubble_0 (pair_1 b_0 ys_1) (cons_0 y_2 xs_0))) (bubble_0 (pair_1 b_0 (cons_0 y_1 ys_1)) (cons_0 y_1 (cons_0 y_2 xs_0))))))
(assert (forall ((b_1 Bool_0) (ys_2 list_0) (y_2 Nat_0) (xs_0 list_0) (y_1 Nat_0))
	(=> (and (gt_0 y_1 y_2) (bubble_0 (pair_1 b_1 ys_2) (cons_0 y_1 xs_0))) (bubble_0 (pair_1 true_0 (cons_0 y_2 ys_2)) (cons_0 y_1 (cons_0 y_2 xs_0))))))
(assert (forall ((y_1 Nat_0))
	(bubble_0 (pair_1 false_0 (cons_0 y_1 nil_0)) (cons_0 y_1 nil_0))))
(assert (bubble_0 (pair_1 false_0 nil_0) nil_0))
(assert (forall ((x_16 list_0) (ys_3 list_0) (x_2 list_0))
	(=> (and (bubsort_0 x_16 ys_3) (bubble_0 (pair_1 true_0 ys_3) x_2)) (bubsort_0 x_16 x_2))))
(assert (forall ((x_19 list_0) (c_0 Bool_0) (ys_3 list_0))
	(=> (and (diseqBool_0 c_0 true_0) (bubble_0 (pair_1 c_0 ys_3) x_19)) (bubsort_0 x_19 x_19))))
(assert (forall ((x_20 list_0) (x_21 Nat_0) (x_22 Nat_0) (x_3 Nat_0) (xs_1 list_0))
	(=> (and (diseqNat_0 x_21 x_22) (bubsort_0 x_20 xs_1) (count_0 x_21 x_3 x_20) (count_0 x_22 x_3 xs_1)) false)))
(check-sat)
(get-model)
