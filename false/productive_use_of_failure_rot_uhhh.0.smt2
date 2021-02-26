(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_26 Nat_1) (x_25 Nat_1))
	(=> (= x_26 (S_1 x_25))
	    (unS_1 x_25 x_26))))
(assert (isZ_0 Z_1))
(assert (forall ((x_27 Nat_1))
	(isS_0 (S_1 x_27))))
(assert (forall ((x_28 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_28))))
(assert (forall ((x_29 Nat_1))
	(diseqNat_0 (S_1 x_29) Z_1)))
(assert (forall ((x_30 Nat_1) (x_31 Nat_1))
	(=> (diseqNat_0 x_30 x_31)
	    (diseqNat_0 (S_1 x_30) (S_1 x_31)))))
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
(assert (forall ((x_23 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_23 y_3)
	    (add_0 (S_1 r_0) (S_1 x_23) y_3))))
(assert (forall ((y_3 Nat_1))
	(minus_0 Z_1 Z_1 y_3)))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_23 y_3)
	    (minus_0 (S_1 r_0) (S_1 x_23) y_3))))
(assert (forall ((y_3 Nat_1))
	(le_0 Z_1 y_3)))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (le_0 x_23 y_3)
	    (le_0 (S_1 x_23) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(ge_0 y_3 Z_1)))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (ge_0 x_23 y_3)
	    (ge_0 (S_1 x_23) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(lt_0 Z_1 (S_1 y_3))))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_23 y_3)
	    (lt_0 (S_1 x_23) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(gt_0 (S_1 y_3) Z_1)))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (gt_0 x_23 y_3)
	    (gt_0 (S_1 x_23) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(mult_0 Z_1 Z_1 y_3)))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_23 y_3)
			(add_0 z_2 r_0 y_3))
		(mult_0 z_2 (S_1 x_23) y_3))))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_23 y_3)
	    (div_0 Z_1 x_23 y_3))))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_23 y_3)
			(minus_0 z_2 x_23 y_3)
			(div_0 r_0 z_2 y_3))
		(div_0 (S_1 r_0) x_23 y_3))))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_23 y_3)
	    (mod_0 x_23 x_23 y_3))))
(assert (forall ((x_23 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_23 y_3)
			(minus_0 z_2 x_23 y_3)
			(mod_0 r_0 z_2 y_3))
		(mod_0 r_0 x_23 y_3))))
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(assert (forall ((x_33 Nat_0) (x_32 Nat_0))
	(=> (= x_33 (S_0 x_32))
	    (projS_1 x_32 x_33))))
(assert (forall ((x_35 Nat_0))
	(isS_1 (S_0 x_35))))
(assert (isZ_1 Z_0))
(assert (forall ((x_36 Nat_0))
	(diseqNat_1 (S_0 x_36) Z_0)))
(assert (forall ((x_37 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_37))))
(assert (forall ((x_38 Nat_0) (x_39 Nat_0))
	(=> (diseqNat_1 x_38 x_39)
	    (diseqNat_1 (S_0 x_38) (S_0 x_39)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_43 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (= x_43 (cons_0 x_41 x_42))
	    (head_1 x_41 x_43))))
(assert (forall ((x_43 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (= x_43 (cons_0 x_41 x_42))
	    (tail_1 x_42 x_43))))
(assert (isnil_0 nil_0))
(assert (forall ((x_44 Nat_0) (x_45 list_0))
	(iscons_0 (cons_0 x_44 x_45))))
(assert (forall ((x_46 Nat_0) (x_47 list_0))
	(diseqlist_0 nil_0 (cons_0 x_46 x_47))))
(assert (forall ((x_48 Nat_0) (x_49 list_0))
	(diseqlist_0 (cons_0 x_48 x_49) nil_0)))
(assert (forall ((x_50 Nat_0) (x_51 list_0) (x_52 Nat_0) (x_53 list_0))
	(=> (diseqNat_1 x_50 x_52)
	    (diseqlist_0 (cons_0 x_50 x_51) (cons_0 x_52 x_53)))))
(assert (forall ((x_50 Nat_0) (x_51 list_0) (x_52 Nat_0) (x_53 list_0))
	(=> (diseqlist_0 x_51 x_53)
	    (diseqlist_0 (cons_0 x_50 x_51) (cons_0 x_52 x_53)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (xs_0 list_0) (x_6 Nat_0) (x_7 Nat_0))
	(=>	(and (= x_6 (S_0 x_7))
			(length_0 x_7 xs_0)
			(= x_0 (cons_0 y_0 xs_0)))
		(length_0 x_6 x_0))))
(assert (forall ((x_0 list_0) (x_8 Nat_0))
	(=>	(and (= x_8 Z_0)
			(= x_0 nil_0))
		(length_0 x_8 x_0))))
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 list_0) (z_0 Nat_0) (xs_1 list_0) (x_9 list_0) (x_10 list_0))
	(=>	(and (= x_9 (cons_0 z_0 x_10))
			(x_1 x_10 xs_1 y_1)
			(= x_2 (cons_0 z_0 xs_1)))
		(x_1 x_9 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (x_11 list_0))
	(=>	(and (= x_11 y_1)
			(= x_2 nil_0))
		(x_1 x_11 x_2 y_1))))
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_12 list_0))
	(=>	(and (= x_12 y_2)
			(= x_3 Z_0))
		(rotate_0 x_12 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (x_4 Nat_0) (x_5 list_0) (x_13 list_0) (x_14 list_0) (x_15 list_0))
	(=>	(and (= x_13 x_15)
			(x_1 x_14 x_5 (cons_0 x_4 nil_0))
			(rotate_0 x_15 z_1 x_14)
			(= x_3 (S_0 z_1))
			(= y_2 (cons_0 x_4 x_5)))
		(rotate_0 x_13 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(= x_3 (S_0 z_1))
			(= y_2 nil_0))
		(rotate_0 x_16 x_3 y_2))))
(assert (forall ((xs_2 list_0) (ys_0 list_0) (x_17 Nat_0) (x_18 list_0) (x_19 list_0) (x_20 list_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (diseqlist_0 xs_2 ys_0)
			(= x_19 x_20)
			(= x_21 x_22)
			(length_0 x_17 xs_2)
			(x_1 x_18 xs_2 ys_0)
			(rotate_0 x_19 x_17 x_18)
			(x_1 x_20 xs_2 ys_0)
			(length_0 x_21 xs_2)
			(length_0 x_22 ys_0))
		false)))
(check-sat)
