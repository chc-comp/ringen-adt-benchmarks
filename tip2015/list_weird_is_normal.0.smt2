(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_38 Nat_0) (x_37 Nat_0))
	(=> (= x_38 (S_0 x_37))
	    (unS_1 x_37 x_38))))
(assert (isZ_0 Z_0))
(assert (forall ((x_39 Nat_0))
	(isS_0 (S_0 x_39))))
(assert (forall ((x_40 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_40))))
(assert (forall ((x_41 Nat_0))
	(diseqNat_0 (S_0 x_41) Z_0)))
(assert (forall ((x_42 Nat_0) (x_43 Nat_0))
	(=> (diseqNat_0 x_42 x_43)
	    (diseqNat_0 (S_0 x_42) (S_0 x_43)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_6 Nat_0))
	(add_0 y_6 Z_0 y_6)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_35 y_6)
	    (add_0 (S_0 r_0) (S_0 x_35) y_6))))
(assert (forall ((y_6 Nat_0))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_35 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_35) y_6))))
(assert (forall ((y_6 Nat_0))
	(le_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (le_0 x_35 y_6)
	    (le_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (ge_0 x_35 y_6)
	    (ge_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_35 y_6)
	    (lt_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (gt_0 x_35 y_6)
	    (gt_0 (S_0 x_35) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_0 x_35 y_6)
			(add_0 z_4 r_0 y_6))
		(mult_0 z_4 (S_0 x_35) y_6))))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_35 y_6)
	    (div_0 Z_0 x_35 y_6))))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_35 y_6)
			(minus_0 z_4 x_35 y_6)
			(div_0 r_0 z_4 y_6))
		(div_0 (S_0 r_0) x_35 y_6))))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_35 y_6)
	    (mod_0 x_35 x_35 y_6))))
(assert (forall ((x_35 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_35 y_6)
			(minus_0 z_4 x_35 y_6)
			(mod_0 r_0 z_4 y_6))
		(mod_0 r_0 x_35 y_6))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_4 (Nat_0 list_0) Bool)
(declare-fun tail_4 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_47 list_0) (x_45 Nat_0) (x_46 list_0))
	(=> (= x_47 (cons_0 x_45 x_46))
	    (head_4 x_45 x_47))))
(assert (forall ((x_47 list_0) (x_45 Nat_0) (x_46 list_0))
	(=> (= x_47 (cons_0 x_45 x_46))
	    (tail_4 x_46 x_47))))
(assert (isnil_0 nil_0))
(assert (forall ((x_48 Nat_0) (x_49 list_0))
	(iscons_0 (cons_0 x_48 x_49))))
(assert (forall ((x_50 Nat_0) (x_51 list_0))
	(diseqlist_0 nil_0 (cons_0 x_50 x_51))))
(assert (forall ((x_52 Nat_0) (x_53 list_0))
	(diseqlist_0 (cons_0 x_52 x_53) nil_0)))
(assert (forall ((x_54 Nat_0) (x_55 list_0) (x_56 Nat_0) (x_57 list_0))
	(=> (diseqNat_0 x_54 x_56)
	    (diseqlist_0 (cons_0 x_54 x_55) (cons_0 x_56 x_57)))))
(assert (forall ((x_54 Nat_0) (x_55 list_0) (x_56 Nat_0) (x_57 list_0))
	(=> (diseqlist_0 x_55 x_57)
	    (diseqlist_0 (cons_0 x_54 x_55) (cons_0 x_56 x_57)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_5 (list_0 list_1) Bool)
(declare-fun tail_5 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_61 list_1) (x_59 list_0) (x_60 list_1))
	(=> (= x_61 (cons_1 x_59 x_60))
	    (head_5 x_59 x_61))))
(assert (forall ((x_61 list_1) (x_59 list_0) (x_60 list_1))
	(=> (= x_61 (cons_1 x_59 x_60))
	    (tail_5 x_60 x_61))))
(assert (isnil_1 nil_1))
(assert (forall ((x_62 list_0) (x_63 list_1))
	(iscons_1 (cons_1 x_62 x_63))))
(assert (forall ((x_64 list_0) (x_65 list_1))
	(diseqlist_1 nil_1 (cons_1 x_64 x_65))))
(assert (forall ((x_66 list_0) (x_67 list_1))
	(diseqlist_1 (cons_1 x_66 x_67) nil_1)))
