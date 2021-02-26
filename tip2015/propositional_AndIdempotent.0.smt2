(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_80 Nat_0) (x_79 Nat_0))
	(=> (= x_80 (S_0 x_79))
	    (unS_1 x_79 x_80))))
(assert (isZ_0 Z_0))
(assert (forall ((x_81 Nat_0))
	(isS_0 (S_0 x_81))))
(assert (forall ((x_82 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_82))))
(assert (forall ((x_83 Nat_0))
	(diseqNat_0 (S_0 x_83) Z_0)))
(assert (forall ((x_84 Nat_0) (x_85 Nat_0))
	(=> (diseqNat_0 x_84 x_85)
	    (diseqNat_0 (S_0 x_84) (S_0 x_85)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_12 Nat_0))
	(add_0 y_12 Z_0 y_12)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0) (r_1 Nat_0))
	(=> (add_0 r_1 x_77 y_12)
	    (add_0 (S_0 r_1) (S_0 x_77) y_12))))
(assert (forall ((y_12 Nat_0))
	(minus_0 Z_0 Z_0 y_12)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0) (r_1 Nat_0))
	(=> (minus_0 r_1 x_77 y_12)
	    (minus_0 (S_0 r_1) (S_0 x_77) y_12))))
(assert (forall ((y_12 Nat_0))
	(le_0 Z_0 y_12)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (le_0 x_77 y_12)
	    (le_0 (S_0 x_77) (S_0 y_12)))))
(assert (forall ((y_12 Nat_0))
	(ge_0 y_12 Z_0)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (ge_0 x_77 y_12)
	    (ge_0 (S_0 x_77) (S_0 y_12)))))
(assert (forall ((y_12 Nat_0))
	(lt_0 Z_0 (S_0 y_12))))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (lt_0 x_77 y_12)
	    (lt_0 (S_0 x_77) (S_0 y_12)))))
(assert (forall ((y_12 Nat_0))
	(gt_0 (S_0 y_12) Z_0)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (gt_0 x_77 y_12)
	    (gt_0 (S_0 x_77) (S_0 y_12)))))
(assert (forall ((y_12 Nat_0))
	(mult_0 Z_0 Z_0 y_12)))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0) (r_1 Nat_0) (z_8 Nat_0))
	(=>	(and (mult_0 r_1 x_77 y_12)
			(add_0 z_8 r_1 y_12))
		(mult_0 z_8 (S_0 x_77) y_12))))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (lt_0 x_77 y_12)
	    (div_0 Z_0 x_77 y_12))))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0) (r_1 Nat_0) (z_8 Nat_0))
	(=>	(and (ge_0 x_77 y_12)
			(minus_0 z_8 x_77 y_12)
			(div_0 r_1 z_8 y_12))
		(div_0 (S_0 r_1) x_77 y_12))))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0))
	(=> (lt_0 x_77 y_12)
	    (mod_0 x_77 x_77 y_12))))
(assert (forall ((x_77 Nat_0) (y_12 Nat_0) (r_1 Nat_0) (z_8 Nat_0))
	(=>	(and (ge_0 x_77 y_12)
			(minus_0 z_8 x_77 y_12)
			(mod_0 r_1 z_8 y_12))
		(mod_0 r_1 x_77 y_12))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Bool)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Nat_0 pair_0) Bool)
(declare-fun projpair_3 (Bool pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_88 pair_0) (x_86 Nat_0) (x_87 Bool))
	(=> (= x_88 (pair_1 x_86 x_87))
	    (projpair_2 x_86 x_88))))
(assert (forall ((x_88 pair_0) (x_86 Nat_0) (x_87 Bool))
	(=> (= x_88 (pair_1 x_86 x_87))
	    (projpair_3 x_87 x_88))))
(assert (forall ((x_89 Nat_0) (x_90 Bool))
	(ispair_0 (pair_1 x_89 x_90))))
(assert (forall ((x_91 Nat_0) (x_92 Bool) (x_93 Nat_0) (x_94 Bool))
	(=> (diseqNat_0 x_91 x_93)
	    (diseqpair_0 (pair_1 x_91 x_92) (pair_1 x_93 x_94)))))
(assert (forall ((x_91 Nat_0) (x_92 Bool) (x_93 Nat_0) (x_94 Bool))
	(=> (not (= x_92 x_94))
	    (diseqpair_0 (pair_1 x_91 x_92) (pair_1 x_93 x_94)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_3 (Bool list_0) Bool)
(declare-fun tail_3 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_98 list_0) (x_96 Bool) (x_97 list_0))
	(=> (= x_98 (cons_0 x_96 x_97))
	    (head_3 x_96 x_98))))
