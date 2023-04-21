(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_3 ) (Z_4 (unS_0 Nat_1)))))
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun even_0 (Bool_0 Nat_0) Bool)
(declare-fun x_2 (list_0 list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_6 Nat_0) (y_0 Nat_1) (xs_0 list_0))
	(=> (length_0 x_6 xs_0) (length_0 (S_0 x_6) (cons_0 y_0 xs_0)))))
(assert (length_0 Z_0 nil_0))
(assert (forall ((x_8 Bool_0) (z_1 Nat_0))
	(=> (even_0 x_8 z_1) (even_0 x_8 (S_0 (S_0 z_1))))))
(assert (even_0 false_0 (S_0 Z_0)))
(assert (even_0 true_0 Z_0))
(assert (forall ((x_13 list_0) (z_2 Nat_1) (xs_1 list_0) (y_2 list_0))
	(=> (x_2 x_13 xs_1 y_2) (x_2 (cons_0 z_2 x_13) (cons_0 z_2 xs_1) y_2))))
(assert (forall ((x_14 list_0))
	(x_2 x_14 nil_0 x_14)))
(assert (forall ((x_15 list_0) (x_16 Nat_0) (x_17 Bool_0) (x_18 list_0) (x_19 Nat_0) (x_20 Bool_0) (x_4 list_0) (y_3 list_0))
	(=> (and (diseqBool_0 x_17 x_20) (x_2 x_15 x_4 y_3) (length_0 x_16 x_15) (even_0 x_17 x_16) (x_2 x_18 y_3 x_4) (length_0 x_19 x_18) (even_0 x_20 x_19)) false)))
(check-sat)
(get-model)
