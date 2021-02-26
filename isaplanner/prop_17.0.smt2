(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_20 Nat_1) (x_19 Nat_1))
	(=> (= x_20 (S_1 x_19))
	    (unS_1 x_19 x_20))))
(assert (isZ_0 Z_1))
(assert (forall ((x_21 Nat_1))
	(isS_0 (S_1 x_21))))
(assert (forall ((x_22 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_22))))
(assert (forall ((x_23 Nat_1))
	(diseqNat_0 (S_1 x_23) Z_1)))
(assert (forall ((x_24 Nat_1) (x_25 Nat_1))
	(=> (diseqNat_0 x_24 x_25)
	    (diseqNat_0 (S_1 x_24) (S_1 x_25)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_3 Nat_1))
	(add_0 y_3 Z_1 y_3)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_17 y_3)
	    (add_0 (S_1 r_0) (S_1 x_17) y_3))))
(assert (forall ((y_3 Nat_1))
	(minus_0 Z_1 Z_1 y_3)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_17 y_3)
	    (minus_0 (S_1 r_0) (S_1 x_17) y_3))))
(assert (forall ((y_3 Nat_1))
	(le_0 Z_1 y_3)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (le_0 x_17 y_3)
	    (le_0 (S_1 x_17) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(ge_0 y_3 Z_1)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (ge_0 x_17 y_3)
	    (ge_0 (S_1 x_17) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(lt_0 Z_1 (S_1 y_3))))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_17 y_3)
	    (lt_0 (S_1 x_17) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(gt_0 (S_1 y_3) Z_1)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (gt_0 x_17 y_3)
	    (gt_0 (S_1 x_17) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(mult_0 Z_1 Z_1 y_3)))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_17 y_3)
			(add_0 z_2 r_0 y_3))
		(mult_0 z_2 (S_1 x_17) y_3))))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_17 y_3)
	    (div_0 Z_1 x_17 y_3))))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_17 y_3)
			(minus_0 z_2 x_17 y_3)
			(div_0 r_0 z_2 y_3))
		(div_0 (S_1 r_0) x_17 y_3))))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_17 y_3)
	    (mod_0 x_17 x_17 y_3))))
(assert (forall ((x_17 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_17 y_3)
			(minus_0 z_2 x_17 y_3)
			(mod_0 r_0 z_2 y_3))
		(mod_0 r_0 x_17 y_3))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_28 Nat_0) (x_27 Nat_0))
	(=> (= x_28 (S_0 x_27))
	    (projS_1 x_27 x_28))))
(assert (isZ_1 Z_0))
(assert (forall ((x_29 Nat_0))
	(isS_1 (S_0 x_29))))
(assert (forall ((x_30 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_30))))
(assert (forall ((x_31 Nat_0))
	(diseqNat_1 (S_0 x_31) Z_0)))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0))
	(=> (diseqNat_1 x_32 x_33)
	    (diseqNat_1 (S_0 x_32) (S_0 x_33)))))
(declare-fun x_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (y_1 Nat_0) (x_6 Bool) (x_7 Bool))
	(=>	(and (= x_6 x_7)
			(x_0 x_7 x_2 y_1)
			(= x_1 (S_0 x_2))
			(= y_0 (S_0 y_1)))
		(x_0 x_6 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (x_8 Bool))
	(=>	(and (= x_8 false)
			(= x_1 (S_0 x_2))
			(= y_0 Z_0))
		(x_0 x_8 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_9 Bool))
	(=>	(and (= x_9 false)
			(= x_1 Z_0)
			(= y_0 (S_0 z_0)))
		(x_0 x_9 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_10 Bool))
	(=>	(and (= x_10 true)
			(= x_1 Z_0)
			(= y_0 Z_0))
		(x_0 x_10 x_1 y_0))))
(declare-fun x_3 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_1 Nat_0) (x_5 Nat_0) (x_11 Bool) (x_12 Bool))
	(=>	(and (= x_11 x_12)
			(x_3 x_12 z_1 x_5)
			(= x_4 (S_0 z_1))
			(= y_2 (S_0 x_5)))
		(x_3 x_11 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_1 Nat_0) (x_13 Bool))
	(=>	(and (= x_13 false)
			(= x_4 (S_0 z_1))
			(= y_2 Z_0))
		(x_3 x_13 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (x_14 Bool))
	(=>	(and (= x_14 true)
			(= x_4 Z_0))
		(x_3 x_14 x_4 y_2))))
(assert (forall ((n_0 Nat_0) (x_15 Bool) (x_16 Bool))
	(=>	(and (not (= x_15 x_16))
			(x_3 x_15 n_0 Z_0)
			(x_0 x_16 n_0 Z_0))
		false)))
(check-sat)