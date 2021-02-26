(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_14 Nat_1) (x_13 Nat_1))
	(=> (= x_14 (S_0 x_13))
	    (unS_1 x_13 x_14))))
(assert (isZ_0 Z_0))
(assert (forall ((x_15 Nat_1))
	(isS_0 (S_0 x_15))))
(assert (forall ((x_16 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_16))))
(assert (forall ((x_17 Nat_1))
	(diseqNat_0 (S_0 x_17) Z_0)))
(assert (forall ((x_18 Nat_1) (x_19 Nat_1))
	(=> (diseqNat_0 x_18 x_19)
	    (diseqNat_0 (S_0 x_18) (S_0 x_19)))))
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
	(add_0 y_2 Z_0 y_2)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_11 y_2)
	    (add_0 (S_0 r_0) (S_0 x_11) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_11 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_11) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_0 y_2)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_11 y_2)
	    (le_0 (S_0 x_11) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_11 y_2)
	    (ge_0 (S_0 x_11) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_11 y_2)
	    (lt_0 (S_0 x_11) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_11 y_2)
	    (gt_0 (S_0 x_11) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (mult_0 r_0 x_11 y_2)
			(add_0 z_1 r_0 y_2))
		(mult_0 z_1 (S_0 x_11) y_2))))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_11 y_2)
	    (div_0 Z_0 x_11 y_2))))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_11 y_2)
			(minus_0 z_1 x_11 y_2)
			(div_0 r_0 z_1 y_2))
		(div_0 (S_0 r_0) x_11 y_2))))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_11 y_2)
	    (mod_0 x_11 x_11 y_2))))
(assert (forall ((x_11 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_11 y_2)
			(minus_0 z_1 x_11 y_2)
			(mod_0 r_0 z_1 y_2))
		(mod_0 r_0 x_11 y_2))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_22 Nat_0) (x_21 Nat_0))
	(=> (= x_22 (succ_0 x_21))
	    (p_1 x_21 x_22))))
(assert (iszero_0 zero_0))
(assert (forall ((x_23 Nat_0))
	(issucc_0 (succ_0 x_23))))
(assert (forall ((x_24 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_24))))
(assert (forall ((x_25 Nat_0))
	(diseqNat_1 (succ_0 x_25) zero_0)))
(assert (forall ((x_26 Nat_0) (x_27 Nat_0))
	(=> (diseqNat_1 x_26 x_27)
	    (diseqNat_1 (succ_0 x_26) (succ_0 x_27)))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_4 Bool) (x_5 Bool))
	(=>	(and (= x_4 x_5)
			(leq_0 x_5 z_0 x_1)
			(= x_0 (succ_0 z_0))
			(= y_0 (succ_0 x_1)))
		(leq_0 x_4 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_6 Bool))
	(=>	(and (= x_6 false)
			(= x_0 (succ_0 z_0))
			(= y_0 zero_0))
		(leq_0 x_6 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_7 Bool))
	(=>	(and (= x_7 true)
			(= x_0 zero_0))
		(leq_0 x_7 x_0 y_0))))
(declare-fun geq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_8 Bool) (x_9 Bool))
	(=>	(and (= x_8 x_9)
			(leq_0 x_9 y_1 x_2))
		(geq_0 x_8 x_2 y_1))))
(assert (forall ((x_3 Nat_0) (x_10 Bool))
	(=>	(and (= x_10 false)
			(geq_0 x_10 x_3 x_3))
		false)))
(check-sat)
