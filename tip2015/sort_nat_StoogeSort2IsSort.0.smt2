(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_145 Nat_1) (x_144 Nat_1))
	(=> (= x_145 (S_0 x_144))
	    (unS_1 x_144 x_145))))
(assert (isZ_0 Z_0))
(assert (forall ((x_146 Nat_1))
	(isS_0 (S_0 x_146))))
(assert (forall ((x_147 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_147))))
(assert (forall ((x_148 Nat_1))
	(diseqNat_0 (S_0 x_148) Z_0)))
(assert (forall ((x_149 Nat_1) (x_150 Nat_1))
	(=> (diseqNat_0 x_149 x_150)
	    (diseqNat_0 (S_0 x_149) (S_0 x_150)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_1 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_23 Nat_1))
	(add_0 y_23 Z_0 y_23)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_142 y_23)
	    (add_0 (S_0 r_0) (S_0 x_142) y_23))))
(assert (forall ((y_23 Nat_1))
	(minus_1 Z_0 Z_0 y_23)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1) (r_0 Nat_1))
	(=> (minus_1 r_0 x_142 y_23)
	    (minus_1 (S_0 r_0) (S_0 x_142) y_23))))
(assert (forall ((y_23 Nat_1))
	(le_0 Z_0 y_23)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (le_0 x_142 y_23)
	    (le_0 (S_0 x_142) (S_0 y_23)))))
(assert (forall ((y_23 Nat_1))
	(ge_0 y_23 Z_0)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (ge_0 x_142 y_23)
	    (ge_0 (S_0 x_142) (S_0 y_23)))))
(assert (forall ((y_23 Nat_1))
	(lt_1 Z_0 (S_0 y_23))))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (lt_1 x_142 y_23)
	    (lt_1 (S_0 x_142) (S_0 y_23)))))
(assert (forall ((y_23 Nat_1))
	(gt_0 (S_0 y_23) Z_0)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (gt_0 x_142 y_23)
	    (gt_0 (S_0 x_142) (S_0 y_23)))))
(assert (forall ((y_23 Nat_1))
	(mult_0 Z_0 Z_0 y_23)))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1) (r_0 Nat_1) (z_16 Nat_1))
	(=>	(and (mult_0 r_0 x_142 y_23)
			(add_0 z_16 r_0 y_23))
		(mult_0 z_16 (S_0 x_142) y_23))))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (lt_1 x_142 y_23)
	    (div_0 Z_0 x_142 y_23))))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1) (r_0 Nat_1) (z_16 Nat_1))
	(=>	(and (ge_0 x_142 y_23)
			(minus_1 z_16 x_142 y_23)
			(div_0 r_0 z_16 y_23))
		(div_0 (S_0 r_0) x_142 y_23))))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1))
	(=> (lt_1 x_142 y_23)
	    (mod_0 x_142 x_142 y_23))))
(assert (forall ((x_142 Nat_1) (y_23 Nat_1) (r_0 Nat_1) (z_16 Nat_1))
	(=>	(and (ge_0 x_142 y_23)
			(minus_1 z_16 x_142 y_23)
			(mod_0 r_0 z_16 y_23))
		(mod_0 r_0 x_142 y_23))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_153 Nat_0) (x_152 Nat_0))
	(=> (= x_153 (succ_0 x_152))
	    (p_1 x_152 x_153))))
(assert (iszero_0 zero_0))
(assert (forall ((x_154 Nat_0))
	(issucc_0 (succ_0 x_154))))
(assert (forall ((x_155 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_155))))
(assert (forall ((x_156 Nat_0))
	(diseqNat_1 (succ_0 x_156) zero_0)))
(assert (forall ((x_157 Nat_0) (x_158 Nat_0))
	(=> (diseqNat_1 x_157 x_158)
	    (diseqNat_1 (succ_0 x_157) (succ_0 x_158)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_162 list_0) (x_160 Nat_0) (x_161 list_0))
	(=> (= x_162 (cons_0 x_160 x_161))
	    (head_1 x_160 x_162))))
(assert (forall ((x_162 list_0) (x_160 Nat_0) (x_161 list_0))
	(=> (= x_162 (cons_0 x_160 x_161))
	    (tail_1 x_161 x_162))))
(assert (isnil_0 nil_0))
(assert (forall ((x_163 Nat_0) (x_164 list_0))
	(iscons_0 (cons_0 x_163 x_164))))
(assert (forall ((x_165 Nat_0) (x_166 list_0))
	(diseqlist_0 nil_0 (cons_0 x_165 x_166))))
