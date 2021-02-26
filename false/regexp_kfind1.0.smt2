(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_89 Nat_0) (x_88 Nat_0))
	(=> (= x_89 (S_0 x_88))
	    (unS_1 x_88 x_89))))
(assert (isZ_0 Z_0))
(assert (forall ((x_90 Nat_0))
	(isS_0 (S_0 x_90))))
(assert (forall ((x_91 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_91))))
(assert (forall ((x_92 Nat_0))
	(diseqNat_0 (S_0 x_92) Z_0)))
(assert (forall ((x_93 Nat_0) (x_94 Nat_0))
	(=> (diseqNat_0 x_93 x_94)
	    (diseqNat_0 (S_0 x_93) (S_0 x_94)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_8 Nat_0))
	(add_0 y_8 Z_0 y_8)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0) (r_4 Nat_0))
	(=> (add_0 r_4 x_86 y_8)
	    (add_0 (S_0 r_4) (S_0 x_86) y_8))))
(assert (forall ((y_8 Nat_0))
	(minus_0 Z_0 Z_0 y_8)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0) (r_4 Nat_0))
	(=> (minus_0 r_4 x_86 y_8)
	    (minus_0 (S_0 r_4) (S_0 x_86) y_8))))
(assert (forall ((y_8 Nat_0))
	(le_0 Z_0 y_8)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (le_0 x_86 y_8)
	    (le_0 (S_0 x_86) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(ge_0 y_8 Z_0)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (ge_0 x_86 y_8)
	    (ge_0 (S_0 x_86) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(lt_0 Z_0 (S_0 y_8))))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_86 y_8)
	    (lt_0 (S_0 x_86) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(gt_0 (S_0 y_8) Z_0)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (gt_0 x_86 y_8)
	    (gt_0 (S_0 x_86) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(mult_0 Z_0 Z_0 y_8)))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0) (r_4 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_4 x_86 y_8)
			(add_0 z_4 r_4 y_8))
		(mult_0 z_4 (S_0 x_86) y_8))))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_86 y_8)
	    (div_0 Z_0 x_86 y_8))))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0) (r_4 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_86 y_8)
			(minus_0 z_4 x_86 y_8)
			(div_0 r_4 z_4 y_8))
		(div_0 (S_0 r_4) x_86 y_8))))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_86 y_8)
	    (mod_0 x_86 x_86 y_8))))
(assert (forall ((x_86 Nat_0) (y_8 Nat_0) (r_4 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_86 y_8)
			(minus_0 z_4 x_86 y_8)
			(mod_0 r_4 z_4 y_8))
		(mod_0 r_4 x_86 y_8))))
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
(declare-datatypes ((T_0 0)) (((A_0 ) (B_0 ) (C_0 ))))
(declare-fun diseqT_0 (T_0 T_0) Bool)
(declare-fun isA_0 (T_0) Bool)
(declare-fun isB_0 (T_0) Bool)
(declare-fun isC_0 (T_0) Bool)
(assert (isA_0 A_0))
(assert (isB_0 B_0))
(assert (isC_0 C_0))
(assert (diseqT_0 A_0 B_0))
(assert (diseqT_0 A_0 C_0))
(assert (diseqT_0 B_0 A_0))
(assert (diseqT_0 C_0 A_0))
(assert (diseqT_0 B_0 C_0))
(assert (diseqT_0 C_0 B_0))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 T_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_4 (T_0 list_1) Bool)
(declare-fun tail_4 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_115 list_1) (x_113 T_0) (x_114 list_1))
	(=> (= x_115 (cons_1 x_113 x_114))
	    (head_4 x_113 x_115))))
(assert (forall ((x_115 list_1) (x_113 T_0) (x_114 list_1))
	(=> (= x_115 (cons_1 x_113 x_114))
	    (tail_4 x_114 x_115))))
(assert (isnil_1 nil_1))
(assert (forall ((x_116 T_0) (x_117 list_1))
	(iscons_1 (cons_1 x_116 x_117))))
