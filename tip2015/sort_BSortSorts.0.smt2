(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_86 Nat_0) (x_85 Nat_0))
	(=> (= x_86 (S_0 x_85))
	    (unS_1 x_85 x_86))))
(assert (isZ_0 Z_0))
(assert (forall ((x_87 Nat_0))
	(isS_0 (S_0 x_87))))
(assert (forall ((x_88 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_88))))
(assert (forall ((x_89 Nat_0))
	(diseqNat_0 (S_0 x_89) Z_0)))
(assert (forall ((x_90 Nat_0) (x_91 Nat_0))
	(=> (diseqNat_0 x_90 x_91)
	    (diseqNat_0 (S_0 x_90) (S_0 x_91)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_10 Nat_0))
	(add_0 y_10 Z_0 y_10)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_83 y_10)
	    (add_0 (S_0 r_0) (S_0 x_83) y_10))))
(assert (forall ((y_10 Nat_0))
	(minus_0 Z_0 Z_0 y_10)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_83 y_10)
	    (minus_0 (S_0 r_0) (S_0 x_83) y_10))))
(assert (forall ((y_10 Nat_0))
	(le_0 Z_0 y_10)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (le_0 x_83 y_10)
	    (le_0 (S_0 x_83) (S_0 y_10)))))
(assert (forall ((y_10 Nat_0))
	(ge_0 y_10 Z_0)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (ge_0 x_83 y_10)
	    (ge_0 (S_0 x_83) (S_0 y_10)))))
(assert (forall ((y_10 Nat_0))
	(lt_0 Z_0 (S_0 y_10))))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (lt_0 x_83 y_10)
	    (lt_0 (S_0 x_83) (S_0 y_10)))))
(assert (forall ((y_10 Nat_0))
	(gt_0 (S_0 y_10) Z_0)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (gt_0 x_83 y_10)
	    (gt_0 (S_0 x_83) (S_0 y_10)))))
(assert (forall ((y_10 Nat_0))
	(mult_0 Z_0 Z_0 y_10)))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0) (r_0 Nat_0) (z_6 Nat_0))
	(=>	(and (mult_0 r_0 x_83 y_10)
			(add_0 z_6 r_0 y_10))
		(mult_0 z_6 (S_0 x_83) y_10))))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (lt_0 x_83 y_10)
	    (div_0 Z_0 x_83 y_10))))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0) (r_0 Nat_0) (z_6 Nat_0))
	(=>	(and (ge_0 x_83 y_10)
			(minus_0 z_6 x_83 y_10)
			(div_0 r_0 z_6 y_10))
		(div_0 (S_0 r_0) x_83 y_10))))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0))
	(=> (lt_0 x_83 y_10)
	    (mod_0 x_83 x_83 y_10))))
(assert (forall ((x_83 Nat_0) (y_10 Nat_0) (r_0 Nat_0) (z_6 Nat_0))
	(=>	(and (ge_0 x_83 y_10)
			(minus_0 z_6 x_83 y_10)
			(mod_0 r_0 z_6 y_10))
		(mod_0 r_0 x_83 y_10))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_95 list_0) (x_93 Nat_0) (x_94 list_0))
	(=> (= x_95 (cons_0 x_93 x_94))
	    (head_1 x_93 x_95))))
(assert (forall ((x_95 list_0) (x_93 Nat_0) (x_94 list_0))
	(=> (= x_95 (cons_0 x_93 x_94))
	    (tail_1 x_94 x_95))))
(assert (isnil_0 nil_0))
(assert (forall ((x_96 Nat_0) (x_97 list_0))
	(iscons_0 (cons_0 x_96 x_97))))
(assert (forall ((x_98 Nat_0) (x_99 list_0))
	(diseqlist_0 nil_0 (cons_0 x_98 x_99))))
(assert (forall ((x_100 Nat_0) (x_101 list_0))
	(diseqlist_0 (cons_0 x_100 x_101) nil_0)))
(assert (forall ((x_102 Nat_0) (x_103 list_0) (x_104 Nat_0) (x_105 list_0))
	(=> (diseqNat_0 x_102 x_104)
	    (diseqlist_0 (cons_0 x_102 x_103) (cons_0 x_104 x_105)))))
(assert (forall ((x_102 Nat_0) (x_103 list_0) (x_104 Nat_0) (x_105 list_0))
	(=> (diseqlist_0 x_103 x_105)
	    (diseqlist_0 (cons_0 x_102 x_103) (cons_0 x_104 x_105)))))
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_22 list_0))
	(=>	(and (= x_22 (cons_0 x_0 (cons_0 y_0 nil_0)))
			(le_0 x_0 y_0))
		(sort_0 x_22 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_23 list_0))
	(=>	(and (= x_23 (cons_0 y_0 (cons_0 x_0 nil_0)))
			(gt_0 x_0 y_0))
		(sort_0 x_23 x_0 y_0))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_1 list_0) (y_1 Nat_0) (z_0 list_0) (y_2 Nat_0) (xs_0 list_0) (x_24 Bool) (x_25 Bool))
	(=>	(and (= x_24 (and (le_0 y_1 y_2) x_25))
			(ordered_0 x_25 (cons_0 y_2 xs_0))
			(= x_1 (cons_0 y_1 z_0))
			(= z_0 (cons_0 y_2 xs_0)))
		(ordered_0 x_24 x_1))))
