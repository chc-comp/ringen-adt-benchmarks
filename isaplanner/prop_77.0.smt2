(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_32 Nat_1) (x_31 Nat_1))
	(=> (= x_32 (S_1 x_31))
	    (unS_1 x_31 x_32))))
(assert (isZ_0 Z_1))
(assert (forall ((x_33 Nat_1))
	(isS_0 (S_1 x_33))))
(assert (forall ((x_34 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_34))))
(assert (forall ((x_35 Nat_1))
	(diseqNat_0 (S_1 x_35) Z_1)))
(assert (forall ((x_36 Nat_1) (x_37 Nat_1))
	(=> (diseqNat_0 x_36 x_37)
	    (diseqNat_0 (S_1 x_36) (S_1 x_37)))))
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
	(add_0 y_5 Z_1 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_29 y_5)
	    (add_0 (S_1 r_0) (S_1 x_29) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_1 Z_1 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_29 y_5)
	    (minus_0 (S_1 r_0) (S_1 x_29) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_1 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_29 y_5)
	    (le_0 (S_1 x_29) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_1)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_29 y_5)
	    (ge_0 (S_1 x_29) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_1 (S_1 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (lt_0 (S_1 x_29) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_1 y_5) Z_1)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_29 y_5)
	    (gt_0 (S_1 x_29) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_1 Z_1 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_29 y_5)
			(add_0 z_3 r_0 y_5))
		(mult_0 z_3 (S_1 x_29) y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (div_0 Z_1 x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_29 y_5)
			(minus_0 z_3 x_29 y_5)
			(div_0 r_0 z_3 y_5))
		(div_0 (S_1 r_0) x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (mod_0 x_29 x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_29 y_5)
			(minus_0 z_3 x_29 y_5)
			(mod_0 r_0 z_3 y_5))
		(mod_0 r_0 x_29 y_5))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_40 Nat_0) (x_39 Nat_0))
	(=> (= x_40 (S_0 x_39))
	    (projS_1 x_39 x_40))))
(assert (isZ_1 Z_0))
(assert (forall ((x_41 Nat_0))
	(isS_1 (S_0 x_41))))
(assert (forall ((x_42 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_42))))
(assert (forall ((x_43 Nat_0))
	(diseqNat_1 (S_0 x_43) Z_0)))
(assert (forall ((x_44 Nat_0) (x_45 Nat_0))
	(=> (diseqNat_1 x_44 x_45)
	    (diseqNat_1 (S_0 x_44) (S_0 x_45)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_49 list_0) (x_47 Nat_0) (x_48 list_0))
	(=> (= x_49 (cons_0 x_47 x_48))
	    (head_1 x_47 x_49))))
(assert (forall ((x_49 list_0) (x_47 Nat_0) (x_48 list_0))
	(=> (= x_49 (cons_0 x_47 x_48))
	    (tail_1 x_48 x_49))))
(assert (isnil_0 nil_0))
(assert (forall ((x_50 Nat_0) (x_51 list_0))
	(iscons_0 (cons_0 x_50 x_51))))
(assert (forall ((x_52 Nat_0) (x_53 list_0))
	(diseqlist_0 nil_0 (cons_0 x_52 x_53))))
(assert (forall ((x_54 Nat_0) (x_55 list_0))
	(diseqlist_0 (cons_0 x_54 x_55) nil_0)))
(assert (forall ((x_56 Nat_0) (x_57 list_0) (x_58 Nat_0) (x_59 list_0))
	(=> (diseqNat_1 x_56 x_58)
	    (diseqlist_0 (cons_0 x_56 x_57) (cons_0 x_58 x_59)))))
(assert (forall ((x_56 Nat_0) (x_57 list_0) (x_58 Nat_0) (x_59 list_0))
	(=> (diseqlist_0 x_57 x_59)
	    (diseqlist_0 (cons_0 x_56 x_57) (cons_0 x_58 x_59)))))
(declare-fun x_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_2 Nat_0) (x_8 Bool) (x_9 Bool))
	(=>	(and (= x_8 x_9)
			(x_0 x_9 z_0 x_2)
			(= x_1 (S_0 z_0))
			(= y_0 (S_0 x_2)))
		(x_0 x_8 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_10 Bool))
	(=>	(and (= x_10 false)
			(= x_1 (S_0 z_0))
			(= y_0 Z_0))
		(x_0 x_10 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_11 Bool))
	(=>	(and (= x_11 true)
			(= x_1 Z_0))
		(x_0 x_11 x_1 y_0))))
(declare-fun insort_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_1 list_0) (z_1 Nat_0) (xs_0 list_0) (x_13 list_0) (x_12 Bool))
	(=>	(and (= x_13 (cons_0 x_3 (cons_0 z_1 xs_0)))
			(= y_1 (cons_0 z_1 xs_0))
			(= x_12 true)
			(x_0 x_12 x_3 z_1))
		(insort_0 x_13 x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 list_0) (z_1 Nat_0) (xs_0 list_0) (x_15 list_0) (x_16 list_0) (x_14 Bool))
	(=>	(and (= x_15 (cons_0 z_1 x_16))
			(insort_0 x_16 x_3 xs_0)
			(= y_1 (cons_0 z_1 xs_0))
			(= x_14 false)
			(x_0 x_14 x_3 z_1))
		(insort_0 x_15 x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 list_0) (x_17 list_0))
	(=>	(and (= x_17 (cons_0 x_3 nil_0))
			(= y_1 nil_0))
		(insort_0 x_17 x_3 y_1))))
(declare-fun x_4 (Bool Bool Bool) Bool)
(assert (forall ((x_5 Bool) (y_2 Bool) (x_18 Bool))
	(=>	(and (= x_18 y_2)
			x_5)
		(x_4 x_18 x_5 y_2))))
(assert (forall ((x_5 Bool) (y_2 Bool) (x_19 Bool))
	(=>	(and (= x_19 false)
			(not x_5))
		(x_4 x_19 x_5 y_2))))
(declare-fun sorted_0 (Bool list_0) Bool)
(assert (forall ((x_6 list_0) (y_3 Nat_0) (z_2 list_0) (y_4 Nat_0) (ys_0 list_0) (x_20 Bool) (x_21 Bool) (x_22 Bool) (x_23 Bool))
	(=>	(and (= x_20 x_23)
			(x_0 x_21 y_3 y_4)
			(sorted_0 x_22 (cons_0 y_4 ys_0))
			(x_4 x_23 x_21 x_22)
			(= x_6 (cons_0 y_3 z_2))
			(= z_2 (cons_0 y_4 ys_0)))
		(sorted_0 x_20 x_6))))
(assert (forall ((x_6 list_0) (y_3 Nat_0) (z_2 list_0) (x_24 Bool))
	(=>	(and (= x_24 true)
			(= x_6 (cons_0 y_3 z_2))
			(= z_2 nil_0))
		(sorted_0 x_24 x_6))))
(assert (forall ((x_6 list_0) (x_25 Bool))
	(=>	(and (= x_25 true)
			(= x_6 nil_0))
		(sorted_0 x_25 x_6))))
(assert (forall ((x_7 Nat_0) (xs_1 list_0) (x_26 list_0) (x_27 Bool) (x_28 Bool))
	(=>	(and (= x_27 false)
			(= x_28 true)
			(insort_0 x_26 x_7 xs_1)
			(sorted_0 x_27 x_26)
			(sorted_0 x_28 xs_1))
		false)))
(check-sat)