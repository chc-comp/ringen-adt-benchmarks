(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun accplus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun accaltmul_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_20 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_20))))
(assert (forall ((x_21 Nat_0))
	(diseqNat_0 (succ_0 x_21) zero_0)))
(assert (forall ((x_22 Nat_0) (x_23 Nat_0))
	(=> (diseqNat_0 x_22 x_23) (diseqNat_0 (succ_0 x_22) (succ_0 x_23)))))
(assert (forall ((x_4 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (accplus_0 x_4 z_0 (succ_0 y_0)) (accplus_0 x_4 (succ_0 z_0) y_0))))
(assert (forall ((x_6 Nat_0))
	(accplus_0 x_6 zero_0 x_6)))
(assert (forall ((x_8 Nat_0) (x_9 Nat_0) (x_10 Nat_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (and (accaltmul_0 x_8 z_1 x_2) (accplus_0 x_9 x_2 x_8) (accplus_0 x_10 (succ_0 z_1) x_9)) (accaltmul_0 x_10 (succ_0 z_1) (succ_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(accaltmul_0 zero_0 (succ_0 z_1) zero_0)))
(assert (forall ((y_1 Nat_0))
	(accaltmul_0 zero_0 zero_0 y_1)))
(assert (forall ((x_13 Nat_0) (x_14 Nat_0) (x_3 Nat_0) (y_2 Nat_0))
	(=> (and (diseqNat_0 x_13 x_14) (accaltmul_0 x_13 x_3 y_2) (accaltmul_0 x_14 y_2 x_3)) false)))
(check-sat)
(get-model)