(assert (forall ((x_98 list_0) (x_96 Bool) (x_97 list_0))
	(=> (= x_98 (cons_0 x_96 x_97))
	    (tail_3 x_97 x_98))))
(assert (isnil_0 nil_0))
(assert (forall ((x_99 Bool) (x_100 list_0))
	(iscons_0 (cons_0 x_99 x_100))))
(assert (forall ((x_101 Bool) (x_102 list_0))
	(diseqlist_0 nil_0 (cons_0 x_101 x_102))))
(assert (forall ((x_103 Bool) (x_104 list_0))
	(diseqlist_0 (cons_0 x_103 x_104) nil_0)))
(assert (forall ((x_105 Bool) (x_106 list_0) (x_107 Bool) (x_108 list_0))
	(=> (not (= x_105 x_107))
	    (diseqlist_0 (cons_0 x_105 x_106) (cons_0 x_107 x_108)))))
(assert (forall ((x_105 Bool) (x_106 list_0) (x_107 Bool) (x_108 list_0))
	(=> (diseqlist_0 x_106 x_108)
	    (diseqlist_0 (cons_0 x_105 x_106) (cons_0 x_107 x_108)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_4 (pair_0 list_1) Bool)
(declare-fun tail_4 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_112 list_1) (x_110 pair_0) (x_111 list_1))
	(=> (= x_112 (cons_1 x_110 x_111))
	    (head_4 x_110 x_112))))
(assert (forall ((x_112 list_1) (x_110 pair_0) (x_111 list_1))
	(=> (= x_112 (cons_1 x_110 x_111))
	    (tail_4 x_111 x_112))))
(assert (isnil_1 nil_1))
(assert (forall ((x_113 pair_0) (x_114 list_1))
	(iscons_1 (cons_1 x_113 x_114))))
(assert (forall ((x_115 pair_0) (x_116 list_1))
	(diseqlist_1 nil_1 (cons_1 x_115 x_116))))
(assert (forall ((x_117 pair_0) (x_118 list_1))
	(diseqlist_1 (cons_1 x_117 x_118) nil_1)))
(assert (forall ((x_119 pair_0) (x_120 list_1) (x_121 pair_0) (x_122 list_1))
	(=> (diseqpair_0 x_119 x_121)
	    (diseqlist_1 (cons_1 x_119 x_120) (cons_1 x_121 x_122)))))
(assert (forall ((x_119 pair_0) (x_120 list_1) (x_121 pair_0) (x_122 list_1))
	(=> (diseqlist_1 x_120 x_122)
	    (diseqlist_1 (cons_1 x_119 x_120) (cons_1 x_121 x_122)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 list_1) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_5 (list_1 list_2) Bool)
(declare-fun tail_5 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_126 list_2) (x_124 list_1) (x_125 list_2))
	(=> (= x_126 (cons_2 x_124 x_125))
	    (head_5 x_124 x_126))))
(assert (forall ((x_126 list_2) (x_124 list_1) (x_125 list_2))
	(=> (= x_126 (cons_2 x_124 x_125))
	    (tail_5 x_125 x_126))))
(assert (isnil_2 nil_2))
(assert (forall ((x_127 list_1) (x_128 list_2))
	(iscons_2 (cons_2 x_127 x_128))))
(assert (forall ((x_129 list_1) (x_130 list_2))
	(diseqlist_2 nil_2 (cons_2 x_129 x_130))))
(assert (forall ((x_131 list_1) (x_132 list_2))
	(diseqlist_2 (cons_2 x_131 x_132) nil_2)))
(assert (forall ((x_133 list_1) (x_134 list_2) (x_135 list_1) (x_136 list_2))
	(=> (diseqlist_1 x_133 x_135)
	    (diseqlist_2 (cons_2 x_133 x_134) (cons_2 x_135 x_136)))))
(assert (forall ((x_133 list_1) (x_134 list_2) (x_135 list_1) (x_136 list_2))
	(=> (diseqlist_2 x_134 x_136)
	    (diseqlist_2 (cons_2 x_133 x_134) (cons_2 x_135 x_136)))))
(declare-datatypes ((Form_0 0)) (((x_0 (proj_0 Form_0) (proj_1 Form_0)) (Not_0 (projNot_0 Form_0)) (Var_0 (projVar_0 Nat_0)))))
(declare-fun diseqForm_0 (Form_0 Form_0) Bool)
(declare-fun proj_2 (Form_0 Form_0) Bool)
(declare-fun proj_3 (Form_0 Form_0) Bool)
(declare-fun projNot_1 (Form_0 Form_0) Bool)
(declare-fun projVar_1 (Nat_0 Form_0) Bool)
(declare-fun isx_0 (Form_0) Bool)
(declare-fun isNot_0 (Form_0) Bool)
(declare-fun isVar_0 (Form_0) Bool)
(assert (forall ((x_139 Form_0) (x_137 Form_0) (x_138 Form_0))
	(=> (= x_139 (x_0 x_137 x_138))
	    (proj_2 x_137 x_139))))