(assert (forall ((x_68 list_0) (x_69 list_1) (x_70 list_0) (x_71 list_1))
	(=> (diseqlist_0 x_68 x_70)
	    (diseqlist_1 (cons_1 x_68 x_69) (cons_1 x_70 x_71)))))
(assert (forall ((x_68 list_0) (x_69 list_1) (x_70 list_0) (x_71 list_1))
	(=> (diseqlist_1 x_69 x_71)
	    (diseqlist_1 (cons_1 x_68 x_69) (cons_1 x_70 x_71)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 Nat_0) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_6 (Nat_0 list_2) Bool)
(declare-fun tail_6 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_75 list_2) (x_73 Nat_0) (x_74 list_2))
	(=> (= x_75 (cons_2 x_73 x_74))
	    (head_6 x_73 x_75))))
(assert (forall ((x_75 list_2) (x_73 Nat_0) (x_74 list_2))
	(=> (= x_75 (cons_2 x_73 x_74))
	    (tail_6 x_74 x_75))))
(assert (isnil_2 nil_2))
(assert (forall ((x_76 Nat_0) (x_77 list_2))
	(iscons_2 (cons_2 x_76 x_77))))
(assert (forall ((x_78 Nat_0) (x_79 list_2))
	(diseqlist_2 nil_2 (cons_2 x_78 x_79))))
(assert (forall ((x_80 Nat_0) (x_81 list_2))
	(diseqlist_2 (cons_2 x_80 x_81) nil_2)))
(assert (forall ((x_82 Nat_0) (x_83 list_2) (x_84 Nat_0) (x_85 list_2))
	(=> (diseqNat_0 x_82 x_84)
	    (diseqlist_2 (cons_2 x_82 x_83) (cons_2 x_84 x_85)))))
(assert (forall ((x_82 Nat_0) (x_83 list_2) (x_84 Nat_0) (x_85 list_2))
	(=> (diseqlist_2 x_83 x_85)
	    (diseqlist_2 (cons_2 x_82 x_83) (cons_2 x_84 x_85)))))
(declare-datatypes ((list_3 0)) (((nil_3 ) (cons_3 (head_3 list_2) (tail_3 list_3)))))
(declare-fun diseqlist_3 (list_3 list_3) Bool)
(declare-fun head_7 (list_2 list_3) Bool)
(declare-fun tail_7 (list_3 list_3) Bool)
(declare-fun isnil_3 (list_3) Bool)
(declare-fun iscons_3 (list_3) Bool)
(assert (forall ((x_89 list_3) (x_87 list_2) (x_88 list_3))
	(=> (= x_89 (cons_3 x_87 x_88))
	    (head_7 x_87 x_89))))
(assert (forall ((x_89 list_3) (x_87 list_2) (x_88 list_3))
	(=> (= x_89 (cons_3 x_87 x_88))
	    (tail_7 x_88 x_89))))
(assert (isnil_3 nil_3))
(assert (forall ((x_90 list_2) (x_91 list_3))
	(iscons_3 (cons_3 x_90 x_91))))
(assert (forall ((x_92 list_2) (x_93 list_3))
	(diseqlist_3 nil_3 (cons_3 x_92 x_93))))
(assert (forall ((x_94 list_2) (x_95 list_3))
	(diseqlist_3 (cons_3 x_94 x_95) nil_3)))
(assert (forall ((x_96 list_2) (x_97 list_3) (x_98 list_2) (x_99 list_3))
	(=> (diseqlist_2 x_96 x_98)
	    (diseqlist_3 (cons_3 x_96 x_97) (cons_3 x_98 x_99)))))
(assert (forall ((x_96 list_2) (x_97 list_3) (x_98 list_2) (x_99 list_3))
	(=> (diseqlist_3 x_97 x_99)
	    (diseqlist_3 (cons_3 x_96 x_97) (cons_3 x_98 x_99)))))
(declare-fun weirdconcat_0 (list_0 list_1) Bool)
(assert (forall ((x_0 list_1) (y_0 list_0) (xss_0 list_1) (z_0 Nat_0) (xs_0 list_0) (x_9 list_0) (x_10 list_0))
	(=>	(and (= x_9 (cons_0 z_0 x_10))
			(weirdconcat_0 x_10 (cons_1 xs_0 xss_0))
			(= x_0 (cons_1 y_0 xss_0))
			(= y_0 (cons_0 z_0 xs_0)))
		(weirdconcat_0 x_9 x_0))))
