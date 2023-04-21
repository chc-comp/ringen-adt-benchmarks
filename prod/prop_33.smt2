(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun one_0 (Nat_0) Bool)
(declare-fun x_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun x_2 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun fac_0 (Nat_0 Nat_0) Bool)
(declare-fun qfac_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_31 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_31))))
(assert (forall ((x_32 Nat_0))
	(diseqNat_0 (S_0 x_32) Z_0)))
(assert (forall ((x_33 Nat_0) (x_34 Nat_0))
	(=> (diseqNat_0 x_33 x_34) (diseqNat_0 (S_0 x_33) (S_0 x_34)))))
(assert (one_0 (S_0 Z_0)))
(assert (forall ((x_9 Nat_0) (z_1 Nat_0) (y_0 Nat_0))
	(=> (x_0 x_9 z_1 y_0) (x_0 (S_0 x_9) (S_0 z_1) y_0))))
(assert (forall ((x_10 Nat_0))
	(x_0 x_10 Z_0 x_10)))
(assert (forall ((x_11 Nat_0) (x_12 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (and (x_2 x_12 z_2 y_1) (x_0 x_11 y_1 x_12)) (x_2 x_11 (S_0 z_2) y_1))))
(assert (forall ((y_1 Nat_0))
	(x_2 Z_0 Z_0 y_1)))
(assert (forall ((x_15 Nat_0) (x_16 Nat_0) (y_2 Nat_0))
	(=> (and (fac_0 x_16 y_2) (x_2 x_15 (S_0 y_2) x_16)) (fac_0 x_15 (S_0 y_2)))))
(assert (fac_0 (S_0 Z_0) Z_0))
(assert (forall ((x_19 Nat_0) (x_20 Nat_0) (z_3 Nat_0) (y_3 Nat_0))
	(=> (and (x_2 x_20 (S_0 z_3) y_3) (qfac_0 x_19 z_3 x_20)) (qfac_0 x_19 (S_0 z_3) y_3))))
(assert (forall ((x_22 Nat_0))
	(qfac_0 x_22 Z_0 x_22)))
(assert (forall ((x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_6 Nat_0))
	(=> (and (diseqNat_0 x_23 x_25) (fac_0 x_23 x_6) (one_0 x_24) (qfac_0 x_25 x_6 x_24)) false)))
(check-sat)
(get-model)
