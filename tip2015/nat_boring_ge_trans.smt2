(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun geq_0 (Bool_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_4 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_4 z_0 x_1) (leq_0 x_4 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_8 Bool_0) (x_2 Nat_0) (y_1 Nat_0))
	(=> (leq_0 x_8 y_1 x_2) (geq_0 x_8 x_2 y_1))))
(assert (forall ((x_10 Bool_0) (x_3 Nat_0) (y_2 Nat_0) (z_1 Nat_0))
	(=> (and (diseqBool_0 x_10 true_0) (geq_0 true_0 x_3 y_2) (geq_0 true_0 y_2 z_1) (geq_0 x_10 x_3 z_1)) false)))
(check-sat)
(get-model)
