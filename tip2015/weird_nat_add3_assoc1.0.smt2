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
(declare-fun add_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_4 Nat_1))
	(add_1 y_4 Z_0 y_4)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1) (r_0 Nat_1))
	(=> (add_1 r_0 x_35 y_4)
	    (add_1 (S_0 r_0) (S_0 x_35) y_4))))
(assert (forall ((y_4 Nat_1))
	(minus_0 Z_0 Z_0 y_4)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_35 y_4)
	    (minus_0 (S_0 r_0) (S_0 x_35) y_4))))
(assert (forall ((y_4 Nat_1))
	(le_0 Z_0 y_4)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (le_0 x_35 y_4)
	    (le_0 (S_0 x_35) (S_0 y_4)))))
(assert (forall ((y_4 Nat_1))
	(ge_0 y_4 Z_0)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (ge_0 x_35 y_4)
	    (ge_0 (S_0 x_35) (S_0 y_4)))))
(assert (forall ((y_4 Nat_1))
	(lt_0 Z_0 (S_0 y_4))))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (lt_0 x_35 y_4)
	    (lt_0 (S_0 x_35) (S_0 y_4)))))
(assert (forall ((y_4 Nat_1))
	(gt_0 (S_0 y_4) Z_0)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (gt_0 x_35 y_4)
	    (gt_0 (S_0 x_35) (S_0 y_4)))))
(assert (forall ((y_4 Nat_1))
	(mult_0 Z_0 Z_0 y_4)))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_35 y_4)
			(add_1 z_3 r_0 y_4))
		(mult_0 z_3 (S_0 x_35) y_4))))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (lt_0 x_35 y_4)
	    (div_0 Z_0 x_35 y_4))))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_35 y_4)
			(minus_0 z_3 x_35 y_4)
			(div_0 r_0 z_3 y_4))
		(div_0 (S_0 r_0) x_35 y_4))))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1))
	(=> (lt_0 x_35 y_4)
	    (mod_0 x_35 x_35 y_4))))
(assert (forall ((x_35 Nat_1) (y_4 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_35 y_4)
			(minus_0 z_3 x_35 y_4)
			(mod_0 r_0 z_3 y_4))
		(mod_0 r_0 x_35 y_4))))
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
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_13 Nat_0) (x_14 Nat_0))
	(=>	(and (= x_13 (succ_0 x_14))
			(plus_0 x_14 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_13 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_15 Nat_0))
	(=>	(and (= x_15 y_0)
			(= x_0 zero_0))
		(plus_0 x_15 x_0 y_0))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_16 Nat_0) (x_17 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_16 x_18)
			(add_0 x_17 x_2 y_1 z_1)
			(plus_0 x_18 (succ_0 zero_0) x_17)
			(= x_1 (succ_0 x_2)))
		(add_0 x_16 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 Nat_0))
	(=>	(and (= x_19 x_21)
			(add_0 x_20 zero_0 x_3 z_1)
			(plus_0 x_21 (succ_0 zero_0) x_20)
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(add_0 x_19 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_22 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(add_0 x_22 x_1 y_1 z_1))))
(assert (forall ((x_4 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (x_8 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0))
	(=>	(and (diseqNat_1 x_24 x_26)
			(add_0 x_23 x_4 x_5 x_6)
			(add_0 x_24 x_23 x_7 x_8)
			(add_0 x_25 x_6 x_7 x_8)
			(add_0 x_26 x_4 x_5 x_25))
		false)))
(assert (forall ((x_9 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_30 Nat_0))
	(=>	(and (diseqNat_1 x_28 x_30)
			(plus_0 x_27 y_2 z_2)
			(plus_0 x_28 x_9 x_27)
			(plus_0 x_29 x_9 y_2)
			(plus_0 x_30 x_29 z_2))
		false)))
(assert (forall ((x_10 Nat_0) (y_3 Nat_0) (x_31 Nat_0) (x_32 Nat_0))
	(=>	(and (diseqNat_1 x_31 x_32)
			(plus_0 x_31 x_10 y_3)
			(plus_0 x_32 y_3 x_10))
		false)))
(assert (forall ((x_11 Nat_0) (x_33 Nat_0))
	(=>	(and (diseqNat_1 x_33 x_11)
			(plus_0 x_33 x_11 zero_0))
		false)))
(assert (forall ((x_12 Nat_0) (x_34 Nat_0))
	(=>	(and (diseqNat_1 x_34 x_12)
			(plus_0 x_34 zero_0 x_12))
		false)))
(check-sat)