(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_15 Nat_1) (x_14 Nat_1))
	(=> (= x_15 (S_1 x_14))
	    (unS_1 x_14 x_15))))
(assert (isZ_0 Z_1))
(assert (forall ((x_16 Nat_1))
	(isS_0 (S_1 x_16))))
(assert (forall ((x_17 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_17))))
(assert (forall ((x_18 Nat_1))
	(diseqNat_0 (S_1 x_18) Z_1)))
(assert (forall ((x_19 Nat_1) (x_20 Nat_1))
	(=> (diseqNat_0 x_19 x_20)
	    (diseqNat_0 (S_1 x_19) (S_1 x_20)))))
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
	(add_0 y_2 Z_1 y_2)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_12 y_2)
	    (add_0 (S_1 r_0) (S_1 x_12) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_1 Z_1 y_2)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_12 y_2)
	    (minus_0 (S_1 r_0) (S_1 x_12) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_1 y_2)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_12 y_2)
	    (le_0 (S_1 x_12) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_1)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_12 y_2)
	    (ge_0 (S_1 x_12) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_1 (S_1 y_2))))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_12 y_2)
	    (lt_0 (S_1 x_12) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_1 y_2) Z_1)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_12 y_2)
	    (gt_0 (S_1 x_12) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_1 Z_1 y_2)))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (mult_0 r_0 x_12 y_2)
			(add_0 z_1 r_0 y_2))
		(mult_0 z_1 (S_1 x_12) y_2))))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_12 y_2)
	    (div_0 Z_1 x_12 y_2))))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_12 y_2)
			(minus_0 z_1 x_12 y_2)
			(div_0 r_0 z_1 y_2))
		(div_0 (S_1 r_0) x_12 y_2))))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_12 y_2)
	    (mod_0 x_12 x_12 y_2))))
(assert (forall ((x_12 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_12 y_2)
			(minus_0 z_1 x_12 y_2)
			(mod_0 r_0 z_1 y_2))
		(mod_0 r_0 x_12 y_2))))
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(assert (forall ((x_22 Nat_0) (x_21 Nat_0))
	(=> (= x_22 (S_0 x_21))
	    (projS_1 x_21 x_22))))
(assert (forall ((x_24 Nat_0))
	(isS_1 (S_0 x_24))))
(assert (isZ_1 Z_0))
(assert (forall ((x_25 Nat_0))
	(diseqNat_1 (S_0 x_25) Z_0)))
(assert (forall ((x_26 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_26))))
(assert (forall ((x_27 Nat_0) (x_28 Nat_0))
	(=> (diseqNat_1 x_27 x_28)
	    (diseqNat_1 (S_0 x_27) (S_0 x_28)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_32 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (= x_32 (cons_0 x_30 x_31))
	    (head_1 x_30 x_32))))
(assert (forall ((x_32 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (= x_32 (cons_0 x_30 x_31))
	    (tail_1 x_31 x_32))))
(assert (isnil_0 nil_0))
(assert (forall ((x_33 Nat_0) (x_34 list_0))
	(iscons_0 (cons_0 x_33 x_34))))
(assert (forall ((x_35 Nat_0) (x_36 list_0))
	(diseqlist_0 nil_0 (cons_0 x_35 x_36))))
(assert (forall ((x_37 Nat_0) (x_38 list_0))
	(diseqlist_0 (cons_0 x_37 x_38) nil_0)))
(assert (forall ((x_39 Nat_0) (x_40 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (diseqNat_1 x_39 x_41)
	    (diseqlist_0 (cons_0 x_39 x_40) (cons_0 x_41 x_42)))))
(assert (forall ((x_39 Nat_0) (x_40 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (diseqlist_0 x_40 x_42)
	    (diseqlist_0 (cons_0 x_39 x_40) (cons_0 x_41 x_42)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (xs_0 list_0) (x_3 Nat_0) (x_4 Nat_0))
	(=>	(and (= x_3 (S_0 x_4))
			(length_0 x_4 xs_0)
			(= x_0 (cons_0 y_0 xs_0)))
		(length_0 x_3 x_0))))
(assert (forall ((x_0 list_0) (x_5 Nat_0))
	(=>	(and (= x_5 Z_0)
			(= x_0 nil_0))
		(length_0 x_5 x_0))))
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 list_0) (z_0 Nat_0) (xs_1 list_0) (x_6 list_0) (x_7 list_0))
	(=>	(and (= x_6 (cons_0 z_0 x_7))
			(x_1 x_7 xs_1 y_1)
			(= x_2 (cons_0 z_0 xs_1)))
		(x_1 x_6 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (x_8 list_0))
	(=>	(and (= x_8 y_1)
			(= x_2 nil_0))
		(x_1 x_8 x_2 y_1))))
(assert (forall ((xs_2 list_0) (ys_0 list_0) (x_9 list_0) (x_10 Nat_0) (x_11 Nat_0))
	(=>	(and (diseqNat_1 x_10 x_11)
			(x_1 x_9 xs_2 ys_0)
			(length_0 x_10 x_9)
			(length_0 x_11 xs_2))
		false)))
(check-sat)