(assert (forall ((x_139 Form_0) (x_137 Form_0) (x_138 Form_0))
	(=> (= x_139 (x_0 x_137 x_138))
	    (proj_3 x_138 x_139))))
(assert (forall ((x_141 Form_0) (x_140 Form_0))
	(=> (= x_141 (Not_0 x_140))
	    (projNot_1 x_140 x_141))))
(assert (forall ((x_143 Form_0) (x_142 Nat_0))
	(=> (= x_143 (Var_0 x_142))
	    (projVar_1 x_142 x_143))))
(assert (forall ((x_144 Form_0) (x_145 Form_0))
	(isx_0 (x_0 x_144 x_145))))
(assert (forall ((x_146 Form_0))
	(isNot_0 (Not_0 x_146))))
(assert (forall ((x_147 Nat_0))
	(isVar_0 (Var_0 x_147))))
(assert (forall ((x_148 Form_0) (x_149 Form_0) (x_150 Form_0))
	(diseqForm_0 (x_0 x_148 x_149) (Not_0 x_150))))
(assert (forall ((x_151 Form_0) (x_152 Form_0) (x_153 Nat_0))
	(diseqForm_0 (x_0 x_151 x_152) (Var_0 x_153))))
(assert (forall ((x_154 Form_0) (x_155 Form_0) (x_156 Form_0))
	(diseqForm_0 (Not_0 x_154) (x_0 x_155 x_156))))
(assert (forall ((x_157 Nat_0) (x_158 Form_0) (x_159 Form_0))
	(diseqForm_0 (Var_0 x_157) (x_0 x_158 x_159))))
(assert (forall ((x_160 Form_0) (x_161 Nat_0))
	(diseqForm_0 (Not_0 x_160) (Var_0 x_161))))
(assert (forall ((x_162 Nat_0) (x_163 Form_0))
	(diseqForm_0 (Var_0 x_162) (Not_0 x_163))))
(assert (forall ((x_164 Form_0) (x_165 Form_0) (x_166 Form_0) (x_167 Form_0))
	(=> (diseqForm_0 x_164 x_166)
	    (diseqForm_0 (x_0 x_164 x_165) (x_0 x_166 x_167)))))
(assert (forall ((x_164 Form_0) (x_165 Form_0) (x_166 Form_0) (x_167 Form_0))
	(=> (diseqForm_0 x_165 x_167)
	    (diseqForm_0 (x_0 x_164 x_165) (x_0 x_166 x_167)))))
(assert (forall ((x_168 Form_0) (x_169 Form_0))
	(=> (diseqForm_0 x_168 x_169)
	    (diseqForm_0 (Not_0 x_168) (Not_0 x_169)))))
(assert (forall ((x_170 Nat_0) (x_171 Nat_0))
	(=> (diseqNat_0 x_170 x_171)
	    (diseqForm_0 (Var_0 x_170) (Var_0 x_171)))))
(declare-fun or_0 (Bool list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 Bool) (xs_0 list_0) (x_19 Bool) (x_20 Bool))
	(=>	(and (= x_19 (or y_0 x_20))
			(or_0 x_20 xs_0)
			(= x_1 (cons_0 y_0 xs_0)))
		(or_0 x_19 x_1))))
(assert (forall ((x_1 list_0) (x_21 Bool))
	(=>	(and (= x_21 false)
			(= x_1 nil_0))
		(or_0 x_21 x_1))))
(declare-fun models_0 (list_1 Nat_0 list_1) Bool)
(assert (forall ((x_2 Nat_0) (y_1 list_1) (z_0 pair_0) (xs_1 list_1) (x_3 Nat_0) (y_2 Bool) (x_22 list_1) (x_23 list_1))
	(=>	(and (= x_22 (cons_1 z_0 x_23))
			(models_0 x_23 x_2 xs_1)
			(= y_1 (cons_1 z_0 xs_1))
			(diseqNat_0 x_2 x_3)
			(= z_0 (pair_1 x_3 y_2)))
		(models_0 x_22 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 list_1) (z_0 pair_0) (xs_1 list_1) (x_3 Nat_0) (y_2 Bool) (x_24 list_1) (x_25 list_1))
	(=>	(and (= x_24 x_25)
			(models_0 x_25 x_2 xs_1)
			(= y_1 (cons_1 z_0 xs_1))
			(= x_2 x_3)
			(= z_0 (pair_1 x_3 y_2)))
		(models_0 x_24 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 list_1) (x_26 list_1))
	(=>	(and (= x_26 nil_1)
			(= y_1 nil_1))
		(models_0 x_26 x_2 y_1))))
