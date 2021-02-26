(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_38 Nat_1) (x_37 Nat_1))
	(=> (= x_38 (S_0 x_37))
	    (unS_1 x_37 x_38))))
(assert (isZ_0 Z_0))
(assert (forall ((x_39 Nat_1))
	(isS_0 (S_0 x_39))))
(assert (forall ((x_40 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_40))))
(assert (forall ((x_41 Nat_1))
	(diseqNat_0 (S_0 x_41) Z_0)))
(assert (forall ((x_42 Nat_1) (x_43 Nat_1))
	(=> (diseqNat_0 x_42 x_43)
	    (diseqNat_0 (S_0 x_42) (S_0 x_43)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_6 Nat_1))
	(add_0 y_6 Z_0 y_6)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_35 y_6)
	    (add_0 (S_0 r_0) (S_0 x_35) y_6))))
(assert (forall ((y_6 Nat_1))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_35 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_35) y_6))))
(assert (forall ((y_6 Nat_1))
	(le_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (le_0 x_35 y_6)
	    (le_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (ge_0 x_35 y_6)
	    (ge_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_35 y_6)
	    (lt_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (gt_0 x_35 y_6)
	    (gt_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_35 y_6)
			(add_0 z_4 r_0 y_6))
		(mult_0 z_4 (S_0 x_35) y_6))))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_35 y_6)
	    (div_0 Z_0 x_35 y_6))))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_35 y_6)
			(minus_0 z_4 x_35 y_6)
			(div_0 r_0 z_4 y_6))
		(div_0 (S_0 r_0) x_35 y_6))))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_35 y_6)
	    (mod_0 x_35 x_35 y_6))))
(assert (forall ((x_35 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_35 y_6)
			(minus_0 z_4 x_35 y_6)
			(mod_0 r_0 z_4 y_6))
		(mod_0 r_0 x_35 y_6))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_46 Nat_0) (x_45 Nat_0))
	(=> (= x_46 (succ_0 x_45))
	    (p_1 x_45 x_46))))
(assert (iszero_0 zero_0))
(assert (forall ((x_47 Nat_0))
	(issucc_0 (succ_0 x_47))))
(assert (forall ((x_48 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_48))))
(assert (forall ((x_49 Nat_0))
	(diseqNat_1 (succ_0 x_49) zero_0)))
(assert (forall ((x_50 Nat_0) (x_51 Nat_0))
	(=> (diseqNat_1 x_50 x_51)
	    (diseqNat_1 (succ_0 x_50) (succ_0 x_51)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_11 Nat_0) (x_12 Nat_0))
	(=>	(and (= x_11 (succ_0 x_12))
			(plus_0 x_12 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_11 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_13 Nat_0))
	(=>	(and (= x_13 y_0)
			(= x_0 zero_0))
		(plus_0 x_13 x_0 y_0))))
(declare-fun addacc_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_14 Nat_0) (x_15 Nat_0))
	(=>	(and (= x_14 x_15)
			(addacc_0 x_15 x_2 (succ_0 y_1) z_1)
			(= x_1 (succ_0 x_2)))
		(addacc_0 x_14 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_16 Nat_0) (x_17 Nat_0))
	(=>	(and (= x_16 x_17)
			(addacc_0 x_17 zero_0 x_3 (succ_0 z_1))
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(addacc_0 x_16 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_18 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(addacc_0 x_18 x_1 y_1 z_1))))
(declare-fun mul_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_19 x_22)
			(mul_0 x_20 z_2 x_5)
			(addacc_0 x_21 z_2 x_5 x_20)
			(plus_0 x_22 (succ_0 zero_0) x_21)
			(= x_4 (succ_0 z_2))
			(= y_2 (succ_0 x_5)))
		(mul_0 x_19 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_23 Nat_0))
	(=>	(and (= x_23 zero_0)
			(= x_4 (succ_0 z_2))
			(= y_2 zero_0))
		(mul_0 x_23 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (x_24 Nat_0))
	(=>	(and (= x_24 zero_0)
			(= x_4 zero_0))
		(mul_0 x_24 x_4 y_2))))
(assert (forall ((x_6 Nat_0) (y_3 Nat_0) (x_25 Nat_0) (x_26 Nat_0))
	(=>	(and (diseqNat_1 x_25 x_26)
			(mul_0 x_25 x_6 y_3)
			(mul_0 x_26 y_3 x_6))
		false)))
(assert (forall ((x_7 Nat_0) (y_4 Nat_0) (z_3 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_30 Nat_0))
	(=>	(and (diseqNat_1 x_28 x_30)
			(plus_0 x_27 y_4 z_3)
			(plus_0 x_28 x_7 x_27)
			(plus_0 x_29 x_7 y_4)
			(plus_0 x_30 x_29 z_3))
		false)))
(assert (forall ((x_8 Nat_0) (y_5 Nat_0) (x_31 Nat_0) (x_32 Nat_0))
	(=>	(and (diseqNat_1 x_31 x_32)
			(plus_0 x_31 x_8 y_5)
			(plus_0 x_32 y_5 x_8))
		false)))
(assert (forall ((x_9 Nat_0) (x_33 Nat_0))
	(=>	(and (diseqNat_1 x_33 x_9)
			(plus_0 x_33 x_9 zero_0))
		false)))
(assert (forall ((x_10 Nat_0) (x_34 Nat_0))
	(=>	(and (diseqNat_1 x_34 x_10)
			(plus_0 x_34 zero_0 x_10))
		false)))
(check-sat)
