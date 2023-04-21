(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_0) Bool)
(declare-fun x_4 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun ins_0 (list_0 Nat_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_10 Bool_0) (y_1 Nat_0) (x_2 Nat_0))
	(=> (x_0 x_10 x_2 y_1) (x_0 x_10 (S_0 x_2) (S_0 y_1)))))
(assert (forall ((x_2 Nat_0))
	(x_0 false_0 (S_0 x_2) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 Z_0 (S_0 z_1))))
(assert (x_0 true_0 Z_0 Z_0))
(assert (forall ((z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (x_0 true_0 x_3 z_2) (elem_0 true_0 x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_17 Bool_0) (x_16 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_16 true_0) (elem_0 x_17 x_3 xs_0) (x_0 x_16 x_3 z_2)) (elem_0 x_17 x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(elem_0 false_0 x_3 nil_0)))
(assert (forall ((x_20 Bool_0) (x_6 Nat_0) (z_3 Nat_0))
	(=> (x_4 x_20 x_6 z_3) (x_4 x_20 (S_0 x_6) (S_0 z_3)))))
(assert (forall ((z_3 Nat_0))
	(x_4 true_0 Z_0 (S_0 z_3))))
(assert (forall ((x_5 Nat_0))
	(x_4 false_0 x_5 Z_0)))
(assert (forall ((z_4 Nat_0) (xs_1 list_0) (x_7 Nat_0))
	(=> (x_4 true_0 x_7 z_4) (ins_0 (cons_0 x_7 (cons_0 z_4 xs_1)) x_7 (cons_0 z_4 xs_1)))))
(assert (forall ((x_28 list_0) (x_26 Bool_0) (z_4 Nat_0) (xs_1 list_0) (x_7 Nat_0))
	(=> (and (diseqBool_0 x_26 true_0) (ins_0 x_28 x_7 xs_1) (x_4 x_26 x_7 z_4)) (ins_0 (cons_0 z_4 x_28) x_7 (cons_0 z_4 xs_1)))))
(assert (forall ((x_7 Nat_0))
	(ins_0 (cons_0 x_7 nil_0) x_7 nil_0)))
(assert (forall ((x_30 list_0) (x_31 Bool_0) (x_32 Bool_0) (x_8 Nat_0) (y_5 Nat_0) (xs_2 list_0))
	(=> (and (diseqBool_0 x_31 x_32) (x_4 true_0 x_8 y_5) (ins_0 x_30 y_5 xs_2) (elem_0 x_31 x_8 x_30) (elem_0 x_32 x_8 xs_2)) false)))
(check-sat)
(get-model)