(assert (forall ((x_118 T_0) (x_119 list_1))
	(diseqlist_1 nil_1 (cons_1 x_118 x_119))))
(assert (forall ((x_120 T_0) (x_121 list_1))
	(diseqlist_1 (cons_1 x_120 x_121) nil_1)))
(assert (forall ((x_122 T_0) (x_123 list_1) (x_124 T_0) (x_125 list_1))
	(=> (diseqT_0 x_122 x_124)
	    (diseqlist_1 (cons_1 x_122 x_123) (cons_1 x_124 x_125)))))
(assert (forall ((x_122 T_0) (x_123 list_1) (x_124 T_0) (x_125 list_1))
	(=> (diseqlist_1 x_123 x_125)
	    (diseqlist_1 (cons_1 x_122 x_123) (cons_1 x_124 x_125)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_1) (projpair_1 list_1)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_1 pair_0) Bool)
(declare-fun projpair_3 (list_1 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_128 pair_0) (x_126 list_1) (x_127 list_1))
	(=> (= x_128 (pair_1 x_126 x_127))
	    (projpair_2 x_126 x_128))))
(assert (forall ((x_128 pair_0) (x_126 list_1) (x_127 list_1))
	(=> (= x_128 (pair_1 x_126 x_127))
	    (projpair_3 x_127 x_128))))
(assert (forall ((x_129 list_1) (x_130 list_1))
	(ispair_0 (pair_1 x_129 x_130))))
(assert (forall ((x_131 list_1) (x_132 list_1) (x_133 list_1) (x_134 list_1))
	(=> (diseqlist_1 x_131 x_133)
	    (diseqpair_0 (pair_1 x_131 x_132) (pair_1 x_133 x_134)))))
(assert (forall ((x_131 list_1) (x_132 list_1) (x_133 list_1) (x_134 list_1))
	(=> (diseqlist_1 x_132 x_134)
	    (diseqpair_0 (pair_1 x_131 x_132) (pair_1 x_133 x_134)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_5 (pair_0 list_2) Bool)
(declare-fun tail_5 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_138 list_2) (x_136 pair_0) (x_137 list_2))
	(=> (= x_138 (cons_2 x_136 x_137))
	    (head_5 x_136 x_138))))
(assert (forall ((x_138 list_2) (x_136 pair_0) (x_137 list_2))
	(=> (= x_138 (cons_2 x_136 x_137))
	    (tail_5 x_137 x_138))))
(assert (isnil_2 nil_2))
(assert (forall ((x_139 pair_0) (x_140 list_2))
	(iscons_2 (cons_2 x_139 x_140))))
(assert (forall ((x_141 pair_0) (x_142 list_2))
	(diseqlist_2 nil_2 (cons_2 x_141 x_142))))
(assert (forall ((x_143 pair_0) (x_144 list_2))
	(diseqlist_2 (cons_2 x_143 x_144) nil_2)))
(assert (forall ((x_145 pair_0) (x_146 list_2) (x_147 pair_0) (x_148 list_2))
	(=> (diseqpair_0 x_145 x_147)
	    (diseqlist_2 (cons_2 x_145 x_146) (cons_2 x_147 x_148)))))
(assert (forall ((x_145 pair_0) (x_146 list_2) (x_147 pair_0) (x_148 list_2))
	(=> (diseqlist_2 x_146 x_148)
	    (diseqlist_2 (cons_2 x_145 x_146) (cons_2 x_147 x_148)))))