(assert (forall ((x_167 Nat_0) (x_168 list_0))
	(diseqlist_0 (cons_0 x_167 x_168) nil_0)))
(assert (forall ((x_169 Nat_0) (x_170 list_0) (x_171 Nat_0) (x_172 list_0))
	(=> (diseqNat_1 x_169 x_171)
	    (diseqlist_0 (cons_0 x_169 x_170) (cons_0 x_171 x_172)))))
(assert (forall ((x_169 Nat_0) (x_170 list_0) (x_171 Nat_0) (x_172 list_0))
	(=> (diseqlist_0 x_170 x_172)
	    (diseqlist_0 (cons_0 x_169 x_170) (cons_0 x_171 x_172)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_0 pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_175 pair_0) (x_173 list_0) (x_174 list_0))
	(=> (= x_175 (pair_1 x_173 x_174))
	    (projpair_2 x_173 x_175))))
(assert (forall ((x_175 pair_0) (x_173 list_0) (x_174 list_0))
	(=> (= x_175 (pair_1 x_173 x_174))
	    (projpair_3 x_174 x_175))))
(assert (forall ((x_176 list_0) (x_177 list_0))
	(ispair_0 (pair_1 x_176 x_177))))
(assert (forall ((x_178 list_0) (x_179 list_0) (x_180 list_0) (x_181 list_0))
	(=> (diseqlist_0 x_178 x_180)
	    (diseqpair_0 (pair_1 x_178 x_179) (pair_1 x_180 x_181)))))
(assert (forall ((x_178 list_0) (x_179 list_0) (x_180 list_0) (x_181 list_0))
	(=> (diseqlist_0 x_179 x_181)
	    (diseqpair_0 (pair_1 x_178 x_179) (pair_1 x_180 x_181)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (z_1 Nat_0) (xs_0 list_0) (x_34 list_0) (x_35 list_0))
	(=>	(and (= x_34 (cons_0 z_1 x_35))
			(take_0 x_35 z_0 xs_0)
			(= x_0 (succ_0 z_0))
			(= y_0 (cons_0 z_1 xs_0)))
		(take_0 x_34 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_36 list_0))
	(=>	(and (= x_36 nil_0)
			(= x_0 (succ_0 z_0))
			(= y_0 nil_0))
		(take_0 x_36 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_37 list_0))
	(=>	(and (= x_37 nil_0)
			(= x_0 zero_0))
		(take_0 x_37 x_0 y_0))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_2 Nat_0) (x_38 Nat_0) (x_39 Nat_0))
	(=>	(and (= x_38 (succ_0 x_39))
			(plus_0 x_39 z_2 y_1)
			(= x_1 (succ_0 z_2)))
		(plus_0 x_38 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_40 Nat_0))
	(=>	(and (= x_40 y_1)
			(= x_1 zero_0))
		(plus_0 x_40 x_1 y_1))))
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_41 x_43)
			(times_0 x_42 z_3 y_2)
			(plus_0 x_43 y_2 x_42)
			(= x_2 (succ_0 z_3)))
		(times_0 x_41 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_44 Nat_0))
	(=>	(and (= x_44 zero_0)
			(= x_2 zero_0))
		(times_0 x_44 x_2 y_2))))
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (z_4 Nat_0) (y_4 Nat_0) (x_45 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_45 x_46)
			(minus_0 x_46 z_4 y_4)
			(= x_3 (succ_0 z_4))
			(= y_3 (succ_0 y_4)))
		(minus_0 x_45 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (z_4 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_47 zero_0)
			(= x_3 (succ_0 z_4))
			(= y_3 zero_0))
		(minus_0 x_47 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (x_48 Nat_0))
	(=>	(and (= x_48 zero_0)
			(= x_3 zero_0))
		(minus_0 x_48 x_3 y_3))))
