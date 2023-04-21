(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_21 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_21))))
(assert (forall ((x_22 Nat_0))
	(diseqNat_0 (succ_0 x_22) zero_0)))
(assert (forall ((x_23 Nat_0) (x_24 Nat_0))
	(=> (diseqNat_0 x_23 x_24) (diseqNat_0 (succ_0 x_23) (succ_0 x_24)))))
(assert (forall ((x_4 Bool_0) (n_0 Nat_0) (z_0 Nat_0))
	(=> (lt_0 x_4 n_0 z_0) (lt_0 x_4 (succ_0 n_0) (succ_0 z_0)))))
(assert (forall ((z_0 Nat_0))
	(lt_0 true_0 zero_0 (succ_0 z_0))))
(assert (forall ((x_0 Nat_0))
	(lt_0 false_0 x_0 zero_0)))
(assert (forall ((x_8 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (leq_0 x_8 z_1 x_2) (leq_0 x_8 (succ_0 z_1) (succ_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(leq_0 false_0 (succ_0 z_1) zero_0)))
(assert (forall ((y_1 Nat_0))
	(leq_0 true_0 zero_0 y_1)))
(assert (forall ((x_12 Bool_0) (x_3 Nat_0) (y_2 Nat_0))
	(=> (and (diseqBool_0 x_12 true_0) (diseqNat_0 x_3 y_2) (leq_0 true_0 x_3 y_2) (lt_0 x_12 x_3 y_2)) false)))
(check-sat)
(get-model)