(assert (forall ((x_1 list_0) (y_1 Nat_0) (z_0 list_0) (x_26 Bool))
	(=>	(and (= x_26 true)
			(= x_1 (cons_0 y_1 z_0))
			(= z_0 nil_0))
		(ordered_0 x_26 x_1))))
(assert (forall ((x_1 list_0) (x_27 Bool))
	(=>	(and (= x_27 true)
			(= x_1 nil_0))
		(ordered_0 x_27 x_1))))
(declare-fun evens_0 (list_0 list_0) Bool)
(declare-fun odds_0 (list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_3 Nat_0) (xs_1 list_0) (x_28 list_0) (x_29 list_0))
	(=>	(and (= x_28 (cons_0 y_3 x_29))
			(odds_0 x_29 xs_1)
			(= x_2 (cons_0 y_3 xs_1)))
		(evens_0 x_28 x_2))))
(assert (forall ((x_2 list_0) (x_30 list_0))
	(=>	(and (= x_30 nil_0)
			(= x_2 nil_0))
		(evens_0 x_30 x_2))))
(assert (forall ((x_3 list_0) (y_4 Nat_0) (xs_2 list_0) (x_31 list_0) (x_32 list_0))
	(=>	(and (= x_31 x_32)
			(evens_0 x_32 xs_2)
			(= x_3 (cons_0 y_4 xs_2)))
		(odds_0 x_31 x_3))))
(assert (forall ((x_3 list_0) (x_33 list_0))
	(=>	(and (= x_33 nil_0)
			(= x_3 nil_0))
		(odds_0 x_33 x_3))))
(declare-fun x_4 (list_0 list_0 list_0) Bool)
(assert (forall ((x_5 list_0) (y_5 list_0) (z_1 Nat_0) (xs_3 list_0) (x_34 list_0) (x_35 list_0))
	(=>	(and (= x_34 (cons_0 z_1 x_35))
			(x_4 x_35 xs_3 y_5)
			(= x_5 (cons_0 z_1 xs_3)))
		(x_4 x_34 x_5 y_5))))
(assert (forall ((x_5 list_0) (y_5 list_0) (x_36 list_0))
	(=>	(and (= x_36 y_5)
			(= x_5 nil_0))
		(x_4 x_36 x_5 y_5))))
(declare-fun pairs_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_6 list_0) (y_6 list_0) (z_2 Nat_0) (x_7 list_0) (x_8 Nat_0) (x_9 list_0) (x_37 list_0) (x_38 list_0) (x_39 list_0) (x_40 list_0))
	(=>	(and (= x_37 x_40)
			(sort_0 x_38 z_2 x_8)
			(pairs_0 x_39 x_7 x_9)
			(x_4 x_40 x_38 x_39)
			(= x_6 (cons_0 z_2 x_7))
			(= y_6 (cons_0 x_8 x_9)))
		(pairs_0 x_37 x_6 y_6))))
(assert (forall ((x_6 list_0) (y_6 list_0) (z_2 Nat_0) (x_7 list_0) (x_41 list_0))
	(=>	(and (= x_41 (cons_0 z_2 x_7))
			(= x_6 (cons_0 z_2 x_7))
			(= y_6 nil_0))
		(pairs_0 x_41 x_6 y_6))))
(assert (forall ((x_6 list_0) (y_6 list_0) (x_42 list_0))
	(=>	(and (= x_42 y_6)
			(= x_6 nil_0))
		(pairs_0 x_42 x_6 y_6))))
(declare-fun stitch_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_10 list_0) (y_7 list_0) (z_3 Nat_0) (xs_4 list_0) (x_43 list_0) (x_44 list_0))
	(=>	(and (= x_43 (cons_0 z_3 x_44))
			(pairs_0 x_44 xs_4 y_7)
			(= x_10 (cons_0 z_3 xs_4)))
		(stitch_0 x_43 x_10 y_7))))
(assert (forall ((x_10 list_0) (y_7 list_0) (x_45 list_0))
	(=>	(and (= x_45 y_7)
			(= x_10 nil_0))
		(stitch_0 x_45 x_10 y_7))))
(declare-fun bmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_11 list_0) (y_8 list_0) (z_4 Nat_0) (x_12 list_0) (x_13 Nat_0) (x_14 list_0) (fail_0 list_0) (x_15 Nat_0) (x_16 list_0) (x_53 list_0) (x_46 list_0) (x_47 list_0) (x_48 list_0) (x_49 list_0) (x_50 list_0) (x_51 list_0) (x_52 list_0))
	(=>	(and (= x_53 fail_0)
			(= x_11 (cons_0 z_4 x_12))
			(= y_8 (cons_0 x_13 x_14))
			(= fail_0 x_52)
			(= x_12 (cons_0 x_15 x_16))
			(evens_0 x_46 (cons_0 z_4 x_12))
			(evens_0 x_47 (cons_0 x_13 x_14))
			(bmerge_0 x_48 x_46 x_47)
			(odds_0 x_49 (cons_0 z_4 x_12))
			(odds_0 x_50 (cons_0 x_13 x_14))
			(bmerge_0 x_51 x_49 x_50)
			(stitch_0 x_52 x_48 x_51))
		(bmerge_0 x_53 x_11 y_8))))
