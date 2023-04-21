(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_26 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_26))))
(assert (forall ((x_27 Nat_0))
	(diseqNat_0 (Z_3 x_27) Z_2)))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0))
	(=> (diseqNat_0 x_28 x_29) (diseqNat_0 (Z_3 x_28) (Z_3 x_29)))))
(assert (forall ((y_3 Nat_0))
	(add_0 y_3 Z_2 y_3)))
(assert (forall ((r_0 Nat_0) (x_20 Nat_0) (y_3 Nat_0))
	(=> (add_0 r_0 x_20 y_3) (add_0 (Z_3 r_0) (Z_3 x_20) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_2 y_3)))
(assert (forall ((x_20 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_20 y_3) (le_0 (Z_3 x_20) (Z_3 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (Z_3 y_3) Z_2)))
(assert (forall ((x_20 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_20 y_3) (gt_0 (Z_3 x_20) (Z_3 y_3)))))
(assert (forall ((z_0 Nat_0) (xs_0 list_0) (x_0 Nat_0))
	(=> (le_0 x_0 z_0) (insert_0 (cons_0 x_0 (cons_0 z_0 xs_0)) x_0 (cons_0 z_0 xs_0)))))
(assert (forall ((x_6 list_0) (z_0 Nat_0) (xs_0 list_0) (x_0 Nat_0))
	(=> (and (gt_0 x_0 z_0) (insert_0 x_6 x_0 xs_0)) (insert_0 (cons_0 z_0 x_6) x_0 (cons_0 z_0 xs_0)))))
(assert (forall ((x_0 Nat_0))
	(insert_0 (cons_0 x_0 nil_0) x_0 nil_0)))
(assert (forall ((x_9 list_0) (x_10 list_0) (y_1 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_9 xs_1) (insert_0 x_10 y_1 x_9)) (isort_0 x_10 (cons_0 y_1 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((x_12 Nat_0) (x_13 Nat_0) (ys_0 list_0) (x_2 Nat_0))
	(=> (and (count_0 x_13 x_2 ys_0) (add_0 x_12 (Z_3 Z_2) x_13)) (count_0 x_12 x_2 (cons_0 x_2 ys_0)))))
(assert (forall ((x_14 Nat_0) (z_1 Nat_0) (ys_0 list_0) (x_2 Nat_0))
	(=> (and (diseqNat_0 x_2 z_1) (count_0 x_14 x_2 ys_0)) (count_0 x_14 x_2 (cons_0 z_1 ys_0)))))
(assert (forall ((x_2 Nat_0))
	(count_0 Z_2 x_2 nil_0)))
(assert (forall ((x_17 list_0) (x_18 Nat_0) (x_19 Nat_0) (x_3 Nat_0) (xs_2 list_0))
	(=> (and (diseqNat_0 x_18 x_19) (isort_0 x_17 xs_2) (count_0 x_18 x_3 x_17) (count_0 x_19 x_3 xs_2)) false)))
(check-sat)
(get-model)
