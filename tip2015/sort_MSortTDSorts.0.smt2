(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_52 Nat_0) (x_51 Nat_0))
	(=> (= x_52 (S_0 x_51))
	    (unS_1 x_51 x_52))))
(assert (isZ_0 Z_0))
(assert (forall ((x_53 Nat_0))
	(isS_0 (S_0 x_53))))
(assert (forall ((x_54 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_54))))
(assert (forall ((x_55 Nat_0))
	(diseqNat_0 (S_0 x_55) Z_0)))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0))
	(=> (diseqNat_0 x_56 x_57)
	    (diseqNat_0 (S_0 x_56) (S_0 x_57)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_7 Nat_0))
	(add_0 y_7 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_45 y_7)
	    (add_0 (S_0 r_0) (S_0 x_45) y_7))))
(assert (forall ((y_7 Nat_0))
	(minus_0 Z_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_45 y_7)
	    (minus_0 (S_0 r_0) (S_0 x_45) y_7))))
(assert (forall ((y_7 Nat_0))
	(le_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (le_0 x_45 y_7)
	    (le_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(ge_0 y_7 Z_0)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (ge_0 x_45 y_7)
	    (ge_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(lt_0 Z_0 (S_0 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (lt_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(gt_0 (S_0 y_7) Z_0)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (gt_0 x_45 y_7)
	    (gt_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(mult_0 Z_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (mult_0 r_0 x_45 y_7)
			(add_0 z_5 r_0 y_7))
		(mult_0 z_5 (S_0 x_45) y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (div_0 Z_0 x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_45 y_7)
			(minus_0 z_5 x_45 y_7)
			(div_0 r_0 z_5 y_7))
		(div_0 (S_0 r_0) x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (mod_0 x_45 x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_45 y_7)
			(minus_0 z_5 x_45 y_7)
			(mod_0 r_0 z_5 y_7))
		(mod_0 r_0 x_45 y_7))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_61 list_0) (x_59 Nat_0) (x_60 list_0))
	(=> (= x_61 (cons_0 x_59 x_60))
	    (head_1 x_59 x_61))))
(assert (forall ((x_61 list_0) (x_59 Nat_0) (x_60 list_0))
	(=> (= x_61 (cons_0 x_59 x_60))
	    (tail_1 x_60 x_61))))
(assert (isnil_0 nil_0))
(assert (forall ((x_62 Nat_0) (x_63 list_0))
	(iscons_0 (cons_0 x_62 x_63))))
(assert (forall ((x_64 Nat_0) (x_65 list_0))
	(diseqlist_0 nil_0 (cons_0 x_64 x_65))))
(assert (forall ((x_66 Nat_0) (x_67 list_0))
	(diseqlist_0 (cons_0 x_66 x_67) nil_0)))
(assert (forall ((x_68 Nat_0) (x_69 list_0) (x_70 Nat_0) (x_71 list_0))
	(=> (diseqNat_0 x_68 x_70)
	    (diseqlist_0 (cons_0 x_68 x_69) (cons_0 x_70 x_71)))))
(assert (forall ((x_68 Nat_0) (x_69 list_0) (x_70 Nat_0) (x_71 list_0))
	(=> (diseqlist_0 x_69 x_71)
	    (diseqlist_0 (cons_0 x_68 x_69) (cons_0 x_70 x_71)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_11 list_0))
	(=>	(and (= x_11 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_11 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_12 list_0) (x_13 list_0) (x_46 Nat_0))
	(=>	(and (= x_12 (cons_0 z_0 x_13))
			(take_0 x_13 x_46 xs_0)
			(gt_0 x_0 Z_0)
			(= y_0 (cons_0 z_0 xs_0))
			(minus_0 x_46 x_0 (S_0 Z_0)))
		(take_0 x_12 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_14 list_0))
	(=>	(and (= x_14 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_14 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_15 list_0))
	(=>	(and (= x_15 nil_0)
			(gt_0 x_0 Z_0)
			(= y_0 nil_0))
		(take_0 x_15 x_0 y_0))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_1 list_0) (y_1 Nat_0) (z_1 list_0) (y_2 Nat_0) (xs_1 list_0) (x_16 Bool) (x_17 Bool))
	(=>	(and (= x_16 (and (le_0 y_1 y_2) x_17))
			(ordered_0 x_17 (cons_0 y_2 xs_1))
			(= x_1 (cons_0 y_1 z_1))
			(= z_1 (cons_0 y_2 xs_1)))
		(ordered_0 x_16 x_1))))
(assert (forall ((x_1 list_0) (y_1 Nat_0) (z_1 list_0) (x_18 Bool))
	(=>	(and (= x_18 true)
			(= x_1 (cons_0 y_1 z_1))
			(= z_1 nil_0))
		(ordered_0 x_18 x_1))))
(assert (forall ((x_1 list_0) (x_19 Bool))
	(=>	(and (= x_19 true)
			(= x_1 nil_0))
		(ordered_0 x_19 x_1))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_3 list_0) (z_2 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_20 list_0) (x_21 list_0))
	(=>	(and (= x_20 (cons_0 z_2 x_21))
			(lmerge_0 x_21 x_3 (cons_0 x_4 x_5))
			(= x_2 (cons_0 z_2 x_3))
			(= y_3 (cons_0 x_4 x_5))
			(le_0 z_2 x_4))
		(lmerge_0 x_20 x_2 y_3))))
(assert (forall ((x_2 list_0) (y_3 list_0) (z_2 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_22 list_0) (x_23 list_0))
	(=>	(and (= x_22 (cons_0 x_4 x_23))
			(lmerge_0 x_23 (cons_0 z_2 x_3) x_5)
			(= x_2 (cons_0 z_2 x_3))
			(= y_3 (cons_0 x_4 x_5))
			(gt_0 z_2 x_4))
		(lmerge_0 x_22 x_2 y_3))))
(assert (forall ((x_2 list_0) (y_3 list_0) (z_2 Nat_0) (x_3 list_0) (x_24 list_0))
	(=>	(and (= x_24 (cons_0 z_2 x_3))
			(= x_2 (cons_0 z_2 x_3))
			(= y_3 nil_0))
		(lmerge_0 x_24 x_2 y_3))))
(assert (forall ((x_2 list_0) (y_3 list_0) (x_25 list_0))
	(=>	(and (= x_25 y_3)
			(= x_2 nil_0))
		(lmerge_0 x_25 x_2 y_3))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_6 list_0) (y_4 Nat_0) (l_0 list_0) (x_26 Nat_0) (x_27 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_26 x_47)
			(length_0 x_27 l_0)
			(= x_6 (cons_0 y_4 l_0))
			(add_0 x_47 (S_0 Z_0) x_27))
		(length_0 x_26 x_6))))
