(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_16 Nat_0) (x_15 Nat_0))
	(=> (= x_16 (S_0 x_15))
	    (unS_1 x_15 x_16))))
(assert (isZ_0 Z_0))
(assert (forall ((x_17 Nat_0))
	(isS_0 (S_0 x_17))))
(assert (forall ((x_18 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_18))))
(assert (forall ((x_19 Nat_0))
	(diseqNat_0 (S_0 x_19) Z_0)))
(assert (forall ((x_20 Nat_0) (x_21 Nat_0))
	(=> (diseqNat_0 x_20 x_21)
	    (diseqNat_0 (S_0 x_20) (S_0 x_21)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_2 Nat_0))
	(add_0 y_2 Z_0 y_2)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_13 y_2)
	    (add_0 (S_0 r_0) (S_0 x_13) y_2))))
(assert (forall ((y_2 Nat_0))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_13 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_13) y_2))))
(assert (forall ((y_2 Nat_0))
	(le_0 Z_0 y_2)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (le_0 x_13 y_2)
	    (le_0 (S_0 x_13) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (ge_0 x_13 y_2)
	    (ge_0 (S_0 x_13) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_13 y_2)
	    (lt_0 (S_0 x_13) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (gt_0 x_13 y_2)
	    (gt_0 (S_0 x_13) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_13 y_2)
			(add_0 z_1 r_0 y_2))
		(mult_0 z_1 (S_0 x_13) y_2))))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_13 y_2)
	    (div_0 Z_0 x_13 y_2))))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_13 y_2)
			(minus_0 z_1 x_13 y_2)
			(div_0 r_0 z_1 y_2))
		(div_0 (S_0 r_0) x_13 y_2))))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_13 y_2)
	    (mod_0 x_13 x_13 y_2))))
(assert (forall ((x_13 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_13 y_2)
			(minus_0 z_1 x_13 y_2)
			(mod_0 r_0 z_1 y_2))
		(mod_0 r_0 x_13 y_2))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_25 list_0) (x_23 Nat_0) (x_24 list_0))
	(=> (= x_25 (cons_0 x_23 x_24))
	    (head_1 x_23 x_25))))
(assert (forall ((x_25 list_0) (x_23 Nat_0) (x_24 list_0))
	(=> (= x_25 (cons_0 x_23 x_24))
	    (tail_1 x_24 x_25))))
(assert (isnil_0 nil_0))
(assert (forall ((x_26 Nat_0) (x_27 list_0))
	(iscons_0 (cons_0 x_26 x_27))))
(assert (forall ((x_28 Nat_0) (x_29 list_0))
	(diseqlist_0 nil_0 (cons_0 x_28 x_29))))
(assert (forall ((x_30 Nat_0) (x_31 list_0))
	(diseqlist_0 (cons_0 x_30 x_31) nil_0)))
(assert (forall ((x_32 Nat_0) (x_33 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (diseqNat_0 x_32 x_34)
	    (diseqlist_0 (cons_0 x_32 x_33) (cons_0 x_34 x_35)))))
(assert (forall ((x_32 Nat_0) (x_33 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (diseqlist_0 x_33 x_35)
	    (diseqlist_0 (cons_0 x_32 x_33) (cons_0 x_34 x_35)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_4 list_0) (x_5 list_0))
	(=>	(and (= x_4 (cons_0 z_0 x_5))
			(x_0 x_5 xs_0 y_0)
			(= x_1 (cons_0 z_0 xs_0)))
		(x_0 x_4 x_1 y_0))))
(assert (forall ((x_1 list_0) (y_0 list_0) (x_6 list_0))
	(=>	(and (= x_6 y_0)
			(= x_1 nil_0))
		(x_0 x_6 x_1 y_0))))
(declare-fun rev_0 (list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 Nat_0) (xs_1 list_0) (x_7 list_0) (x_8 list_0) (x_9 list_0))
	(=>	(and (= x_7 x_9)
			(rev_0 x_8 xs_1)
			(x_0 x_9 x_8 (cons_0 y_1 nil_0))
			(= x_2 (cons_0 y_1 xs_1)))
		(rev_0 x_7 x_2))))
(assert (forall ((x_2 list_0) (x_10 list_0))
	(=>	(and (= x_10 nil_0)
			(= x_2 nil_0))
		(rev_0 x_10 x_2))))
(assert (forall ((x_3 list_0) (x_11 list_0) (x_12 list_0))
	(=>	(and (diseqlist_0 x_12 x_3)
			(rev_0 x_11 x_3)
			(rev_0 x_12 x_11))
		false)))
(check-sat)