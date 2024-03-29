(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun even_0 (Bool_0 Nat_0) Bool)
(declare-fun x_1 (Nat_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_4 Bool_0) (z_1 Nat_0))
	(=> (even_0 x_4 z_1) (even_0 x_4 (S_0 (S_0 z_1))))))
(assert (even_0 false_0 (S_0 Z_0)))
(assert (even_0 true_0 Z_0))
(assert (forall ((x_9 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (x_1 x_9 z_2 y_1) (x_1 (S_0 x_9) (S_0 z_2) y_1))))
(assert (forall ((x_10 Nat_0))
	(x_1 x_10 Z_0 x_10)))
(assert (forall ((x_11 Nat_0) (x_12 Bool_0) (x_13 Nat_0) (x_14 Bool_0) (x_3 Nat_0) (y_2 Nat_0))
	(=> (and (diseqBool_0 x_12 x_14) (x_1 x_11 x_3 y_2) (even_0 x_12 x_11) (x_1 x_13 y_2 x_3) (even_0 x_14 x_13)) false)))
(check-sat)
(get-model)
