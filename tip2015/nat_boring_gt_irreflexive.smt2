(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun lt_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Bool_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Bool_0) (n_0 Nat_0) (z_0 Nat_0))
	(=> (lt_0 x_3 n_0 z_0) (lt_0 x_3 (succ_0 n_0) (succ_0 z_0)))))
(assert (forall ((z_0 Nat_0))
	(lt_0 true_0 zero_0 (succ_0 z_0))))
(assert (forall ((x_0 Nat_0))
	(lt_0 false_0 x_0 zero_0)))
(assert (forall ((x_7 Bool_0) (x_1 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_7 y_1 x_1) (gt_0 x_7 x_1 y_1))))
(assert (forall ((x_2 Nat_0))
	(=> (gt_0 true_0 x_2 x_2) false)))
(check-sat)
(get-model)
