(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun addacc_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_16 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_16))))
(assert (forall ((x_17 Nat_0))
	(diseqNat_0 (succ_0 x_17) zero_0)))
(assert (forall ((x_18 Nat_0) (x_19 Nat_0))
	(=> (diseqNat_0 x_18 x_19) (diseqNat_0 (succ_0 x_18) (succ_0 x_19)))))
(assert (forall ((x_4 Nat_0) (x_2 Nat_0) (y_0 Nat_0) (z_0 Nat_0))
	(=> (addacc_0 x_4 x_2 (succ_0 y_0) z_0) (addacc_0 x_4 (succ_0 x_2) y_0 z_0))))
(assert (forall ((x_6 Nat_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (addacc_0 x_6 zero_0 x_1 (succ_0 z_0)) (addacc_0 x_6 zero_0 (succ_0 x_1) z_0))))
(assert (forall ((x_8 Nat_0))
	(addacc_0 x_8 zero_0 zero_0 x_8)))
(assert (forall ((x_9 Nat_0) (x_10 Nat_0) (x_3 Nat_0) (y_1 Nat_0) (z_1 Nat_0))
	(=> (and (diseqNat_0 x_9 x_10) (addacc_0 x_9 x_3 y_1 z_1) (addacc_0 x_10 y_1 x_3 z_1)) false)))
(check-sat)
(get-model)