(declare-fun models_1 (list_0 Nat_0 list_1) Bool)
(assert (forall ((x_4 Nat_0) (y_3 list_1) (z_1 pair_0) (x_5 list_1) (y_4 Nat_0) (x_6 Bool) (x_27 list_0) (x_28 list_0))
	(=>	(and (= x_27 x_28)
			(models_1 x_28 x_4 x_5)
			(= y_3 (cons_1 z_1 x_5))
			(= z_1 (pair_1 y_4 x_6))
			x_6)
		(models_1 x_27 x_4 y_3))))
(assert (forall ((x_4 Nat_0) (y_3 list_1) (z_1 pair_0) (x_5 list_1) (y_4 Nat_0) (x_6 Bool) (x_29 list_0) (x_30 list_0))
	(=>	(and (= x_29 (cons_0 (= x_4 y_4) x_30))
			(models_1 x_30 x_4 x_5)
			(= y_3 (cons_1 z_1 x_5))
			(= z_1 (pair_1 y_4 x_6))
			(not x_6))
		(models_1 x_29 x_4 y_3))))
(assert (forall ((x_4 Nat_0) (y_3 list_1) (x_31 list_0))
	(=>	(and (= x_31 nil_0)
			(= y_3 nil_1))
		(models_1 x_31 x_4 y_3))))
(declare-fun models_2 (list_0 Nat_0 list_1) Bool)
(assert (forall ((x_7 Nat_0) (y_5 list_1) (z_2 pair_0) (x_8 list_1) (y_6 Nat_0) (x_9 Bool) (x_32 list_0) (x_33 list_0))
	(=>	(and (= x_32 (cons_0 (= x_7 y_6) x_33))
			(models_2 x_33 x_7 x_8)
			(= y_5 (cons_1 z_2 x_8))
			(= z_2 (pair_1 y_6 x_9))
			x_9)
		(models_2 x_32 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_1) (z_2 pair_0) (x_8 list_1) (y_6 Nat_0) (x_9 Bool) (x_34 list_0) (x_35 list_0))
	(=>	(and (= x_34 x_35)
			(models_2 x_35 x_7 x_8)
			(= y_5 (cons_1 z_2 x_8))
			(= z_2 (pair_1 y_6 x_9))
			(not x_9))
		(models_2 x_34 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_1) (x_36 list_0))
	(=>	(and (= x_36 nil_0)
			(= y_5 nil_1))
		(models_2 x_36 x_7 y_5))))
(declare-fun x_10 (list_2 list_2 list_2) Bool)
(assert (forall ((x_11 list_2) (y_7 list_2) (z_3 list_1) (xs_2 list_2) (x_37 list_2) (x_38 list_2))
	(=>	(and (= x_37 (cons_2 z_3 x_38))
			(x_10 x_38 xs_2 y_7)
			(= x_11 (cons_2 z_3 xs_2)))
		(x_10 x_37 x_11 y_7))))
(assert (forall ((x_11 list_2) (y_7 list_2) (x_39 list_2))
	(=>	(and (= x_39 y_7)
			(= x_11 nil_2))
		(x_10 x_39 x_11 y_7))))