(declare-fun lt_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (n_0 Nat_0) (x_49 Bool) (x_50 Bool))
	(=>	(and (= x_49 x_50)
			(lt_0 x_50 n_0 z_5)
			(= y_5 (succ_0 z_5))
			(= x_4 (succ_0 n_0)))
		(lt_0 x_49 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_51 Bool))
	(=>	(and (= x_51 true)
			(= y_5 (succ_0 z_5))
			(= x_4 zero_0))
		(lt_0 x_51 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (x_52 Bool))
	(=>	(and (= x_52 false)
			(= y_5 zero_0))
		(lt_0 x_52 x_4 y_5))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (z_6 Nat_0) (x_6 Nat_0) (x_53 Bool) (x_54 Bool))
	(=>	(and (= x_53 x_54)
			(leq_0 x_54 z_6 x_6)
			(= x_5 (succ_0 z_6))
			(= y_6 (succ_0 x_6)))
		(leq_0 x_53 x_5 y_6))))
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (z_6 Nat_0) (x_55 Bool))
	(=>	(and (= x_55 false)
			(= x_5 (succ_0 z_6))
			(= y_6 zero_0))
		(leq_0 x_55 x_5 y_6))))
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (x_56 Bool))
	(=>	(and (= x_56 true)
			(= x_5 zero_0))
		(leq_0 x_56 x_5 y_6))))
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_7 Nat_0) (y_7 Nat_0) (x_58 list_0) (x_57 Bool))
	(=>	(and (= x_58 (cons_0 x_7 (cons_0 y_7 nil_0)))
			(= x_57 true)
			(leq_0 x_57 x_7 y_7))
		(sort_0 x_58 x_7 y_7))))
(assert (forall ((x_7 Nat_0) (y_7 Nat_0) (x_60 list_0) (x_59 Bool))
	(=>	(and (= x_60 (cons_0 y_7 (cons_0 x_7 nil_0)))
			(= x_59 false)
			(leq_0 x_59 x_7 y_7))
		(sort_0 x_60 x_7 y_7))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_8 Nat_0) (l_0 list_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Nat_0))
	(=>	(and (= x_61 x_63)
			(length_0 x_62 l_0)
			(plus_0 x_63 (succ_0 zero_0) x_62)
			(= x_8 (cons_0 y_8 l_0)))
		(length_0 x_61 x_8))))
(assert (forall ((x_8 list_0) (x_64 Nat_0))
	(=>	(and (= x_64 zero_0)
			(= x_8 nil_0))
		(length_0 x_64 x_8))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_7 Nat_0) (xs_1 list_0) (x_66 list_0) (x_65 Bool))
	(=>	(and (= x_66 (cons_0 x_9 (cons_0 z_7 xs_1)))
			(= y_9 (cons_0 z_7 xs_1))
			(= x_65 true)
			(leq_0 x_65 x_9 z_7))
		(insert_0 x_66 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_7 Nat_0) (xs_1 list_0) (x_68 list_0) (x_69 list_0) (x_67 Bool))
	(=>	(and (= x_68 (cons_0 z_7 x_69))
			(insert_0 x_69 x_9 xs_1)
			(= y_9 (cons_0 z_7 xs_1))
			(= x_67 false)
			(leq_0 x_67 x_9 z_7))
		(insert_0 x_68 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (x_70 list_0))
	(=>	(and (= x_70 (cons_0 x_9 nil_0))
			(= y_9 nil_0))
		(insert_0 x_70 x_9 y_9))))
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (forall ((x_10 list_0) (y_10 Nat_0) (xs_2 list_0) (x_71 list_0) (x_72 list_0) (x_73 list_0))
	(=>	(and (= x_71 x_73)
			(isort_0 x_72 xs_2)
			(insert_0 x_73 y_10 x_72)
			(= x_10 (cons_0 y_10 xs_2)))
		(isort_0 x_71 x_10))))
(assert (forall ((x_10 list_0) (x_74 list_0))
	(=>	(and (= x_74 nil_0)
			(= x_10 nil_0))
		(isort_0 x_74 x_10))))
(declare-fun idiv_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_11 Nat_0) (y_11 Nat_0) (x_76 Nat_0) (x_75 Bool))
	(=>	(and (= x_76 zero_0)
			(= x_75 true)
			(lt_0 x_75 x_11 y_11))
		(idiv_0 x_76 x_11 y_11))))
(assert (forall ((x_11 Nat_0) (y_11 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_80 Nat_0) (x_77 Bool))
	(=>	(and (= x_78 (succ_0 x_80))
			(minus_0 x_79 x_11 y_11)
			(idiv_0 x_80 x_79 y_11)
			(= x_77 false)
			(lt_0 x_77 x_11 y_11))
		(idiv_0 x_78 x_11 y_11))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_12 Nat_0) (y_12 list_0) (z_8 Nat_0) (z_9 Nat_0) (xs_3 list_0) (x_81 list_0) (x_82 list_0))
	(=>	(and (= x_81 x_82)
			(drop_0 x_82 z_8 xs_3)
			(= x_12 (succ_0 z_8))
			(= y_12 (cons_0 z_9 xs_3)))
		(drop_0 x_81 x_12 y_12))))