(assert (forall ((x_11 list_0) (y_8 list_0) (z_4 Nat_0) (x_12 list_0) (x_13 Nat_0) (x_14 list_0) (fail_0 list_0) (x_17 Nat_0) (x_18 list_0) (x_61 list_0) (x_54 list_0) (x_55 list_0) (x_56 list_0) (x_57 list_0) (x_58 list_0) (x_59 list_0) (x_60 list_0))
	(=>	(and (= x_61 fail_0)
			(= x_11 (cons_0 z_4 x_12))
			(= y_8 (cons_0 x_13 x_14))
			(= fail_0 x_60)
			(= x_12 nil_0)
			(= x_14 (cons_0 x_17 x_18))
			(evens_0 x_54 (cons_0 z_4 x_12))
			(evens_0 x_55 (cons_0 x_13 x_14))
			(bmerge_0 x_56 x_54 x_55)
			(odds_0 x_57 (cons_0 z_4 x_12))
			(odds_0 x_58 (cons_0 x_13 x_14))
			(bmerge_0 x_59 x_57 x_58)
			(stitch_0 x_60 x_56 x_59))
		(bmerge_0 x_61 x_11 y_8))))
(assert (forall ((x_11 list_0) (y_8 list_0) (z_4 Nat_0) (x_12 list_0) (x_13 Nat_0) (x_14 list_0) (fail_0 list_0) (x_69 list_0) (x_70 list_0) (x_62 list_0) (x_63 list_0) (x_64 list_0) (x_65 list_0) (x_66 list_0) (x_67 list_0) (x_68 list_0))
	(=>	(and (= x_69 x_70)
			(sort_0 x_70 z_4 x_13)
			(= x_11 (cons_0 z_4 x_12))
			(= y_8 (cons_0 x_13 x_14))
			(= fail_0 x_68)
			(= x_12 nil_0)
			(= x_14 nil_0)
			(evens_0 x_62 (cons_0 z_4 x_12))
			(evens_0 x_63 (cons_0 x_13 x_14))
			(bmerge_0 x_64 x_62 x_63)
			(odds_0 x_65 (cons_0 z_4 x_12))
			(odds_0 x_66 (cons_0 x_13 x_14))
			(bmerge_0 x_67 x_65 x_66)
			(stitch_0 x_68 x_64 x_67))
		(bmerge_0 x_69 x_11 y_8))))
(assert (forall ((x_11 list_0) (y_8 list_0) (z_4 Nat_0) (x_12 list_0) (x_71 list_0))
	(=>	(and (= x_71 (cons_0 z_4 x_12))
			(= x_11 (cons_0 z_4 x_12))
			(= y_8 nil_0))
		(bmerge_0 x_71 x_11 y_8))))
(assert (forall ((x_11 list_0) (y_8 list_0) (x_72 list_0))
	(=>	(and (= x_72 nil_0)
			(= x_11 nil_0))
		(bmerge_0 x_72 x_11 y_8))))
(declare-fun bsort_0 (list_0 list_0) Bool)
(assert (forall ((x_19 list_0) (y_9 Nat_0) (z_5 list_0) (x_20 Nat_0) (x_21 list_0) (x_73 list_0) (x_74 list_0) (x_75 list_0) (x_76 list_0) (x_77 list_0) (x_78 list_0))
	(=>	(and (= x_73 x_78)
			(evens_0 x_74 (cons_0 y_9 (cons_0 x_20 x_21)))
			(bsort_0 x_75 x_74)
			(odds_0 x_76 (cons_0 y_9 (cons_0 x_20 x_21)))
			(bsort_0 x_77 x_76)
			(bmerge_0 x_78 x_75 x_77)
			(= x_19 (cons_0 y_9 z_5))
			(= z_5 (cons_0 x_20 x_21)))
		(bsort_0 x_73 x_19))))
(assert (forall ((x_19 list_0) (y_9 Nat_0) (z_5 list_0) (x_79 list_0))
	(=>	(and (= x_79 (cons_0 y_9 nil_0))
			(= x_19 (cons_0 y_9 z_5))
			(= z_5 nil_0))
		(bsort_0 x_79 x_19))))
(assert (forall ((x_19 list_0) (x_80 list_0))
	(=>	(and (= x_80 nil_0)
			(= x_19 nil_0))
		(bsort_0 x_80 x_19))))
(assert (forall ((xs_5 list_0) (x_81 list_0) (x_82 Bool))
	(=>	(and (= x_82 false)
			(bsort_0 x_81 xs_5)
			(ordered_0 x_82 x_81))
		false)))
(check-sat)
