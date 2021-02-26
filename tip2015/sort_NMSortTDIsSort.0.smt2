(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_65 Nat_0) (x_64 Nat_0))
	(=> (= x_65 (S_0 x_64))
	    (unS_1 x_64 x_65))))
(assert (isZ_0 Z_0))
(assert (forall ((x_66 Nat_0))
	(isS_0 (S_0 x_66))))
(assert (forall ((x_67 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_67))))
(assert (forall ((x_68 Nat_0))
	(diseqNat_0 (S_0 x_68) Z_0)))
(assert (forall ((x_69 Nat_0) (x_70 Nat_0))
	(=> (diseqNat_0 x_69 x_70)
	    (diseqNat_0 (S_0 x_69) (S_0 x_70)))))
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
(assert (forall ((x_57 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_57 y_7)
	    (add_0 (S_0 r_0) (S_0 x_57) y_7))))
(assert (forall ((y_7 Nat_0))
	(minus_0 Z_0 Z_0 y_7)))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_57 y_7)
	    (minus_0 (S_0 r_0) (S_0 x_57) y_7))))
(assert (forall ((y_7 Nat_0))
	(le_0 Z_0 y_7)))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (le_0 x_57 y_7)
	    (le_0 (S_0 x_57) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(ge_0 y_7 Z_0)))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (ge_0 x_57 y_7)
	    (ge_0 (S_0 x_57) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(lt_0 Z_0 (S_0 y_7))))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_57 y_7)
	    (lt_0 (S_0 x_57) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(gt_0 (S_0 y_7) Z_0)))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (gt_0 x_57 y_7)
	    (gt_0 (S_0 x_57) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(mult_0 Z_0 Z_0 y_7)))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (mult_0 r_0 x_57 y_7)
			(add_0 z_5 r_0 y_7))
		(mult_0 z_5 (S_0 x_57) y_7))))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_57 y_7)
	    (div_0 Z_0 x_57 y_7))))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_57 y_7)
			(minus_0 z_5 x_57 y_7)
			(div_0 r_0 z_5 y_7))
		(div_0 (S_0 r_0) x_57 y_7))))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_57 y_7)
	    (mod_0 x_57 x_57 y_7))))
(assert (forall ((x_57 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_57 y_7)
			(minus_0 z_5 x_57 y_7)
			(mod_0 r_0 z_5 y_7))
		(mod_0 r_0 x_57 y_7))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_74 list_0) (x_72 Nat_0) (x_73 list_0))
	(=> (= x_74 (cons_0 x_72 x_73))
	    (head_1 x_72 x_74))))
(assert (forall ((x_74 list_0) (x_72 Nat_0) (x_73 list_0))
	(=> (= x_74 (cons_0 x_72 x_73))
	    (tail_1 x_73 x_74))))
(assert (isnil_0 nil_0))
(assert (forall ((x_75 Nat_0) (x_76 list_0))
	(iscons_0 (cons_0 x_75 x_76))))
(assert (forall ((x_77 Nat_0) (x_78 list_0))
	(diseqlist_0 nil_0 (cons_0 x_77 x_78))))
(assert (forall ((x_79 Nat_0) (x_80 list_0))
	(diseqlist_0 (cons_0 x_79 x_80) nil_0)))
(assert (forall ((x_81 Nat_0) (x_82 list_0) (x_83 Nat_0) (x_84 list_0))
	(=> (diseqNat_0 x_81 x_83)
	    (diseqlist_0 (cons_0 x_81 x_82) (cons_0 x_83 x_84)))))
(assert (forall ((x_81 Nat_0) (x_82 list_0) (x_83 Nat_0) (x_84 list_0))
	(=> (diseqlist_0 x_82 x_84)
	    (diseqlist_0 (cons_0 x_81 x_82) (cons_0 x_83 x_84)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_13 list_0))
	(=>	(and (= x_13 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_13 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_14 list_0) (x_15 list_0) (x_58 Nat_0))
	(=>	(and (= x_14 (cons_0 z_0 x_15))
			(take_0 x_15 x_58 xs_0)
			(gt_0 x_0 Z_0)
			(= y_0 (cons_0 z_0 xs_0))
			(minus_0 x_58 x_0 (S_0 Z_0)))
		(take_0 x_14 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_16 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_17 list_0))
	(=>	(and (= x_17 nil_0)
			(gt_0 x_0 Z_0)
			(= y_0 nil_0))
		(take_0 x_17 x_0 y_0))))
(declare-fun nmsorttdhalf_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_18 Z_0)
			(= x_1 (S_0 Z_0)))
		(nmsorttdhalf_0 x_18 x_1))))
(assert (forall ((x_1 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_19 Z_0)
			(diseqNat_0 x_1 (S_0 Z_0))
			(= x_1 Z_0))
		(nmsorttdhalf_0 x_19 x_1))))
(assert (forall ((x_1 Nat_0) (x_20 Nat_0))
	(=>	(and (= x_20 Z_0)
			(= x_1 (S_0 Z_0)))
		(nmsorttdhalf_0 x_20 x_1))))