(assert (forall ((x_12 Nat_0) (y_12 list_0) (z_8 Nat_0) (x_83 list_0))
	(=>	(and (= x_83 nil_0)
			(= x_12 (succ_0 z_8))
			(= y_12 nil_0))
		(drop_0 x_83 x_12 y_12))))
(assert (forall ((x_12 Nat_0) (y_12 list_0) (x_84 list_0))
	(=>	(and (= x_84 y_12)
			(= x_12 zero_0))
		(drop_0 x_84 x_12 y_12))))
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(assert (forall ((x_13 Nat_0) (y_13 list_0) (x_85 pair_0) (x_86 list_0) (x_87 list_0))
	(=>	(and (= x_85 (pair_1 x_86 x_87))
			(take_0 x_86 x_13 y_13)
			(drop_0 x_87 x_13 y_13))
		(splitAt_0 x_85 x_13 y_13))))
(declare-fun x_14 (list_0 list_0 list_0) Bool)
(assert (forall ((x_15 list_0) (y_14 list_0) (z_10 Nat_0) (xs_4 list_0) (x_88 list_0) (x_89 list_0))
	(=>	(and (= x_88 (cons_0 z_10 x_89))
			(x_14 x_89 xs_4 y_14)
			(= x_15 (cons_0 z_10 xs_4)))
		(x_14 x_88 x_15 y_14))))
(assert (forall ((x_15 list_0) (y_14 list_0) (x_90 list_0))
	(=>	(and (= x_90 y_14)
			(= x_15 nil_0))
		(x_14 x_90 x_15 y_14))))
(declare-fun stoogesort_0 (list_0 list_0) Bool)
(declare-fun stoogesort_1 (list_0 list_0) Bool)
(declare-fun stoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_16 list_0) (ys_0 list_0) (zs_0 list_0) (x_95 list_0) (x_96 list_0) (x_97 list_0) (x_91 Nat_0) (x_92 Nat_0) (x_93 Nat_0) (x_94 pair_0))
	(=>	(and (= x_95 x_97)
			(stoogesort_1 x_96 ys_0)
			(x_14 x_97 x_96 zs_0)
			(= x_94 (pair_1 ys_0 zs_0))
			(length_0 x_91 x_16)
			(times_0 x_92 (succ_0 (succ_0 zero_0)) x_91)
			(idiv_0 x_93 (succ_0 x_92) (succ_0 (succ_0 (succ_0 zero_0))))
			(splitAt_0 x_94 x_93 x_16))
		(stoogesort_0 x_95 x_16))))
(assert (forall ((x_17 list_0) (y_15 Nat_0) (z_11 list_0) (y_16 Nat_0) (x_18 list_0) (x_19 Nat_0) (x_20 list_0) (x_98 list_0) (x_99 list_0) (x_100 list_0) (x_101 list_0))
	(=>	(and (= x_98 x_101)
			(stoogesort_0 x_99 (cons_0 y_15 (cons_0 y_16 (cons_0 x_19 x_20))))
			(stoogesort_2 x_100 x_99)
			(stoogesort_0 x_101 x_100)
			(= x_17 (cons_0 y_15 z_11))
			(= z_11 (cons_0 y_16 x_18))
			(= x_18 (cons_0 x_19 x_20)))
		(stoogesort_1 x_98 x_17))))
(assert (forall ((x_17 list_0) (y_15 Nat_0) (z_11 list_0) (y_16 Nat_0) (x_18 list_0) (x_102 list_0) (x_103 list_0))
	(=>	(and (= x_102 x_103)
			(sort_0 x_103 y_15 y_16)
			(= x_17 (cons_0 y_15 z_11))
			(= z_11 (cons_0 y_16 x_18))
			(= x_18 nil_0))
		(stoogesort_1 x_102 x_17))))
(assert (forall ((x_17 list_0) (y_15 Nat_0) (z_11 list_0) (x_104 list_0))
	(=>	(and (= x_104 (cons_0 y_15 nil_0))
			(= x_17 (cons_0 y_15 z_11))
			(= z_11 nil_0))
		(stoogesort_1 x_104 x_17))))
(assert (forall ((x_17 list_0) (x_105 list_0))
	(=>	(and (= x_105 nil_0)
			(= x_17 nil_0))
		(stoogesort_1 x_105 x_17))))
(assert (forall ((x_21 list_0) (ys_1 list_0) (zs_1 list_0) (x_109 list_0) (x_110 list_0) (x_111 list_0) (x_106 Nat_0) (x_107 Nat_0) (x_108 pair_0))
	(=>	(and (= x_109 x_111)
			(stoogesort_1 x_110 zs_1)
			(x_14 x_111 ys_1 x_110)
			(= x_108 (pair_1 ys_1 zs_1))
			(length_0 x_106 x_21)
			(idiv_0 x_107 x_106 (succ_0 (succ_0 (succ_0 zero_0))))
			(splitAt_0 x_108 x_107 x_21))
		(stoogesort_2 x_109 x_21))))
