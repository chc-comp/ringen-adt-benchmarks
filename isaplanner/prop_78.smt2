(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun insort_0 (list_0 Nat_0 list_0) Bool)
(declare-fun sort_0 (list_0 list_0) Bool)
(declare-fun x_5 (Bool_0 Bool_0 Bool_0) Bool)
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
(assert (forall ((x_18 list_0) (x_19 list_0) (y_2 Nat_0) (xs_1 list_0))
	(=> (and (sort_0 x_19 xs_1) (insort_0 x_18 y_2 x_19)) (sort_0 x_18 (cons_0 y_2 xs_1)))))
(assert (sort_0 nil_0 nil_0))
(assert (forall ((x_22 Bool_0))
	(x_5 x_22 true_0 x_22)))
(assert (forall ((x_6 Bool_0) (y_3 Bool_0))
	(=> (diseqBool_0 x_6 true_0) (x_5 false_0 x_6 y_3))))
(assert (forall ((x_24 Bool_0) (x_25 Bool_0) (x_26 Bool_0) (y_5 Nat_0) (ys_0 list_0) (y_4 Nat_0))
	(=> (and (x_0 x_25 y_4 y_5) (sorted_0 x_26 (cons_0 y_5 ys_0)) (x_5 x_24 x_25 x_26)) (sorted_0 x_24 (cons_0 y_4 (cons_0 y_5 ys_0))))))
(assert (forall ((y_4 Nat_0))
	(sorted_0 true_0 (cons_0 y_4 nil_0))))
(assert (sorted_0 true_0 nil_0))
(assert (forall ((x_30 list_0) (x_31 Bool_0) (xs_2 list_0))
	(=> (and (diseqBool_0 x_31 true_0) (sort_0 x_30 xs_2) (sorted_0 x_31 x_30)) false)))
(check-sat)
(get-model)