(assert (forall ((x_1 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_59 Nat_0) (x_60 Nat_0))
	(=>	(and (= x_21 x_59)
			(nmsorttdhalf_0 x_22 x_60)
			(diseqNat_0 x_1 (S_0 Z_0))
			(diseqNat_0 x_1 Z_0)
			(add_0 x_59 (S_0 Z_0) x_22)
			(minus_0 x_60 x_1 (S_0 (S_0 Z_0))))
		(nmsorttdhalf_0 x_21 x_1))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_23 (cons_0 z_1 x_24))
			(lmerge_0 x_24 x_3 (cons_0 x_4 x_5))
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 (cons_0 x_4 x_5))
			(le_0 z_1 x_4))
		(lmerge_0 x_23 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_25 list_0) (x_26 list_0))
	(=>	(and (= x_25 (cons_0 x_4 x_26))
			(lmerge_0 x_26 (cons_0 z_1 x_3) x_5)
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 (cons_0 x_4 x_5))
			(gt_0 z_1 x_4))
		(lmerge_0 x_25 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_27 list_0))
	(=>	(and (= x_27 (cons_0 z_1 x_3))
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 nil_0))
		(lmerge_0 x_27 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (x_28 list_0))
	(=>	(and (= x_28 y_1)
			(= x_2 nil_0))
		(lmerge_0 x_28 x_2 y_1))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_6 list_0) (y_2 Nat_0) (l_0 list_0) (x_29 Nat_0) (x_30 Nat_0) (x_61 Nat_0))
	(=>	(and (= x_29 x_61)
			(length_0 x_30 l_0)
			(= x_6 (cons_0 y_2 l_0))
			(add_0 x_61 (S_0 Z_0) x_30))
		(length_0 x_29 x_6))))
(assert (forall ((x_6 list_0) (x_31 Nat_0))
	(=>	(and (= x_31 Z_0)
			(= x_6 nil_0))
		(length_0 x_31 x_6))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_7 Nat_0) (y_3 list_0) (z_2 Nat_0) (xs_1 list_0) (x_32 list_0))
	(=>	(and (= x_32 (cons_0 x_7 (cons_0 z_2 xs_1)))
			(= y_3 (cons_0 z_2 xs_1))
			(le_0 x_7 z_2))
		(insert_0 x_32 x_7 y_3))))
(assert (forall ((x_7 Nat_0) (y_3 list_0) (z_2 Nat_0) (xs_1 list_0) (x_33 list_0) (x_34 list_0))
	(=>	(and (= x_33 (cons_0 z_2 x_34))
			(insert_0 x_34 x_7 xs_1)
			(= y_3 (cons_0 z_2 xs_1))
			(gt_0 x_7 z_2))
		(insert_0 x_33 x_7 y_3))))
(assert (forall ((x_7 Nat_0) (y_3 list_0) (x_35 list_0))
	(=>	(and (= x_35 (cons_0 x_7 nil_0))
			(= y_3 nil_0))
		(insert_0 x_35 x_7 y_3))))
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_4 Nat_0) (xs_2 list_0) (x_36 list_0) (x_37 list_0) (x_38 list_0))
	(=>	(and (= x_36 x_38)
			(isort_0 x_37 xs_2)
			(insert_0 x_38 y_4 x_37)
			(= x_8 (cons_0 y_4 xs_2)))
		(isort_0 x_36 x_8))))
(assert (forall ((x_8 list_0) (x_39 list_0))
	(=>	(and (= x_39 nil_0)
			(= x_8 nil_0))
		(isort_0 x_39 x_8))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_9 Nat_0) (y_5 list_0) (x_40 list_0))
	(=>	(and (= x_40 y_5)
			(le_0 x_9 Z_0))
		(drop_0 x_40 x_9 y_5))))
(assert (forall ((x_9 Nat_0) (y_5 list_0) (z_3 Nat_0) (xs_3 list_0) (x_41 list_0) (x_42 list_0) (x_62 Nat_0))
	(=>	(and (= x_41 x_42)
			(drop_0 x_42 x_62 xs_3)
			(gt_0 x_9 Z_0)
			(= y_5 (cons_0 z_3 xs_3))
			(minus_0 x_62 x_9 (S_0 Z_0)))
		(drop_0 x_41 x_9 y_5))))
(assert (forall ((x_9 Nat_0) (y_5 list_0) (x_43 list_0))
	(=>	(and (= x_43 y_5)
			(le_0 x_9 Z_0))
		(drop_0 x_43 x_9 y_5))))
(assert (forall ((x_9 Nat_0) (y_5 list_0) (x_44 list_0))
	(=>	(and (= x_44 nil_0)
			(gt_0 x_9 Z_0)
			(= y_5 nil_0))
		(drop_0 x_44 x_9 y_5))))
(declare-fun nmsorttd_0 (list_0 list_0) Bool)
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (x_11 Nat_0) (x_12 list_0) (k_0 Nat_0) (x_47 list_0) (x_48 list_0) (x_49 list_0) (x_50 list_0) (x_51 list_0) (x_52 list_0) (x_45 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_47 x_52)
			(take_0 x_48 k_0 (cons_0 y_6 (cons_0 x_11 x_12)))
			(nmsorttd_0 x_49 x_48)
			(drop_0 x_50 k_0 (cons_0 y_6 (cons_0 x_11 x_12)))
			(nmsorttd_0 x_51 x_50)
			(lmerge_0 x_52 x_49 x_51)
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 (cons_0 x_11 x_12))
			(= k_0 x_46)
			(length_0 x_45 (cons_0 y_6 (cons_0 x_11 x_12)))
			(nmsorttdhalf_0 x_46 x_45))
		(nmsorttd_0 x_47 x_10))))
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (x_53 list_0))
	(=>	(and (= x_53 (cons_0 y_6 nil_0))
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 nil_0))
		(nmsorttd_0 x_53 x_10))))
(assert (forall ((x_10 list_0) (x_54 list_0))
	(=>	(and (= x_54 nil_0)
			(= x_10 nil_0))
		(nmsorttd_0 x_54 x_10))))
(assert (forall ((xs_4 list_0) (x_55 list_0) (x_56 list_0))
	(=>	(and (diseqlist_0 x_55 x_56)
			(nmsorttd_0 x_55 xs_4)
			(isort_0 x_56 xs_4))
		false)))
(check-sat)
