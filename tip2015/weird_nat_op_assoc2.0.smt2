(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_17 Nat_1) (x_16 Nat_1))
	(=> (= x_17 (S_0 x_16))
	    (unS_1 x_16 x_17))))
(assert (isZ_0 Z_0))
(assert (forall ((x_18 Nat_1))
	(isS_0 (S_0 x_18))))
(assert (forall ((x_19 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_19))))
(assert (forall ((x_20 Nat_1))
	(diseqNat_0 (S_0 x_20) Z_0)))
(assert (forall ((x_21 Nat_1) (x_22 Nat_1))
	(=> (diseqNat_0 x_21 x_22)
	    (diseqNat_0 (S_0 x_21) (S_0 x_22)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_1 Nat_1))
	(add_0 y_1 Z_0 y_1)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_14 y_1)
	    (add_0 (S_0 r_0) (S_0 x_14) y_1))))
(assert (forall ((y_1 Nat_1))
	(minus_0 Z_0 Z_0 y_1)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_14 y_1)
	    (minus_0 (S_0 r_0) (S_0 x_14) y_1))))
(assert (forall ((y_1 Nat_1))
	(le_0 Z_0 y_1)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (le_0 x_14 y_1)
	    (le_0 (S_0 x_14) (S_0 y_1)))))
(assert (forall ((y_1 Nat_1))
	(ge_0 y_1 Z_0)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (ge_0 x_14 y_1)
	    (ge_0 (S_0 x_14) (S_0 y_1)))))
(assert (forall ((y_1 Nat_1))
	(lt_0 Z_0 (S_0 y_1))))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_14 y_1)
	    (lt_0 (S_0 x_14) (S_0 y_1)))))
(assert (forall ((y_1 Nat_1))
	(gt_0 (S_0 y_1) Z_0)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (gt_0 x_14 y_1)
	    (gt_0 (S_0 x_14) (S_0 y_1)))))
(assert (forall ((y_1 Nat_1))
	(mult_0 Z_0 Z_0 y_1)))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (mult_0 r_0 x_14 y_1)
			(add_0 z_1 r_0 y_1))
		(mult_0 z_1 (S_0 x_14) y_1))))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_14 y_1)
	    (div_0 Z_0 x_14 y_1))))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_14 y_1)
			(minus_0 z_1 x_14 y_1)
			(div_0 r_0 z_1 y_1))
		(div_0 (S_0 r_0) x_14 y_1))))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_14 y_1)
	    (mod_0 x_14 x_14 y_1))))
(assert (forall ((x_14 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_14 y_1)
			(minus_0 z_1 x_14 y_1)
			(mod_0 r_0 z_1 y_1))
		(mod_0 r_0 x_14 y_1))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_25 Nat_0) (x_24 Nat_0))
	(=> (= x_25 (succ_0 x_24))
	    (p_1 x_24 x_25))))
(assert (iszero_0 zero_0))
(assert (forall ((x_26 Nat_0))
	(issucc_0 (succ_0 x_26))))
(assert (forall ((x_27 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_27))))
(assert (forall ((x_28 Nat_0))
	(diseqNat_1 (succ_0 x_28) zero_0)))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0))
	(=> (diseqNat_1 x_29 x_30)
	    (diseqNat_1 (succ_0 x_29) (succ_0 x_30)))))
(declare-fun op_0 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0))
	(=>	(and (= x_5 x_6)
			(op_0 x_6 x_0 y_0 x_2 (succ_0 x_1))
			(= z_0 (succ_0 x_2)))
		(op_0 x_5 x_0 y_0 z_0 x_1))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_3 Nat_0) (x_7 Nat_0) (x_8 Nat_0))
	(=>	(and (= x_7 x_8)
			(op_0 x_8 x_3 y_0 y_0 x_1)
			(= z_0 zero_0)
			(= x_0 (succ_0 x_3)))
		(op_0 x_7 x_0 y_0 z_0 x_1))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_9 Nat_0))
	(=>	(and (= x_9 x_1)
			(= z_0 zero_0)
			(= x_0 zero_0))
		(op_0 x_9 x_0 y_0 z_0 x_1))))
(assert (forall ((x_4 Nat_0) (a_0 Nat_0) (b_0 Nat_0) (c_0 Nat_0) (d_0 Nat_0) (x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_13 Nat_0))
	(=>	(and (diseqNat_1 x_11 x_13)
			(op_0 x_10 x_4 a_0 a_0 a_0)
			(op_0 x_11 x_10 b_0 c_0 d_0)
			(op_0 x_12 b_0 x_4 b_0 b_0)
			(op_0 x_13 a_0 x_12 c_0 d_0))
		false)))
(check-sat)
