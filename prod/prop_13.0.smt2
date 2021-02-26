(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_16 Nat_1) (x_15 Nat_1))
	(=> (= x_16 (S_1 x_15))
	    (unS_1 x_15 x_16))))
(assert (isZ_0 Z_1))
(assert (forall ((x_17 Nat_1))
	(isS_0 (S_1 x_17))))
(assert (forall ((x_18 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_18))))
(assert (forall ((x_19 Nat_1))
	(diseqNat_0 (S_1 x_19) Z_1)))
(assert (forall ((x_20 Nat_1) (x_21 Nat_1))
	(=> (diseqNat_0 x_20 x_21)
	    (diseqNat_0 (S_1 x_20) (S_1 x_21)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_2 Nat_1))
	(add_0 y_2 Z_1 y_2)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_13 y_2)
	    (add_0 (S_1 r_0) (S_1 x_13) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_1 Z_1 y_2)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_13 y_2)
	    (minus_0 (S_1 r_0) (S_1 x_13) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_1 y_2)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_13 y_2)
	    (le_0 (S_1 x_13) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_1)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_13 y_2)
	    (ge_0 (S_1 x_13) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_1 (S_1 y_2))))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_13 y_2)
	    (lt_0 (S_1 x_13) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_1 y_2) Z_1)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_13 y_2)
	    (gt_0 (S_1 x_13) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_1 Z_1 y_2)))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_13 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_1 x_13) y_2))))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_13 y_2)
	    (div_0 Z_1 x_13 y_2))))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_13 y_2)
			(minus_0 z_2 x_13 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_1 r_0) x_13 y_2))))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_13 y_2)
	    (mod_0 x_13 x_13 y_2))))
(assert (forall ((x_13 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_13 y_2)
			(minus_0 z_2 x_13 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_13 y_2))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_24 Nat_0) (x_23 Nat_0))
	(=> (= x_24 (S_0 x_23))
	    (projS_1 x_23 x_24))))
(assert (isZ_1 Z_0))
(assert (forall ((x_25 Nat_0))
	(isS_1 (S_0 x_25))))
(assert (forall ((x_26 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_26))))
(assert (forall ((x_27 Nat_0))
	(diseqNat_1 (S_0 x_27) Z_0)))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0))
	(=> (diseqNat_1 x_28 x_29)
	    (diseqNat_1 (S_0 x_28) (S_0 x_29)))))
(declare-fun half_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_4 Nat_0) (x_5 Nat_0))
	(=>	(and (= x_4 (S_0 x_5))
			(half_0 x_5 z_0)
			(= x_0 (S_0 y_0))
			(= y_0 (S_0 z_0)))
		(half_0 x_4 x_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_6 Nat_0))
	(=>	(and (= x_6 Z_0)
			(= x_0 (S_0 y_0))
			(= y_0 Z_0))
		(half_0 x_6 x_0))))
(assert (forall ((x_0 Nat_0) (x_7 Nat_0))
	(=>	(and (= x_7 Z_0)
			(= x_0 Z_0))
		(half_0 x_7 x_0))))
(declare-fun x_1 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_8 Nat_0) (x_9 Nat_0))
	(=>	(and (= x_8 (S_0 x_9))
			(x_1 x_9 z_1 y_1)
			(= x_2 (S_0 z_1)))
		(x_1 x_8 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_10 Nat_0))
	(=>	(and (= x_10 y_1)
			(= x_2 Z_0))
		(x_1 x_10 x_2 y_1))))
(assert (forall ((x_3 Nat_0) (x_11 Nat_0) (x_12 Nat_0))
	(=>	(and (diseqNat_1 x_12 x_3)
			(x_1 x_11 x_3 x_3)
			(half_0 x_12 x_11))
		false)))
(check-sat)
