(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_13 Nat_1) (x_12 Nat_1))
	(=> (= x_13 (S_1 x_12))
	    (unS_1 x_12 x_13))))
(assert (isZ_0 Z_1))
(assert (forall ((x_14 Nat_1))
	(isS_0 (S_1 x_14))))
(assert (forall ((x_15 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_15))))
(assert (forall ((x_16 Nat_1))
	(diseqNat_0 (S_1 x_16) Z_1)))
(assert (forall ((x_17 Nat_1) (x_18 Nat_1))
	(=> (diseqNat_0 x_17 x_18)
	    (diseqNat_0 (S_1 x_17) (S_1 x_18)))))
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
	(add_0 y_1 Z_1 y_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_10 y_1)
	    (add_0 (S_1 r_0) (S_1 x_10) y_1))))
(assert (forall ((y_1 Nat_1))
	(minus_0 Z_1 Z_1 y_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_10 y_1)
	    (minus_0 (S_1 r_0) (S_1 x_10) y_1))))
(assert (forall ((y_1 Nat_1))
	(le_0 Z_1 y_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (le_0 x_10 y_1)
	    (le_0 (S_1 x_10) (S_1 y_1)))))
(assert (forall ((y_1 Nat_1))
	(ge_0 y_1 Z_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (ge_0 x_10 y_1)
	    (ge_0 (S_1 x_10) (S_1 y_1)))))
(assert (forall ((y_1 Nat_1))
	(lt_0 Z_1 (S_1 y_1))))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_10 y_1)
	    (lt_0 (S_1 x_10) (S_1 y_1)))))
(assert (forall ((y_1 Nat_1))
	(gt_0 (S_1 y_1) Z_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (gt_0 x_10 y_1)
	    (gt_0 (S_1 x_10) (S_1 y_1)))))
(assert (forall ((y_1 Nat_1))
	(mult_0 Z_1 Z_1 y_1)))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (mult_0 r_0 x_10 y_1)
			(add_0 z_1 r_0 y_1))
		(mult_0 z_1 (S_1 x_10) y_1))))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_10 y_1)
	    (div_0 Z_1 x_10 y_1))))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_10 y_1)
			(minus_0 z_1 x_10 y_1)
			(div_0 r_0 z_1 y_1))
		(div_0 (S_1 r_0) x_10 y_1))))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1))
	(=> (lt_0 x_10 y_1)
	    (mod_0 x_10 x_10 y_1))))
(assert (forall ((x_10 Nat_1) (y_1 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_10 y_1)
			(minus_0 z_1 x_10 y_1)
			(mod_0 r_0 z_1 y_1))
		(mod_0 r_0 x_10 y_1))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_1 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_22 list_0) (x_20 Nat_1) (x_21 list_0))
	(=> (= x_22 (cons_0 x_20 x_21))
	    (head_1 x_20 x_22))))
(assert (forall ((x_22 list_0) (x_20 Nat_1) (x_21 list_0))
	(=> (= x_22 (cons_0 x_20 x_21))
	    (tail_1 x_21 x_22))))
(assert (isnil_0 nil_0))
(assert (forall ((x_23 Nat_1) (x_24 list_0))
	(iscons_0 (cons_0 x_23 x_24))))
(assert (forall ((x_25 Nat_1) (x_26 list_0))
	(diseqlist_0 nil_0 (cons_0 x_25 x_26))))
(assert (forall ((x_27 Nat_1) (x_28 list_0))
	(diseqlist_0 (cons_0 x_27 x_28) nil_0)))
(assert (forall ((x_29 Nat_1) (x_30 list_0) (x_31 Nat_1) (x_32 list_0))
	(=> (diseqNat_0 x_29 x_31)
	    (diseqlist_0 (cons_0 x_29 x_30) (cons_0 x_31 x_32)))))
(assert (forall ((x_29 Nat_1) (x_30 list_0) (x_31 Nat_1) (x_32 list_0))
	(=> (diseqlist_0 x_30 x_32)
	    (diseqlist_0 (cons_0 x_29 x_30) (cons_0 x_31 x_32)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_35 Nat_0) (x_34 Nat_0))
	(=> (= x_35 (S_0 x_34))
	    (projS_1 x_34 x_35))))
(assert (isZ_1 Z_0))
(assert (forall ((x_36 Nat_0))
	(isS_1 (S_0 x_36))))
(assert (forall ((x_37 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_37))))
(assert (forall ((x_38 Nat_0))
	(diseqNat_1 (S_0 x_38) Z_0)))
(assert (forall ((x_39 Nat_0) (x_40 Nat_0))
	(=> (diseqNat_1 x_39 x_40)
	    (diseqNat_1 (S_0 x_39) (S_0 x_40)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_1 Nat_1) (x_2 list_0) (x_4 list_0) (x_5 list_0))
	(=>	(and (= x_4 (cons_0 x_1 x_5))
			(take_0 x_5 z_0 x_2)
			(= x_0 (S_0 z_0))
			(= y_0 (cons_0 x_1 x_2)))
		(take_0 x_4 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_6 list_0))
	(=>	(and (= x_6 nil_0)
			(= x_0 (S_0 z_0))
			(= y_0 nil_0))
		(take_0 x_6 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_7 list_0))
	(=>	(and (= x_7 nil_0)
			(= x_0 Z_0))
		(take_0 x_7 x_0 y_0))))
(assert (forall ((n_0 Nat_0) (x_3 Nat_1) (xs_0 list_0) (x_8 list_0) (x_9 list_0))
	(=>	(and (diseqlist_0 x_8 (cons_0 x_3 x_9))
			(take_0 x_8 (S_0 n_0) (cons_0 x_3 xs_0))
			(take_0 x_9 n_0 xs_0))
		false)))
(check-sat)
