(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_40 Nat_1) (x_39 Nat_1))
	(=> (= x_40 (S_0 x_39))
	    (unS_1 x_39 x_40))))
(assert (isZ_0 Z_0))
(assert (forall ((x_41 Nat_1))
	(isS_0 (S_0 x_41))))
(assert (forall ((x_42 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_42))))
(assert (forall ((x_43 Nat_1))
	(diseqNat_0 (S_0 x_43) Z_0)))
(assert (forall ((x_44 Nat_1) (x_45 Nat_1))
	(=> (diseqNat_0 x_44 x_45)
	    (diseqNat_0 (S_0 x_44) (S_0 x_45)))))
(declare-fun add_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_6 Nat_1))
	(add_1 y_6 Z_0 y_6)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (add_1 r_0 x_37 y_6)
	    (add_1 (S_0 r_0) (S_0 x_37) y_6))))
(assert (forall ((y_6 Nat_1))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_37 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_37) y_6))))
(assert (forall ((y_6 Nat_1))
	(le_0 Z_0 y_6)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (le_0 x_37 y_6)
	    (le_0 (S_0 x_37) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (ge_0 x_37 y_6)
	    (ge_0 (S_0 x_37) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_37 y_6)
	    (lt_0 (S_0 x_37) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (gt_0 x_37 y_6)
	    (gt_0 (S_0 x_37) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (mult_0 r_0 x_37 y_6)
			(add_1 z_5 r_0 y_6))
		(mult_0 z_5 (S_0 x_37) y_6))))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_37 y_6)
	    (div_0 Z_0 x_37 y_6))))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_37 y_6)
			(minus_0 z_5 x_37 y_6)
			(div_0 r_0 z_5 y_6))
		(div_0 (S_0 r_0) x_37 y_6))))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_37 y_6)
	    (mod_0 x_37 x_37 y_6))))
(assert (forall ((x_37 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_37 y_6)
			(minus_0 z_5 x_37 y_6)
			(mod_0 r_0 z_5 y_6))
		(mod_0 r_0 x_37 y_6))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_48 Nat_0) (x_47 Nat_0))
	(=> (= x_48 (succ_0 x_47))
	    (p_1 x_47 x_48))))
(assert (iszero_0 zero_0))
(assert (forall ((x_49 Nat_0))
	(issucc_0 (succ_0 x_49))))
(assert (forall ((x_50 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_50))))
(assert (forall ((x_51 Nat_0))
	(diseqNat_1 (succ_0 x_51) zero_0)))
(assert (forall ((x_52 Nat_0) (x_53 Nat_0))
	(=> (diseqNat_1 x_52 x_53)
	    (diseqNat_1 (succ_0 x_52) (succ_0 x_53)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_12 Nat_0) (x_13 Nat_0))
	(=>	(and (= x_12 (succ_0 x_13))
			(plus_0 x_13 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_12 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_14 Nat_0))
	(=>	(and (= x_14 y_0)
			(= x_0 zero_0))
		(plus_0 x_14 x_0 y_0))))
(declare-fun addacc_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_15 Nat_0) (x_16 Nat_0))
	(=>	(and (= x_15 x_16)
			(addacc_0 x_16 x_2 (succ_0 y_1) z_1)
			(= x_1 (succ_0 x_2)))
		(addacc_0 x_15 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_17 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_17 x_18)
			(addacc_0 x_18 zero_0 x_3 (succ_0 z_1))
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(addacc_0 x_17 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_19 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(addacc_0 x_19 x_1 y_1 z_1))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_20 x_22)
			(add_0 x_21 x_5 y_2 z_2)
			(plus_0 x_22 (succ_0 zero_0) x_21)
			(= x_4 (succ_0 x_5)))
		(add_0 x_20 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_6 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0))
	(=>	(and (= x_23 x_25)
			(add_0 x_24 zero_0 x_6 z_2)
			(plus_0 x_25 (succ_0 zero_0) x_24)
			(= x_4 zero_0)
			(= y_2 (succ_0 x_6)))
		(add_0 x_23 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_26 Nat_0))
	(=>	(and (= x_26 z_2)
			(= x_4 zero_0)
			(= y_2 zero_0))
		(add_0 x_26 x_4 y_2 z_2))))
(assert (forall ((x_7 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_27 Nat_0) (x_28 Nat_0))
	(=>	(and (diseqNat_1 x_27 x_28)
			(add_0 x_27 x_7 y_3 z_3)
			(addacc_0 x_28 x_7 y_3 z_3))
		false)))
(assert (forall ((x_8 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0))
	(=>	(and (diseqNat_1 x_30 x_32)
			(plus_0 x_29 y_4 z_4)
			(plus_0 x_30 x_8 x_29)
			(plus_0 x_31 x_8 y_4)
			(plus_0 x_32 x_31 z_4))
		false)))
(assert (forall ((x_9 Nat_0) (y_5 Nat_0) (x_33 Nat_0) (x_34 Nat_0))
	(=>	(and (diseqNat_1 x_33 x_34)
			(plus_0 x_33 x_9 y_5)
			(plus_0 x_34 y_5 x_9))
		false)))
(assert (forall ((x_10 Nat_0) (x_35 Nat_0))
	(=>	(and (diseqNat_1 x_35 x_10)
			(plus_0 x_35 x_10 zero_0))
		false)))
(assert (forall ((x_11 Nat_0) (x_36 Nat_0))
	(=>	(and (diseqNat_1 x_36 x_11)
			(plus_0 x_36 zero_0 x_11))
		false)))
(check-sat)