(declare-datatypes ((R_0 0)) (((Nil_0 ) (Eps_0 ) (Atom_0 (projAtom_0 T_0)) (x_0 (proj_0 R_0) (proj_1 R_0)) (x_1 (proj_2 R_0) (proj_3 R_0)) (Star_0 (projStar_0 R_0)))))
(declare-fun diseqR_0 (R_0 R_0) Bool)
(declare-fun projAtom_1 (T_0 R_0) Bool)
(declare-fun proj_4 (R_0 R_0) Bool)
(declare-fun proj_5 (R_0 R_0) Bool)
(declare-fun proj_6 (R_0 R_0) Bool)
(declare-fun proj_7 (R_0 R_0) Bool)
(declare-fun projStar_1 (R_0 R_0) Bool)
(declare-fun isNil_0 (R_0) Bool)
(declare-fun isEps_0 (R_0) Bool)
(declare-fun isAtom_0 (R_0) Bool)
(declare-fun isx_0 (R_0) Bool)
(declare-fun isx_1 (R_0) Bool)
(declare-fun isStar_0 (R_0) Bool)
(assert (forall ((x_152 R_0) (x_151 T_0))
	(=> (= x_152 (Atom_0 x_151))
	    (projAtom_1 x_151 x_152))))
(assert (forall ((x_155 R_0) (x_153 R_0) (x_154 R_0))
	(=> (= x_155 (x_0 x_153 x_154))
	    (proj_4 x_153 x_155))))
(assert (forall ((x_155 R_0) (x_153 R_0) (x_154 R_0))
	(=> (= x_155 (x_0 x_153 x_154))
	    (proj_5 x_154 x_155))))
(assert (forall ((x_158 R_0) (x_156 R_0) (x_157 R_0))
	(=> (= x_158 (x_1 x_156 x_157))
	    (proj_6 x_156 x_158))))
(assert (forall ((x_158 R_0) (x_156 R_0) (x_157 R_0))
	(=> (= x_158 (x_1 x_156 x_157))
	    (proj_7 x_157 x_158))))
(assert (forall ((x_160 R_0) (x_159 R_0))
	(=> (= x_160 (Star_0 x_159))
	    (projStar_1 x_159 x_160))))
(assert (isNil_0 Nil_0))
(assert (isEps_0 Eps_0))
(assert (forall ((x_161 T_0))
	(isAtom_0 (Atom_0 x_161))))
(assert (forall ((x_162 R_0) (x_163 R_0))
	(isx_0 (x_0 x_162 x_163))))
(assert (forall ((x_164 R_0) (x_165 R_0))
	(isx_1 (x_1 x_164 x_165))))
(assert (forall ((x_166 R_0))
	(isStar_0 (Star_0 x_166))))
(assert (diseqR_0 Nil_0 Eps_0))
(assert (forall ((x_167 T_0))
	(diseqR_0 Nil_0 (Atom_0 x_167))))
(assert (forall ((x_168 R_0) (x_169 R_0))
	(diseqR_0 Nil_0 (x_0 x_168 x_169))))
(assert (forall ((x_170 R_0) (x_171 R_0))
	(diseqR_0 Nil_0 (x_1 x_170 x_171))))
(assert (forall ((x_172 R_0))
	(diseqR_0 Nil_0 (Star_0 x_172))))
(assert (diseqR_0 Eps_0 Nil_0))
(assert (forall ((x_173 T_0))
	(diseqR_0 (Atom_0 x_173) Nil_0)))
(assert (forall ((x_174 R_0) (x_175 R_0))
	(diseqR_0 (x_0 x_174 x_175) Nil_0)))
(assert (forall ((x_176 R_0) (x_177 R_0))
	(diseqR_0 (x_1 x_176 x_177) Nil_0)))
(assert (forall ((x_178 R_0))
	(diseqR_0 (Star_0 x_178) Nil_0)))
(assert (forall ((x_179 T_0))
	(diseqR_0 Eps_0 (Atom_0 x_179))))
(assert (forall ((x_180 R_0) (x_181 R_0))
	(diseqR_0 Eps_0 (x_0 x_180 x_181))))
(assert (forall ((x_182 R_0) (x_183 R_0))
	(diseqR_0 Eps_0 (x_1 x_182 x_183))))
(assert (forall ((x_184 R_0))
	(diseqR_0 Eps_0 (Star_0 x_184))))
(assert (forall ((x_185 T_0))
	(diseqR_0 (Atom_0 x_185) Eps_0)))
