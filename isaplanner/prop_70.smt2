(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_3 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (x_0 x_3 z_1 x_2) (x_0 x_3 (S_0 z_1) (S_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 (S_0 z_1) Z_0)))
(assert (forall ((y_0 Nat_0))
	(x_0 true_0 Z_0 y_0)))
(assert (forall ((x_7 Bool_0) (m_0 Nat_0) (n_0 Nat_0))
	(=> (and (diseqBool_0 x_7 true_0) (x_0 true_0 m_0 n_0) (x_0 x_7 m_0 (S_0 n_0))) false)))
(check-sat)
(get-model)