(declare-fun models_3 (list_2 Form_0 list_1) Bool)
(declare-fun models_4 (list_2 Form_0 list_2) Bool)
(declare-fun models_5 (list_2 list_2 Form_0 list_2) Bool)
(assert (forall ((x_12 Form_0) (y_8 list_1) (x_13 Nat_0) (x_42 list_2) (x_43 list_1) (x_40 list_0) (x_41 Bool))
	(=>	(and (= x_42 (cons_2 (cons_1 (pair_1 x_13 true) x_43) nil_2))
			(models_0 x_43 x_13 y_8)
			(= x_12 (Var_0 x_13))
			(= x_41 false)
			(models_1 x_40 x_13 y_8)
			(or_0 x_41 x_40))
		(models_3 x_42 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (x_13 Nat_0) (x_46 list_2) (x_44 list_0) (x_45 Bool))
	(=>	(and (= x_46 nil_2)
			(= x_12 (Var_0 x_13))
			(= x_45 true)
			(models_1 x_44 x_13 y_8)
			(or_0 x_45 x_44))
		(models_3 x_46 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (z_4 Form_0) (x_14 Nat_0) (x_49 list_2) (x_50 list_1) (x_47 list_0) (x_48 Bool))
	(=>	(and (= x_49 (cons_2 (cons_1 (pair_1 x_14 false) x_50) nil_2))
			(models_0 x_50 x_14 y_8)
			(= x_12 (Not_0 z_4))
			(= z_4 (Var_0 x_14))
			(= x_48 false)
			(models_2 x_47 x_14 y_8)
			(or_0 x_48 x_47))
		(models_3 x_49 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (z_4 Form_0) (x_14 Nat_0) (x_53 list_2) (x_51 list_0) (x_52 Bool))
	(=>	(and (= x_53 nil_2)
			(= x_12 (Not_0 z_4))
			(= z_4 (Var_0 x_14))
			(= x_52 true)
			(models_2 x_51 x_14 y_8)
			(or_0 x_52 x_51))
		(models_3 x_53 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (z_4 Form_0) (p_0 Form_0) (x_54 list_2) (x_55 list_2))
	(=>	(and (= x_54 x_55)
			(models_3 x_55 p_0 y_8)
			(= x_12 (Not_0 z_4))
			(= z_4 (Not_0 p_0)))
		(models_3 x_54 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (z_4 Form_0) (r_0 Form_0) (q_0 Form_0) (x_56 list_2) (x_57 list_2) (x_58 list_2) (x_59 list_2))
	(=>	(and (= x_56 x_59)
			(models_3 x_57 (Not_0 r_0) y_8)
			(models_3 x_58 (x_0 r_0 (Not_0 q_0)) y_8)
			(x_10 x_59 x_57 x_58)
			(= x_12 (Not_0 z_4))
			(= z_4 (x_0 r_0 q_0)))
		(models_3 x_56 x_12 y_8))))
(assert (forall ((x_12 Form_0) (y_8 list_1) (p_1 Form_0) (q_1 Form_0) (x_60 list_2) (x_61 list_2) (x_62 list_2))
	(=>	(and (= x_60 x_62)
			(models_3 x_61 p_1 y_8)
			(models_4 x_62 q_1 x_61)
			(= x_12 (x_0 p_1 q_1)))
		(models_3 x_60 x_12 y_8))))
(assert (forall ((q_2 Form_0) (x_15 list_2) (y_9 list_1) (z_5 list_2) (x_63 list_2) (x_64 list_2) (x_65 list_2))
	(=>	(and (= x_63 x_65)
			(models_3 x_64 q_2 y_9)
			(models_5 x_65 z_5 q_2 x_64)
			(= x_15 (cons_2 y_9 z_5)))
		(models_4 x_63 q_2 x_15))))
(assert (forall ((q_2 Form_0) (x_15 list_2) (x_66 list_2))
	(=>	(and (= x_66 nil_2)
			(= x_15 nil_2))
		(models_4 x_66 q_2 x_15))))
(assert (forall ((x_16 list_2) (q_3 Form_0) (y_10 list_2) (z_6 list_1) (x_17 list_2) (x_67 list_2) (x_68 list_2))
	(=>	(and (= x_67 (cons_2 z_6 x_68))
			(models_5 x_68 x_16 q_3 x_17)
			(= y_10 (cons_2 z_6 x_17)))
		(models_5 x_67 x_16 q_3 y_10))))
(assert (forall ((x_16 list_2) (q_3 Form_0) (y_10 list_2) (x_69 list_2) (x_70 list_2))
	(=>	(and (= x_69 x_70)
			(models_4 x_70 q_3 x_16)
			(= y_10 nil_2))
		(models_5 x_69 x_16 q_3 y_10))))
(declare-fun valid_0 (Bool Form_0) Bool)
(assert (forall ((x_18 Form_0) (y_11 list_1) (z_7 list_2) (x_72 Bool) (x_71 list_2))
	(=>	(and (= x_72 false)
			(= x_71 (cons_2 y_11 z_7))
			(models_3 x_71 (Not_0 x_18) nil_1))
		(valid_0 x_72 x_18))))
(assert (forall ((x_18 Form_0) (x_74 Bool) (x_73 list_2))
	(=>	(and (= x_74 true)
			(= x_73 nil_2)
			(models_3 x_73 (Not_0 x_18) nil_1))
		(valid_0 x_74 x_18))))
(assert (forall ((p_2 Form_0) (x_75 Bool) (x_76 Bool))
	(=>	(and (not (= x_75 x_76))
			(valid_0 x_75 (x_0 p_2 p_2))
			(valid_0 x_76 p_2))
		false)))
(check-sat)