(assert (forall ((x_22 Nat_0) (y_17 Nat_0) (z_12 Nat_0) (x_112 Nat_0) (x_113 Nat_0) (x_114 Nat_0) (x_115 Nat_0))
	(=>	(and (diseqNat_1 x_113 x_115)
			(times_0 x_112 y_17 z_12)
			(times_0 x_113 x_22 x_112)
			(times_0 x_114 x_22 y_17)
			(times_0 x_115 x_114 z_12))
		false)))
(assert (forall ((x_23 Nat_0) (y_18 Nat_0) (z_13 Nat_0) (x_116 Nat_0) (x_117 Nat_0) (x_118 Nat_0) (x_119 Nat_0))
	(=>	(and (diseqNat_1 x_117 x_119)
			(plus_0 x_116 y_18 z_13)
			(plus_0 x_117 x_23 x_116)
			(plus_0 x_118 x_23 y_18)
			(plus_0 x_119 x_118 z_13))
		false)))
(assert (forall ((x_24 Nat_0) (y_19 Nat_0) (x_120 Nat_0) (x_121 Nat_0))
	(=>	(and (diseqNat_1 x_120 x_121)
			(times_0 x_120 x_24 y_19)
			(times_0 x_121 y_19 x_24))
		false)))
(assert (forall ((x_25 Nat_0) (y_20 Nat_0) (x_122 Nat_0) (x_123 Nat_0))
	(=>	(and (diseqNat_1 x_122 x_123)
			(plus_0 x_122 x_25 y_20)
			(plus_0 x_123 y_20 x_25))
		false)))
(assert (forall ((x_26 Nat_0) (y_21 Nat_0) (z_14 Nat_0) (x_124 Nat_0) (x_125 Nat_0) (x_126 Nat_0) (x_127 Nat_0) (x_128 Nat_0))
	(=>	(and (diseqNat_1 x_125 x_128)
			(plus_0 x_124 y_21 z_14)
			(times_0 x_125 x_26 x_124)
			(times_0 x_126 x_26 y_21)
			(times_0 x_127 x_26 z_14)
			(plus_0 x_128 x_126 x_127))
		false)))
(assert (forall ((x_27 Nat_0) (y_22 Nat_0) (z_15 Nat_0) (x_129 Nat_0) (x_130 Nat_0) (x_131 Nat_0) (x_132 Nat_0) (x_133 Nat_0))
	(=>	(and (diseqNat_1 x_130 x_133)
			(plus_0 x_129 x_27 y_22)
			(times_0 x_130 x_129 z_15)
			(times_0 x_131 x_27 z_15)
			(times_0 x_132 y_22 z_15)
			(plus_0 x_133 x_131 x_132))
		false)))
(assert (forall ((x_28 Nat_0) (x_134 Nat_0))
	(=>	(and (diseqNat_1 x_134 x_28)
			(times_0 x_134 x_28 (succ_0 zero_0)))
		false)))
(assert (forall ((x_29 Nat_0) (x_135 Nat_0))
	(=>	(and (diseqNat_1 x_135 x_29)
			(times_0 x_135 (succ_0 zero_0) x_29))
		false)))
(assert (forall ((x_30 Nat_0) (x_136 Nat_0))
	(=>	(and (diseqNat_1 x_136 x_30)
			(plus_0 x_136 x_30 zero_0))
		false)))
(assert (forall ((x_31 Nat_0) (x_137 Nat_0))
	(=>	(and (diseqNat_1 x_137 x_31)
			(plus_0 x_137 zero_0 x_31))
		false)))
(assert (forall ((x_32 Nat_0) (x_138 Nat_0))
	(=>	(and (diseqNat_1 x_138 zero_0)
			(times_0 x_138 x_32 zero_0))
		false)))
(assert (forall ((x_33 Nat_0) (x_139 Nat_0))
	(=>	(and (diseqNat_1 x_139 zero_0)
			(times_0 x_139 zero_0 x_33))
		false)))
(assert (forall ((xs_5 list_0) (x_140 list_0) (x_141 list_0))
	(=>	(and (diseqlist_0 x_140 x_141)
			(stoogesort_1 x_140 xs_5)
			(isort_0 x_141 xs_5))
		false)))
(check-sat)