(assert (forall ((x_0 list_1) (y_0 list_0) (xss_0 list_1) (x_11 list_0) (x_12 list_0))
	(=>	(and (= x_11 x_12)
			(weirdconcat_0 x_12 xss_0)
			(= x_0 (cons_1 y_0 xss_0))
			(= y_0 nil_0))
		(weirdconcat_0 x_11 x_0))))
(assert (forall ((x_0 list_1) (x_13 list_0))
	(=>	(and (= x_13 nil_0)
			(= x_0 nil_1))
		(weirdconcat_0 x_13 x_0))))
(declare-fun weirdconcat_1 (list_2 list_3) Bool)
(assert (forall ((x_1 list_3) (y_1 list_2) (xss_1 list_3) (z_1 Nat_0) (xs_1 list_2) (x_14 list_2) (x_15 list_2))
	(=>	(and (= x_14 (cons_2 z_1 x_15))
			(weirdconcat_1 x_15 (cons_3 xs_1 xss_1))
			(= x_1 (cons_3 y_1 xss_1))
			(= y_1 (cons_2 z_1 xs_1)))
		(weirdconcat_1 x_14 x_1))))
(assert (forall ((x_1 list_3) (y_1 list_2) (xss_1 list_3) (x_16 list_2) (x_17 list_2))
	(=>	(and (= x_16 x_17)
			(weirdconcat_1 x_17 xss_1)
			(= x_1 (cons_3 y_1 xss_1))
			(= y_1 nil_2))
		(weirdconcat_1 x_16 x_1))))
(assert (forall ((x_1 list_3) (x_18 list_2))
	(=>	(and (= x_18 nil_2)
			(= x_1 nil_3))
		(weirdconcat_1 x_18 x_1))))
(declare-fun x_2 (list_0 list_0 list_0) Bool)
(assert (forall ((x_3 list_0) (y_2 list_0) (z_2 Nat_0) (xs_2 list_0) (x_19 list_0) (x_20 list_0))
	(=>	(and (= x_19 (cons_0 z_2 x_20))
			(x_2 x_20 xs_2 y_2)
			(= x_3 (cons_0 z_2 xs_2)))
		(x_2 x_19 x_3 y_2))))
(assert (forall ((x_3 list_0) (y_2 list_0) (x_21 list_0))
	(=>	(and (= x_21 y_2)
			(= x_3 nil_0))
		(x_2 x_21 x_3 y_2))))
(declare-fun concat_0 (list_0 list_1) Bool)
(assert (forall ((x_4 list_1) (y_3 list_0) (xs_3 list_1) (x_22 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_22 x_24)
			(concat_0 x_23 xs_3)
			(x_2 x_24 y_3 x_23)
			(= x_4 (cons_1 y_3 xs_3)))
		(concat_0 x_22 x_4))))
(assert (forall ((x_4 list_1) (x_25 list_0))
	(=>	(and (= x_25 nil_0)
			(= x_4 nil_1))
		(concat_0 x_25 x_4))))
(declare-fun x_5 (list_2 list_2 list_2) Bool)
(assert (forall ((x_6 list_2) (y_4 list_2) (z_3 Nat_0) (xs_4 list_2) (x_26 list_2) (x_27 list_2))
	(=>	(and (= x_26 (cons_2 z_3 x_27))
			(x_5 x_27 xs_4 y_4)
			(= x_6 (cons_2 z_3 xs_4)))
		(x_5 x_26 x_6 y_4))))
(assert (forall ((x_6 list_2) (y_4 list_2) (x_28 list_2))
	(=>	(and (= x_28 y_4)
			(= x_6 nil_2))
		(x_5 x_28 x_6 y_4))))
(declare-fun concat_1 (list_2 list_3) Bool)
(assert (forall ((x_7 list_3) (y_5 list_2) (xs_5 list_3) (x_29 list_2) (x_30 list_2) (x_31 list_2))
	(=>	(and (= x_29 x_31)
			(concat_1 x_30 xs_5)
			(x_5 x_31 y_5 x_30)
			(= x_7 (cons_3 y_5 xs_5)))
		(concat_1 x_29 x_7))))
(assert (forall ((x_7 list_3) (x_32 list_2))
	(=>	(and (= x_32 nil_2)
			(= x_7 nil_3))
		(concat_1 x_32 x_7))))
(assert (forall ((x_8 list_3) (x_33 list_2) (x_34 list_2))
	(=>	(and (diseqlist_2 x_33 x_34)
			(concat_1 x_33 x_8)
			(weirdconcat_1 x_34 x_8))
		false)))
(check-sat)
