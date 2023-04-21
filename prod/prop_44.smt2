(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun barbar_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun x_1 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_0) Bool)
(declare-fun intersect_0 (list_0 list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((y_0 Bool_0))
	(barbar_0 true_0 true_0 y_0)))
(assert (forall ((x_8 Bool_0) (x_0 Bool_0))
	(=> (diseqBool_0 x_0 true_0) (barbar_0 x_8 x_0 x_8))))
(assert (forall ((x_10 Bool_0) (y_2 Nat_0) (x_3 Nat_0))
	(=> (x_1 x_10 x_3 y_2) (x_1 x_10 (S_0 x_3) (S_0 y_2)))))
(assert (forall ((x_3 Nat_0))
	(x_1 false_0 (S_0 x_3) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_1 false_0 Z_0 (S_0 z_1))))
(assert (x_1 true_0 Z_0 Z_0))
(assert (forall ((x_14 Bool_0) (x_15 Bool_0) (x_16 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_4 Nat_0))
	(=> (and (x_1 x_15 x_4 z_2) (elem_0 x_16 x_4 xs_0) (barbar_0 x_14 x_15 x_16)) (elem_0 x_14 x_4 (cons_0 z_2 xs_0)))))
(assert (forall ((x_4 Nat_0))
	(elem_0 false_0 x_4 nil_0)))
(assert (forall ((x_21 list_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (intersect_0 x_21 xs_1 y_4) (elem_0 true_0 z_3 y_4)) (intersect_0 (cons_0 z_3 x_21) (cons_0 z_3 xs_1) y_4))))
(assert (forall ((x_23 list_0) (x_22 Bool_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (diseqBool_0 x_22 true_0) (intersect_0 x_23 xs_1 y_4) (elem_0 x_22 z_3 y_4)) (intersect_0 x_23 (cons_0 z_3 xs_1) y_4))))
(assert (forall ((y_4 list_0))
	(intersect_0 nil_0 nil_0 y_4)))
(assert (forall ((x_26 list_0) (x_27 Bool_0) (x_6 Nat_0) (y_5 list_0) (z_4 list_0))
	(=> (and (diseqBool_0 x_27 true_0) (elem_0 true_0 x_6 y_5) (elem_0 true_0 x_6 z_4) (intersect_0 x_26 y_5 z_4) (elem_0 x_27 x_6 x_26)) false)))
(check-sat)
(get-model)
