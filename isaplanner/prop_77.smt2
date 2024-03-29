(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun insort_0 (list_0 Nat_0 list_0) Bool)
(declare-fun x_4 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun sorted_0 (Bool_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_8 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (x_0 x_8 z_1 x_2) (x_0 x_8 (S_0 z_1) (S_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 (S_0 z_1) Z_0)))
(assert (forall ((y_0 Nat_0))
	(x_0 true_0 Z_0 y_0)))
(assert (forall ((z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (x_0 true_0 x_3 z_2) (insort_0 (cons_0 x_3 (cons_0 z_2 xs_0)) x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_16 list_0) (x_14 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_14 true_0) (insort_0 x_16 x_3 xs_0) (x_0 x_14 x_3 z_2)) (insort_0 (cons_0 z_2 x_16) x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(insort_0 (cons_0 x_3 nil_0) x_3 nil_0)))
(assert (forall ((x_18 Bool_0))
	(x_4 x_18 true_0 x_18)))
(assert (forall ((x_5 Bool_0) (y_2 Bool_0))
	(=> (diseqBool_0 x_5 true_0) (x_4 false_0 x_5 y_2))))
(assert (forall ((x_20 Bool_0) (x_21 Bool_0) (x_22 Bool_0) (y_4 Nat_0) (ys_0 list_0) (y_3 Nat_0))
	(=> (and (x_0 x_21 y_3 y_4) (sorted_0 x_22 (cons_0 y_4 ys_0)) (x_4 x_20 x_21 x_22)) (sorted_0 x_20 (cons_0 y_3 (cons_0 y_4 ys_0))))))
(assert (forall ((y_3 Nat_0))
	(sorted_0 true_0 (cons_0 y_3 nil_0))))
(assert (sorted_0 true_0 nil_0))
(assert (forall ((x_26 list_0) (x_27 Bool_0) (x_7 Nat_0) (xs_1 list_0))
	(=> (and (diseqBool_0 x_27 true_0) (sorted_0 true_0 xs_1) (insort_0 x_26 x_7 xs_1) (sorted_0 x_27 x_26)) false)))
(check-sat)
(get-model)
