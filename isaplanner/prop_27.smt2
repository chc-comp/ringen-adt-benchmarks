(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_0) Bool)
(declare-fun x_4 (list_0 list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_7 Bool_0) (y_1 Nat_0) (x_2 Nat_0))
	(=> (x_0 x_7 x_2 y_1) (x_0 x_7 (S_0 x_2) (S_0 y_1)))))
(assert (forall ((x_2 Nat_0))
	(x_0 false_0 (S_0 x_2) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 Z_0 (S_0 z_1))))
(assert (x_0 true_0 Z_0 Z_0))
(assert (forall ((z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (x_0 true_0 x_3 z_2) (elem_0 true_0 x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_15 Bool_0) (x_14 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_14 true_0) (elem_0 x_15 x_3 xs_0) (x_0 x_14 x_3 z_2)) (elem_0 x_15 x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(elem_0 false_0 x_3 nil_0)))
(assert (forall ((x_19 list_0) (z_3 Nat_0) (xs_1 list_0) (y_3 list_0))
	(=> (x_4 x_19 xs_1 y_3) (x_4 (cons_0 z_3 x_19) (cons_0 z_3 xs_1) y_3))))
(assert (forall ((x_20 list_0))
	(x_4 x_20 nil_0 x_20)))
(assert (forall ((x_21 list_0) (x_22 Bool_0) (x_6 Nat_0) (xs_2 list_0) (ys_0 list_0))
	(=> (and (diseqBool_0 x_22 true_0) (elem_0 true_0 x_6 ys_0) (x_4 x_21 xs_2 ys_0) (elem_0 x_22 x_6 x_21)) false)))
(check-sat)
(get-model)