(assert (forall ((x_6 list_0) (x_28 Nat_0))
	(=>	(and (= x_28 Z_0)
			(= x_6 nil_0))
		(length_0 x_28 x_6))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_7 Nat_0) (y_5 list_0) (x_29 list_0))
	(=>	(and (= x_29 y_5)
			(le_0 x_7 Z_0))
		(drop_0 x_29 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_0) (z_3 Nat_0) (xs_2 list_0) (x_30 list_0) (x_31 list_0) (x_48 Nat_0))
	(=>	(and (= x_30 x_31)
			(drop_0 x_31 x_48 xs_2)
			(gt_0 x_7 Z_0)
			(= y_5 (cons_0 z_3 xs_2))
			(minus_0 x_48 x_7 (S_0 Z_0)))
		(drop_0 x_30 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_0) (x_32 list_0))
	(=>	(and (= x_32 y_5)
			(le_0 x_7 Z_0))
		(drop_0 x_32 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_0) (x_33 list_0))
	(=>	(and (= x_33 nil_0)
			(gt_0 x_7 Z_0)
			(= y_5 nil_0))
		(drop_0 x_33 x_7 y_5))))
(declare-fun msorttd_0 (list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_6 Nat_0) (z_4 list_0) (x_9 Nat_0) (x_10 list_0) (k_0 Nat_0) (x_35 list_0) (x_36 list_0) (x_37 list_0) (x_38 list_0) (x_39 list_0) (x_40 list_0) (x_34 Nat_0) (x_49 Nat_0))
	(=>	(and (= x_35 x_40)
			(take_0 x_36 k_0 (cons_0 y_6 (cons_0 x_9 x_10)))
			(msorttd_0 x_37 x_36)
			(drop_0 x_38 k_0 (cons_0 y_6 (cons_0 x_9 x_10)))
			(msorttd_0 x_39 x_38)
			(lmerge_0 x_40 x_37 x_39)
			(= x_8 (cons_0 y_6 z_4))
			(= z_4 (cons_0 x_9 x_10))
			(= k_0 x_49)
			(length_0 x_34 (cons_0 y_6 (cons_0 x_9 x_10)))
			(div_0 x_49 x_34 (S_0 (S_0 Z_0))))
		(msorttd_0 x_35 x_8))))
(assert (forall ((x_8 list_0) (y_6 Nat_0) (z_4 list_0) (x_41 list_0))
	(=>	(and (= x_41 (cons_0 y_6 nil_0))
			(= x_8 (cons_0 y_6 z_4))
			(= z_4 nil_0))
		(msorttd_0 x_41 x_8))))
(assert (forall ((x_8 list_0) (x_42 list_0))
	(=>	(and (= x_42 nil_0)
			(= x_8 nil_0))
		(msorttd_0 x_42 x_8))))
(assert (forall ((xs_3 list_0) (x_43 list_0) (x_44 Bool))
	(=>	(and (= x_44 false)
			(msorttd_0 x_43 xs_3)
			(ordered_0 x_44 x_43))
		false)))
(check-sat)