(assert (forall ((x_186 R_0) (x_187 R_0))
	(diseqR_0 (x_0 x_186 x_187) Eps_0)))
(assert (forall ((x_188 R_0) (x_189 R_0))
	(diseqR_0 (x_1 x_188 x_189) Eps_0)))
(assert (forall ((x_190 R_0))
	(diseqR_0 (Star_0 x_190) Eps_0)))
(assert (forall ((x_191 T_0) (x_192 R_0) (x_193 R_0))
	(diseqR_0 (Atom_0 x_191) (x_0 x_192 x_193))))
(assert (forall ((x_194 T_0) (x_195 R_0) (x_196 R_0))
	(diseqR_0 (Atom_0 x_194) (x_1 x_195 x_196))))
(assert (forall ((x_197 T_0) (x_198 R_0))
	(diseqR_0 (Atom_0 x_197) (Star_0 x_198))))
(assert (forall ((x_199 R_0) (x_200 R_0) (x_201 T_0))
	(diseqR_0 (x_0 x_199 x_200) (Atom_0 x_201))))
(assert (forall ((x_202 R_0) (x_203 R_0) (x_204 T_0))
	(diseqR_0 (x_1 x_202 x_203) (Atom_0 x_204))))
(assert (forall ((x_205 R_0) (x_206 T_0))
	(diseqR_0 (Star_0 x_205) (Atom_0 x_206))))
(assert (forall ((x_207 R_0) (x_208 R_0) (x_209 R_0) (x_210 R_0))
	(diseqR_0 (x_0 x_207 x_208) (x_1 x_209 x_210))))
(assert (forall ((x_211 R_0) (x_212 R_0) (x_213 R_0))
	(diseqR_0 (x_0 x_211 x_212) (Star_0 x_213))))
(assert (forall ((x_214 R_0) (x_215 R_0) (x_216 R_0) (x_217 R_0))
	(diseqR_0 (x_1 x_214 x_215) (x_0 x_216 x_217))))
(assert (forall ((x_218 R_0) (x_219 R_0) (x_220 R_0))
	(diseqR_0 (Star_0 x_218) (x_0 x_219 x_220))))
(assert (forall ((x_221 R_0) (x_222 R_0) (x_223 R_0))
	(diseqR_0 (x_1 x_221 x_222) (Star_0 x_223))))
(assert (forall ((x_224 R_0) (x_225 R_0) (x_226 R_0))
	(diseqR_0 (Star_0 x_224) (x_1 x_225 x_226))))
(assert (forall ((x_227 T_0) (x_228 T_0))
	(=> (diseqT_0 x_227 x_228)
	    (diseqR_0 (Atom_0 x_227) (Atom_0 x_228)))))
(assert (forall ((x_229 R_0) (x_230 R_0) (x_231 R_0) (x_232 R_0))
	(=> (diseqR_0 x_229 x_231)
	    (diseqR_0 (x_0 x_229 x_230) (x_0 x_231 x_232)))))
(assert (forall ((x_229 R_0) (x_230 R_0) (x_231 R_0) (x_232 R_0))
	(=> (diseqR_0 x_230 x_232)
	    (diseqR_0 (x_0 x_229 x_230) (x_0 x_231 x_232)))))
(assert (forall ((x_233 R_0) (x_234 R_0) (x_235 R_0) (x_236 R_0))
	(=> (diseqR_0 x_233 x_235)
	    (diseqR_0 (x_1 x_233 x_234) (x_1 x_235 x_236)))))
(assert (forall ((x_233 R_0) (x_234 R_0) (x_235 R_0) (x_236 R_0))
	(=> (diseqR_0 x_234 x_236)
	    (diseqR_0 (x_1 x_233 x_234) (x_1 x_235 x_236)))))
(assert (forall ((x_237 R_0) (x_238 R_0))
	(=> (diseqR_0 x_237 x_238)
	    (diseqR_0 (Star_0 x_237) (Star_0 x_238)))))
