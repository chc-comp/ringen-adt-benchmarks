(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_19 Nat_1) (x_18 Nat_1))
	(=> (= x_19 (S_1 x_18))
	    (unS_1 x_18 x_19))))
(assert (isZ_0 Z_1))
(assert (forall ((x_20 Nat_1))
	(isS_0 (S_1 x_20))))
(assert (forall ((x_21 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_21))))
(assert (forall ((x_22 Nat_1))
	(diseqNat_0 (S_1 x_22) Z_1)))
(assert (forall ((x_23 Nat_1) (x_24 Nat_1))
	(=> (diseqNat_0 x_23 x_24)
	    (diseqNat_0 (S_1 x_23) (S_1 x_24)))))
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
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_16 y_2)
	    (add_0 (S_1 r_0) (S_1 x_16) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_1 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_16 y_2)
	    (minus_0 (S_1 r_0) (S_1 x_16) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_16 y_2)
	    (le_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_1)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_16 y_2)
	    (ge_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_1 (S_1 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (lt_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_1 y_2) Z_1)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_16 y_2)
	    (gt_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_1 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_16 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_1 x_16) y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (div_0 Z_1 x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_16 y_2)
			(minus_0 z_2 x_16 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_1 r_0) x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (mod_0 x_16 x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_16 y_2)
			(minus_0 z_2 x_16 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_16 y_2))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_27 Nat_0) (x_26 Nat_0))
	(=> (= x_27 (S_0 x_26))
	    (projS_1 x_26 x_27))))
(assert (isZ_1 Z_0))
(assert (forall ((x_28 Nat_0))
	(isS_1 (S_0 x_28))))
(assert (forall ((x_29 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_29))))
(assert (forall ((x_30 Nat_0))
	(diseqNat_1 (S_0 x_30) Z_0)))
(assert (forall ((x_31 Nat_0) (x_32 Nat_0))
	(=> (diseqNat_1 x_31 x_32)
	    (diseqNat_1 (S_0 x_31) (S_0 x_32)))))
(declare-fun x_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0))
	(=>	(and (= x_5 x_6)
			(x_0 x_6 z_0 x_2)
			(= x_1 (S_0 z_0))
			(= y_0 (S_0 x_2)))
		(x_0 x_5 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_7 Nat_0))
	(=>	(and (= x_7 (S_0 z_0))
			(= x_1 (S_0 z_0))
			(= y_0 Z_0))
		(x_0 x_7 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_8 Nat_0))
	(=>	(and (= x_8 Z_0)
			(= x_1 Z_0))
		(x_0 x_8 x_1 y_0))))
(declare-fun x_3 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_9 Nat_0) (x_10 Nat_0))
	(=>	(and (= x_9 (S_0 x_10))
			(x_3 x_10 z_1 y_1)
			(= x_4 (S_0 z_1)))
		(x_3 x_9 x_4 y_1))))
(assert (forall ((x_4 Nat_0) (y_1 Nat_0) (x_11 Nat_0))
	(=>	(and (= x_11 y_1)
			(= x_4 Z_0))
		(x_3 x_11 x_4 y_1))))
(assert (forall ((i_0 Nat_0) (j_0 Nat_0) (k_0 Nat_0) (x_12 Nat_0) (x_13 Nat_0) (x_14 Nat_0) (x_15 Nat_0))
	(=>	(and (diseqNat_1 x_13 x_15)
			(x_0 x_12 i_0 j_0)
			(x_0 x_13 x_12 k_0)
			(x_3 x_14 j_0 k_0)
			(x_0 x_15 i_0 x_14))
		false)))
(check-sat)
