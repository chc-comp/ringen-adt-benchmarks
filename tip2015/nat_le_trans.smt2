(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_3 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_3 z_0 x_1) (leq_0 x_3 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_7 Bool_0) (x_2 Nat_0) (y_1 Nat_0) (z_1 Nat_0))
	(=> (and (diseqBool_0 x_7 true_0) (leq_0 true_0 x_2 y_1) (leq_0 true_0 y_1 z_1) (leq_0 x_7 x_2 z_1)) false)))
(check-sat)
(get-model)