(declare-fun splits_0 (list_2 T_0 list_2) Bool)
(assert (forall ((x_2 T_0) (y_0 list_2) (z_0 pair_0) (x_3 list_2) (bs_0 list_1) (cs_0 list_1) (x_20 list_2) (x_21 list_2))
	(=>	(and (= x_20 (cons_2 (pair_1 (cons_1 x_2 bs_0) cs_0) x_21))
			(splits_0 x_21 x_2 x_3)
			(= y_0 (cons_2 z_0 x_3))
			(= z_0 (pair_1 bs_0 cs_0)))
		(splits_0 x_20 x_2 y_0))))
(assert (forall ((x_2 T_0) (y_0 list_2) (x_22 list_2))
	(=>	(and (= x_22 nil_2)
			(= y_0 nil_2))
		(splits_0 x_22 x_2 y_0))))
(declare-fun splits_1 (list_2 list_1) Bool)
(assert (forall ((x_4 list_1) (y_1 T_0) (xs_0 list_1) (x_23 list_2) (x_24 list_2) (x_25 list_2))
	(=>	(and (= x_23 (cons_2 (pair_1 nil_1 (cons_1 y_1 xs_0)) x_25))
			(splits_1 x_24 xs_0)
			(splits_0 x_25 y_1 x_24)
			(= x_4 (cons_1 y_1 xs_0)))
		(splits_1 x_23 x_4))))
(assert (forall ((x_4 list_1) (x_26 list_2))
	(=>	(and (= x_26 (cons_2 (pair_1 nil_1 nil_1) nil_2))
			(= x_4 nil_1))
		(splits_1 x_26 x_4))))
(declare-fun or_0 (Bool list_0) Bool)
(assert (forall ((x_5 list_0) (y_2 Bool) (xs_1 list_0) (x_27 Bool) (x_28 Bool))
	(=>	(and (= x_27 (or y_2 x_28))
			(or_0 x_28 xs_1)
			(= x_5 (cons_0 y_2 xs_1)))
		(or_0 x_27 x_5))))
(assert (forall ((x_5 list_0) (x_29 Bool))
	(=>	(and (= x_29 false)
			(= x_5 nil_0))
		(or_0 x_29 x_5))))
(declare-fun eps_0 (Bool R_0) Bool)
(assert (forall ((x_6 R_0) (y_3 R_0) (x_30 Bool))
	(=>	(and (= x_30 true)
			(= x_6 (Star_0 y_3)))
		(eps_0 x_30 x_6))))
(assert (forall ((x_6 R_0) (r_0 R_0) (q_0 R_0) (x_31 Bool) (x_32 Bool) (x_33 Bool))
	(=>	(and (= x_31 (and x_32 x_33))
			(eps_0 x_32 r_0)
			(eps_0 x_33 q_0)
			(= x_6 (x_1 r_0 q_0)))
		(eps_0 x_31 x_6))))
(assert (forall ((x_6 R_0) (p_0 R_0) (q_1 R_0) (x_34 Bool) (x_35 Bool) (x_36 Bool))
	(=>	(and (= x_34 (or x_35 x_36))
			(eps_0 x_35 p_0)
			(eps_0 x_36 q_1)
			(= x_6 (x_0 p_0 q_1)))
		(eps_0 x_34 x_6))))
(assert (forall ((x_6 R_0) (x_37 Bool))
	(=>	(and (= x_37 true)
			(= x_6 Eps_0))
		(eps_0 x_37 x_6))))
(assert (forall ((x_6 R_0) (x_19 T_0) (x_7 R_0) (x_38 Bool))
	(=>	(and (= x_38 false)
			(= x_6 (Atom_0 x_19)))
		(eps_0 x_38 x_6))))
(assert (forall ((x_6 R_0) (x_7 R_0) (x_39 Bool))
	(=>	(and (= x_39 false)
			(= x_6 Nil_0))
		(eps_0 x_39 x_6))))
