(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun min_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_14 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_14))))
(assert (forall ((x_15 Nat_0))
	(diseqNat_0 (S_0 x_15) Z_0)))
(assert (forall ((x_16 Nat_0) (x_17 Nat_0))
	(=> (diseqNat_0 x_16 x_17) (diseqNat_0 (S_0 x_16) (S_0 x_17)))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_1 Nat_0))
	(=> (min_0 x_2 z_1 y_1) (min_0 (S_0 x_2) (S_0 z_1) (S_0 y_1)))))
(assert (forall ((z_1 Nat_0))
	(min_0 Z_0 (S_0 z_1) Z_0)))
(assert (forall ((y_0 Nat_0))
	(min_0 Z_0 Z_0 y_0)))
(assert (forall ((x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (x_8 Nat_0) (a_0 Nat_0) (b_0 Nat_0) (c_0 Nat_0))
	(=> (and (diseqNat_0 x_6 x_8) (min_0 x_5 a_0 b_0) (min_0 x_6 x_5 c_0) (min_0 x_7 b_0 c_0) (min_0 x_8 a_0 x_7)) false)))
(check-sat)
(get-model)