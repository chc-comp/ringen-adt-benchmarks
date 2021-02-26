(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_29 Nat_1) (x_28 Nat_1))
	(=> (= x_29 (S_0 x_28))
	    (unS_1 x_28 x_29))))
(assert (isZ_0 Z_0))
(assert (forall ((x_30 Nat_1))
	(isS_0 (S_0 x_30))))
(assert (forall ((x_31 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_31))))
(assert (forall ((x_32 Nat_1))
	(diseqNat_0 (S_0 x_32) Z_0)))
(assert (forall ((x_33 Nat_1) (x_34 Nat_1))
	(=> (diseqNat_0 x_33 x_34)
	    (diseqNat_0 (S_0 x_33) (S_0 x_34)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_5 Nat_1))
	(add_0 y_5 Z_0 y_5)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_26 y_5)
	    (add_0 (S_0 r_0) (S_0 x_26) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_0 Z_0 y_5)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_26 y_5)
	    (minus_0 (S_0 r_0) (S_0 x_26) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_0 y_5)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_26 y_5)
	    (le_0 (S_0 x_26) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_0)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_26 y_5)
	    (ge_0 (S_0 x_26) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_0 (S_0 y_5))))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_26 y_5)
	    (lt_0 (S_0 x_26) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_0 y_5) Z_0)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_26 y_5)
	    (gt_0 (S_0 x_26) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_0 Z_0 y_5)))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_26 y_5)
			(add_0 z_3 r_0 y_5))
		(mult_0 z_3 (S_0 x_26) y_5))))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_26 y_5)
	    (div_0 Z_0 x_26 y_5))))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_26 y_5)
			(minus_0 z_3 x_26 y_5)
			(div_0 r_0 z_3 y_5))
		(div_0 (S_0 r_0) x_26 y_5))))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_26 y_5)
	    (mod_0 x_26 x_26 y_5))))
(assert (forall ((x_26 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_26 y_5)
			(minus_0 z_3 x_26 y_5)
			(mod_0 r_0 z_3 y_5))
		(mod_0 r_0 x_26 y_5))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_37 Nat_0) (x_36 Nat_0))
	(=> (= x_37 (succ_0 x_36))
	    (p_1 x_36 x_37))))
(assert (iszero_0 zero_0))
(assert (forall ((x_38 Nat_0))
	(issucc_0 (succ_0 x_38))))
(assert (forall ((x_39 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_39))))
(assert (forall ((x_40 Nat_0))
	(diseqNat_1 (succ_0 x_40) zero_0)))
(assert (forall ((x_41 Nat_0) (x_42 Nat_0))
	(=> (diseqNat_1 x_41 x_42)
	    (diseqNat_1 (succ_0 x_41) (succ_0 x_42)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_46 list_0) (x_44 Nat_0) (x_45 list_0))
	(=> (= x_46 (cons_0 x_44 x_45))
	    (head_1 x_44 x_46))))
(assert (forall ((x_46 list_0) (x_44 Nat_0) (x_45 list_0))
	(=> (= x_46 (cons_0 x_44 x_45))
	    (tail_1 x_45 x_46))))
(assert (isnil_0 nil_0))
(assert (forall ((x_47 Nat_0) (x_48 list_0))
	(iscons_0 (cons_0 x_47 x_48))))
(assert (forall ((x_49 Nat_0) (x_50 list_0))
	(diseqlist_0 nil_0 (cons_0 x_49 x_50))))
(assert (forall ((x_51 Nat_0) (x_52 list_0))
	(diseqlist_0 (cons_0 x_51 x_52) nil_0)))
(assert (forall ((x_53 Nat_0) (x_54 list_0) (x_55 Nat_0) (x_56 list_0))
	(=> (diseqNat_1 x_53 x_55)
	    (diseqlist_0 (cons_0 x_53 x_54) (cons_0 x_55 x_56)))))
(assert (forall ((x_53 Nat_0) (x_54 list_0) (x_55 Nat_0) (x_56 list_0))
	(=> (diseqlist_0 x_54 x_56)
	    (diseqlist_0 (cons_0 x_53 x_54) (cons_0 x_55 x_56)))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_5 Bool) (x_6 Bool))
	(=>	(and (= x_5 x_6)
			(leq_0 x_6 z_0 x_1)
			(= x_0 (succ_0 z_0))
			(= y_0 (succ_0 x_1)))
		(leq_0 x_5 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_7 Bool))
	(=>	(and (= x_7 false)
			(= x_0 (succ_0 z_0))
			(= y_0 zero_0))
		(leq_0 x_7 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_8 Bool))
	(=>	(and (= x_8 true)
			(= x_0 zero_0))
		(leq_0 x_8 x_0 y_0))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 Nat_0) (z_1 list_0) (y_2 Nat_0) (xs_0 list_0) (x_9 Bool) (x_10 Bool) (x_11 Bool))
	(=>	(and (= x_9 (and x_10 x_11))
			(leq_0 x_10 y_1 y_2)
			(ordered_0 x_11 (cons_0 y_2 xs_0))
			(= x_2 (cons_0 y_1 z_1))
			(= z_1 (cons_0 y_2 xs_0)))
		(ordered_0 x_9 x_2))))
(assert (forall ((x_2 list_0) (y_1 Nat_0) (z_1 list_0) (x_12 Bool))
	(=>	(and (= x_12 true)
			(= x_2 (cons_0 y_1 z_1))
			(= z_1 nil_0))
		(ordered_0 x_12 x_2))))
(assert (forall ((x_2 list_0) (x_13 Bool))
	(=>	(and (= x_13 true)
			(= x_2 nil_0))
		(ordered_0 x_13 x_2))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_3 list_0) (z_2 Nat_0) (xs_1 list_0) (x_15 list_0) (x_14 Bool))
	(=>	(and (= x_15 (cons_0 x_3 (cons_0 z_2 xs_1)))
			(= y_3 (cons_0 z_2 xs_1))
			(= x_14 true)
			(leq_0 x_14 x_3 z_2))
		(insert_0 x_15 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 list_0) (z_2 Nat_0) (xs_1 list_0) (x_17 list_0) (x_18 list_0) (x_16 Bool))
	(=>	(and (= x_17 (cons_0 z_2 x_18))
			(insert_0 x_18 x_3 xs_1)
			(= y_3 (cons_0 z_2 xs_1))
			(= x_16 false)
			(leq_0 x_16 x_3 z_2))
		(insert_0 x_17 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 list_0) (x_19 list_0))
	(=>	(and (= x_19 (cons_0 x_3 nil_0))
			(= y_3 nil_0))
		(insert_0 x_19 x_3 y_3))))
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (forall ((x_4 list_0) (y_4 Nat_0) (xs_2 list_0) (x_20 list_0) (x_21 list_0) (x_22 list_0))
	(=>	(and (= x_20 x_22)
			(isort_0 x_21 xs_2)
			(insert_0 x_22 y_4 x_21)
			(= x_4 (cons_0 y_4 xs_2)))
		(isort_0 x_20 x_4))))
(assert (forall ((x_4 list_0) (x_23 list_0))
	(=>	(and (= x_23 nil_0)
			(= x_4 nil_0))
		(isort_0 x_23 x_4))))
(assert (forall ((xs_3 list_0) (x_24 list_0) (x_25 Bool))
	(=>	(and (= x_25 false)
			(isort_0 x_24 xs_3)
			(ordered_0 x_25 x_24))
		false)))
(check-sat)