(declare-fun step_0 (R_0 R_0 T_0) Bool)
(assert (forall ((x_8 R_0) (y_4 T_0) (p_1 R_0) (x_40 R_0) (x_41 R_0))
	(=>	(and (= x_40 (x_1 x_41 (Star_0 p_1)))
			(step_0 x_41 p_1 y_4)
			(= x_8 (Star_0 p_1)))
		(step_0 x_40 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (r_1 R_0) (q_2 R_0) (x_43 R_0) (x_44 R_0) (x_45 R_0) (x_42 Bool))
	(=>	(and (= x_43 (x_0 (x_1 x_44 q_2) x_45))
			(step_0 x_44 r_1 y_4)
			(step_0 x_45 q_2 y_4)
			(= x_8 (x_1 r_1 q_2))
			(= x_42 true)
			(eps_0 x_42 r_1))
		(step_0 x_43 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (r_1 R_0) (q_2 R_0) (x_47 R_0) (x_48 R_0) (x_46 Bool))
	(=>	(and (= x_47 (x_0 (x_1 x_48 q_2) Nil_0))
			(step_0 x_48 r_1 y_4)
			(= x_8 (x_1 r_1 q_2))
			(= x_46 false)
			(eps_0 x_46 r_1))
		(step_0 x_47 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (p_2 R_0) (q_3 R_0) (x_49 R_0) (x_50 R_0) (x_51 R_0))
	(=>	(and (= x_49 (x_0 x_50 x_51))
			(step_0 x_50 p_2 y_4)
			(step_0 x_51 q_3 y_4)
			(= x_8 (x_0 p_2 q_3)))
		(step_0 x_49 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (b_0 T_0) (x_52 R_0))
	(=>	(and (= x_52 Eps_0)
			(= x_8 (Atom_0 b_0))
			(= b_0 y_4))
		(step_0 x_52 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (b_0 T_0) (x_53 R_0))
	(=>	(and (= x_53 Nil_0)
			(= x_8 (Atom_0 b_0))
			(diseqT_0 b_0 y_4))
		(step_0 x_53 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (x_9 R_0) (x_54 R_0))
	(=>	(and (= x_54 Nil_0)
			(= x_8 Eps_0))
		(step_0 x_54 x_8 y_4))))
(assert (forall ((x_8 R_0) (y_4 T_0) (x_9 R_0) (x_55 R_0))
	(=>	(and (= x_55 Nil_0)
			(= x_8 Nil_0))
		(step_0 x_55 x_8 y_4))))
(declare-fun rec_0 (Bool R_0 list_1) Bool)
(assert (forall ((x_10 R_0) (y_5 list_1) (z_1 T_0) (xs_2 list_1) (x_56 Bool) (x_57 R_0) (x_58 Bool))
	(=>	(and (= x_56 x_58)
			(step_0 x_57 x_10 z_1)
			(rec_0 x_58 x_57 xs_2)
			(= y_5 (cons_1 z_1 xs_2)))
		(rec_0 x_56 x_10 y_5))))
(assert (forall ((x_10 R_0) (y_5 list_1) (x_59 Bool) (x_60 Bool))
	(=>	(and (= x_59 x_60)
			(eps_0 x_60 x_10)
			(= y_5 nil_1))
		(rec_0 x_59 x_10 y_5))))
(declare-fun reck_0 (Bool R_0 list_1) Bool)
(declare-fun reck_1 (list_0 R_0 R_0 list_2) Bool)
(assert (forall ((x_11 R_0) (y_6 list_1) (p_3 R_0) (x_12 T_0) (x_13 list_1) (x_62 Bool) (x_63 Bool) (x_61 Bool))
	(=>	(and (= x_62 x_63)
			(rec_0 x_63 (x_1 p_3 (Star_0 p_3)) (cons_1 x_12 x_13))
			(= x_11 (Star_0 p_3))
			(= y_6 (cons_1 x_12 x_13))
			(= x_61 false)
			(eps_0 x_61 p_3))
		(reck_0 x_62 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (p_3 R_0) (x_12 T_0) (x_13 list_1) (x_65 Bool) (x_64 Bool))
	(=>	(and (= x_65 false)
			(= x_11 (Star_0 p_3))
			(= y_6 (cons_1 x_12 x_13))
			(= x_64 true)
			(eps_0 x_64 p_3))
		(reck_0 x_65 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (p_3 R_0) (x_66 Bool))
	(=>	(and (= x_66 true)
			(= x_11 (Star_0 p_3))
			(= y_6 nil_1))
		(reck_0 x_66 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (r_2 R_0) (q_4 R_0) (x_67 Bool) (x_68 list_2) (x_69 list_0) (x_70 Bool))
	(=>	(and (= x_67 x_70)
			(splits_1 x_68 y_6)
			(reck_1 x_69 r_2 q_4 x_68)
			(or_0 x_70 x_69)
			(= x_11 (x_1 r_2 q_4)))
		(reck_0 x_67 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (p_4 R_0) (q_5 R_0) (x_71 Bool) (x_72 Bool) (x_73 Bool))
	(=>	(and (= x_71 (or x_72 x_73))
			(reck_0 x_72 p_4 y_6)
			(reck_0 x_73 q_5 y_6)
			(= x_11 (x_0 p_4 q_5)))
		(reck_0 x_71 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (c_0 T_0) (b_1 T_0) (x_14 list_1) (x_15 T_0) (x_16 list_1) (x_74 Bool))
	(=>	(and (= x_74 false)
			(= x_11 (Atom_0 c_0))
			(= y_6 (cons_1 b_1 x_14))
			(= x_14 (cons_1 x_15 x_16)))
		(reck_0 x_74 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (c_0 T_0) (b_1 T_0) (x_14 list_1) (x_75 Bool))
	(=>	(and (= x_75 (= c_0 b_1))
			(= x_11 (Atom_0 c_0))
			(= y_6 (cons_1 b_1 x_14))
			(= x_14 nil_1))
		(reck_0 x_75 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (c_0 T_0) (x_76 Bool))
	(=>	(and (= x_76 false)
			(= x_11 (Atom_0 c_0))
			(= y_6 nil_1))
		(reck_0 x_76 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (z_2 T_0) (x_17 list_1) (x_77 Bool))
	(=>	(and (= x_77 false)
			(= x_11 Eps_0)
			(= y_6 (cons_1 z_2 x_17)))
		(reck_0 x_77 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (x_78 Bool))
	(=>	(and (= x_78 true)
			(= x_11 Eps_0)
			(= y_6 nil_1))
		(reck_0 x_78 x_11 y_6))))
(assert (forall ((x_11 R_0) (y_6 list_1) (x_79 Bool))
	(=>	(and (= x_79 false)
			(= x_11 Nil_0))
		(reck_0 x_79 x_11 y_6))))
(assert (forall ((p_5 R_0) (q_6 R_0) (x_18 list_2) (y_7 pair_0) (z_3 list_2) (l_0 list_1) (r_3 list_1) (x_80 list_0) (x_81 Bool) (x_82 Bool) (x_83 list_0))
	(=>	(and (= x_80 (cons_0 (and x_81 x_82) x_83))
			(reck_0 x_81 p_5 l_0)
			(rec_0 x_82 q_6 r_3)
			(reck_1 x_83 p_5 q_6 z_3)
			(= x_18 (cons_2 y_7 z_3))
			(= y_7 (pair_1 l_0 r_3)))
		(reck_1 x_80 p_5 q_6 x_18))))
(assert (forall ((p_5 R_0) (q_6 R_0) (x_18 list_2) (x_84 list_0))
	(=>	(and (= x_84 nil_0)
			(= x_18 nil_2))
		(reck_1 x_84 p_5 q_6 x_18))))
(assert (forall ((p_6 R_0) (x_85 Bool))
	(=>	(and (= x_85 true)
			(reck_0 x_85 p_6 (cons_1 A_0 (cons_1 B_0 (cons_1 B_0 nil_1)))))
		false)))
(check-sat)