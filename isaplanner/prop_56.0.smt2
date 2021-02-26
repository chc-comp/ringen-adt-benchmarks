(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_19 Nat_1) (x_18 Nat_1))
	(=> (= x_19 (S_1 x_18))
	    (unS_1 x_18 x_19))))
(assert (isZ_0 Z_1))
(assert (forall ((x_20 Nat_1))
	(isS_0 (S_1 x_20))))
(assert (forall ((x_21 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_21))))
(assert (forall ((x_22 Nat_1))
	(diseqNat_0 (S_1 x_22) Z_1)))
(assert (forall ((x_23 Nat_1) (x_24 Nat_1))
	(=> (diseqNat_0 x_23 x_24)
	    (diseqNat_0 (S_1 x_23) (S_1 x_24)))))
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
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_16 y_2)
	    (add_0 (S_1 r_0) (S_1 x_16) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_1 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_16 y_2)
	    (minus_0 (S_1 r_0) (S_1 x_16) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_16 y_2)
	    (le_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_1)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_16 y_2)
	    (ge_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_1 (S_1 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (lt_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_1 y_2) Z_1)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_16 y_2)
	    (gt_0 (S_1 x_16) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_1 Z_1 y_2)))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_16 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_1 x_16) y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (div_0 Z_1 x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_16 y_2)
			(minus_0 z_2 x_16 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_1 r_0) x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_16 y_2)
	    (mod_0 x_16 x_16 y_2))))
(assert (forall ((x_16 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_16 y_2)
			(minus_0 z_2 x_16 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_16 y_2))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_1 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_28 list_0) (x_26 Nat_1) (x_27 list_0))
	(=> (= x_28 (cons_0 x_26 x_27))
	    (head_1 x_26 x_28))))
(assert (forall ((x_28 list_0) (x_26 Nat_1) (x_27 list_0))
	(=> (= x_28 (cons_0 x_26 x_27))
	    (tail_1 x_27 x_28))))
(assert (isnil_0 nil_0))
(assert (forall ((x_29 Nat_1) (x_30 list_0))
	(iscons_0 (cons_0 x_29 x_30))))
(assert (forall ((x_31 Nat_1) (x_32 list_0))
	(diseqlist_0 nil_0 (cons_0 x_31 x_32))))
(assert (forall ((x_33 Nat_1) (x_34 list_0))
	(diseqlist_0 (cons_0 x_33 x_34) nil_0)))
(assert (forall ((x_35 Nat_1) (x_36 list_0) (x_37 Nat_1) (x_38 list_0))
	(=> (diseqNat_0 x_35 x_37)
	    (diseqlist_0 (cons_0 x_35 x_36) (cons_0 x_37 x_38)))))
(assert (forall ((x_35 Nat_1) (x_36 list_0) (x_37 Nat_1) (x_38 list_0))
	(=> (diseqlist_0 x_36 x_38)
	    (diseqlist_0 (cons_0 x_35 x_36) (cons_0 x_37 x_38)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_41 Nat_0) (x_40 Nat_0))
	(=> (= x_41 (S_0 x_40))
	    (projS_1 x_40 x_41))))
(assert (isZ_1 Z_0))
(assert (forall ((x_42 Nat_0))
	(isS_1 (S_0 x_42))))
(assert (forall ((x_43 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_43))))
(assert (forall ((x_44 Nat_0))
	(diseqNat_1 (S_0 x_44) Z_0)))
(assert (forall ((x_45 Nat_0) (x_46 Nat_0))
	(=> (diseqNat_1 x_45 x_46)
	    (diseqNat_1 (S_0 x_45) (S_0 x_46)))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_1 Nat_1) (x_2 list_0) (x_5 list_0) (x_6 list_0))
	(=>	(and (= x_5 x_6)
			(drop_0 x_6 z_0 x_2)
			(= x_0 (S_0 z_0))
			(= y_0 (cons_0 x_1 x_2)))
		(drop_0 x_5 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_7 list_0))
	(=>	(and (= x_7 nil_0)
			(= x_0 (S_0 z_0))
			(= y_0 nil_0))
		(drop_0 x_7 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_8 list_0))
	(=>	(and (= x_8 y_0)
			(= x_0 Z_0))
		(drop_0 x_8 x_0 y_0))))
(declare-fun x_3 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_9 Nat_0) (x_10 Nat_0))
	(=>	(and (= x_9 (S_0 x_10))
			(x_3 x_10 z_1 y_1)
			(= x_4 (S_0 z_1)))
		(x_3 x_9 x_4 y_1))))
(assert (forall ((x_4 Nat_0) (y_1 Nat_0) (x_11 Nat_0))
	(=>	(and (= x_11 y_1)
			(= x_4 Z_0))
		(x_3 x_11 x_4 y_1))))
(assert (forall ((n_0 Nat_0) (m_0 Nat_0) (xs_0 list_0) (x_12 list_0) (x_13 list_0) (x_14 Nat_0) (x_15 list_0))
	(=>	(and (diseqlist_0 x_13 x_15)
			(drop_0 x_12 m_0 xs_0)
			(drop_0 x_13 n_0 x_12)
			(x_3 x_14 n_0 m_0)
			(drop_0 x_15 x_14 xs_0))
		false)))
(check-sat)
