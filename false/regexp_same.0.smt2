(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_106 Nat_0) (x_105 Nat_0))
	(=> (= x_106 (S_0 x_105))
	    (unS_1 x_105 x_106))))
(assert (isZ_0 Z_0))
(assert (forall ((x_107 Nat_0))
	(isS_0 (S_0 x_107))))
(assert (forall ((x_108 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_108))))
(assert (forall ((x_109 Nat_0))
	(diseqNat_0 (S_0 x_109) Z_0)))
(assert (forall ((x_110 Nat_0) (x_111 Nat_0))
	(=> (diseqNat_0 x_110 x_111)
	    (diseqNat_0 (S_0 x_110) (S_0 x_111)))))
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
(assert (forall ((x_103 Nat_0) (y_8 Nat_0) (r_5 Nat_0))
	(=> (add_0 r_5 x_103 y_8)
	    (add_0 (S_0 r_5) (S_0 x_103) y_8))))
(assert (forall ((y_8 Nat_0))
	(minus_0 Z_0 Z_0 y_8)))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0) (r_5 Nat_0))
	(=> (minus_0 r_5 x_103 y_8)
	    (minus_0 (S_0 r_5) (S_0 x_103) y_8))))
(assert (forall ((y_8 Nat_0))
	(le_0 Z_0 y_8)))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (le_0 x_103 y_8)
	    (le_0 (S_0 x_103) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(ge_0 y_8 Z_0)))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (ge_0 x_103 y_8)
	    (ge_0 (S_0 x_103) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(lt_0 Z_0 (S_0 y_8))))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_103 y_8)
	    (lt_0 (S_0 x_103) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(gt_0 (S_0 y_8) Z_0)))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (gt_0 x_103 y_8)
	    (gt_0 (S_0 x_103) (S_0 y_8)))))
(assert (forall ((y_8 Nat_0))
	(mult_0 Z_0 Z_0 y_8)))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0) (r_5 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_5 x_103 y_8)
			(add_0 z_4 r_5 y_8))
		(mult_0 z_4 (S_0 x_103) y_8))))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_103 y_8)
	    (div_0 Z_0 x_103 y_8))))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0) (r_5 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_103 y_8)
			(minus_0 z_4 x_103 y_8)
			(div_0 r_5 z_4 y_8))
		(div_0 (S_0 r_5) x_103 y_8))))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0))
	(=> (lt_0 x_103 y_8)
	    (mod_0 x_103 x_103 y_8))))
(assert (forall ((x_103 Nat_0) (y_8 Nat_0) (r_5 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_103 y_8)
			(minus_0 z_4 x_103 y_8)
			(mod_0 r_5 z_4 y_8))
		(mod_0 r_5 x_103 y_8))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_3 (Bool list_0) Bool)
(declare-fun tail_3 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_115 list_0) (x_113 Bool) (x_114 list_0))
	(=> (= x_115 (cons_0 x_113 x_114))
	    (head_3 x_113 x_115))))
(assert (forall ((x_115 list_0) (x_113 Bool) (x_114 list_0))
	(=> (= x_115 (cons_0 x_113 x_114))
	    (tail_3 x_114 x_115))))
(assert (isnil_0 nil_0))
(assert (forall ((x_116 Bool) (x_117 list_0))
	(iscons_0 (cons_0 x_116 x_117))))
(assert (forall ((x_118 Bool) (x_119 list_0))
	(diseqlist_0 nil_0 (cons_0 x_118 x_119))))
(assert (forall ((x_120 Bool) (x_121 list_0))
	(diseqlist_0 (cons_0 x_120 x_121) nil_0)))
(assert (forall ((x_122 Bool) (x_123 list_0) (x_124 Bool) (x_125 list_0))
	(=> (not (= x_122 x_124))
	    (diseqlist_0 (cons_0 x_122 x_123) (cons_0 x_124 x_125)))))
(assert (forall ((x_122 Bool) (x_123 list_0) (x_124 Bool) (x_125 list_0))
	(=> (diseqlist_0 x_123 x_125)
	    (diseqlist_0 (cons_0 x_122 x_123) (cons_0 x_124 x_125)))))
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
(assert (forall ((x_132 list_1) (x_130 T_0) (x_131 list_1))
	(=> (= x_132 (cons_1 x_130 x_131))
	    (head_4 x_130 x_132))))
(assert (forall ((x_132 list_1) (x_130 T_0) (x_131 list_1))
	(=> (= x_132 (cons_1 x_130 x_131))
	    (tail_4 x_131 x_132))))
(assert (isnil_1 nil_1))
(assert (forall ((x_133 T_0) (x_134 list_1))
	(iscons_1 (cons_1 x_133 x_134))))
(assert (forall ((x_135 T_0) (x_136 list_1))
	(diseqlist_1 nil_1 (cons_1 x_135 x_136))))
(assert (forall ((x_137 T_0) (x_138 list_1))
	(diseqlist_1 (cons_1 x_137 x_138) nil_1)))
(assert (forall ((x_139 T_0) (x_140 list_1) (x_141 T_0) (x_142 list_1))
	(=> (diseqT_0 x_139 x_141)
	    (diseqlist_1 (cons_1 x_139 x_140) (cons_1 x_141 x_142)))))
(assert (forall ((x_139 T_0) (x_140 list_1) (x_141 T_0) (x_142 list_1))
	(=> (diseqlist_1 x_140 x_142)
	    (diseqlist_1 (cons_1 x_139 x_140) (cons_1 x_141 x_142)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_1) (projpair_1 list_1)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_1 pair_0) Bool)
(declare-fun projpair_3 (list_1 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_145 pair_0) (x_143 list_1) (x_144 list_1))
	(=> (= x_145 (pair_1 x_143 x_144))
	    (projpair_2 x_143 x_145))))
(assert (forall ((x_145 pair_0) (x_143 list_1) (x_144 list_1))
	(=> (= x_145 (pair_1 x_143 x_144))
	    (projpair_3 x_144 x_145))))
(assert (forall ((x_146 list_1) (x_147 list_1))
	(ispair_0 (pair_1 x_146 x_147))))
(assert (forall ((x_148 list_1) (x_149 list_1) (x_150 list_1) (x_151 list_1))
	(=> (diseqlist_1 x_148 x_150)
	    (diseqpair_0 (pair_1 x_148 x_149) (pair_1 x_150 x_151)))))
(assert (forall ((x_148 list_1) (x_149 list_1) (x_150 list_1) (x_151 list_1))
	(=> (diseqlist_1 x_149 x_151)
	    (diseqpair_0 (pair_1 x_148 x_149) (pair_1 x_150 x_151)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_5 (pair_0 list_2) Bool)
(declare-fun tail_5 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_155 list_2) (x_153 pair_0) (x_154 list_2))
	(=> (= x_155 (cons_2 x_153 x_154))
	    (head_5 x_153 x_155))))
(assert (forall ((x_155 list_2) (x_153 pair_0) (x_154 list_2))
	(=> (= x_155 (cons_2 x_153 x_154))
	    (tail_5 x_154 x_155))))
(assert (isnil_2 nil_2))
(assert (forall ((x_156 pair_0) (x_157 list_2))
	(iscons_2 (cons_2 x_156 x_157))))
(assert (forall ((x_158 pair_0) (x_159 list_2))
	(diseqlist_2 nil_2 (cons_2 x_158 x_159))))
(assert (forall ((x_160 pair_0) (x_161 list_2))
	(diseqlist_2 (cons_2 x_160 x_161) nil_2)))
(assert (forall ((x_162 pair_0) (x_163 list_2) (x_164 pair_0) (x_165 list_2))
	(=> (diseqpair_0 x_162 x_164)
	    (diseqlist_2 (cons_2 x_162 x_163) (cons_2 x_164 x_165)))))
(assert (forall ((x_162 pair_0) (x_163 list_2) (x_164 pair_0) (x_165 list_2))
	(=> (diseqlist_2 x_163 x_165)
	    (diseqlist_2 (cons_2 x_162 x_163) (cons_2 x_164 x_165)))))
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
(assert (forall ((x_169 R_0) (x_168 T_0))
	(=> (= x_169 (Atom_0 x_168))
	    (projAtom_1 x_168 x_169))))
(assert (forall ((x_172 R_0) (x_170 R_0) (x_171 R_0))
	(=> (= x_172 (x_0 x_170 x_171))
	    (proj_4 x_170 x_172))))
(assert (forall ((x_172 R_0) (x_170 R_0) (x_171 R_0))
	(=> (= x_172 (x_0 x_170 x_171))
	    (proj_5 x_171 x_172))))
(assert (forall ((x_175 R_0) (x_173 R_0) (x_174 R_0))
	(=> (= x_175 (x_1 x_173 x_174))
	    (proj_6 x_173 x_175))))
(assert (forall ((x_175 R_0) (x_173 R_0) (x_174 R_0))
	(=> (= x_175 (x_1 x_173 x_174))
	    (proj_7 x_174 x_175))))
(assert (forall ((x_177 R_0) (x_176 R_0))
	(=> (= x_177 (Star_0 x_176))
	    (projStar_1 x_176 x_177))))
(assert (isNil_0 Nil_0))
(assert (isEps_0 Eps_0))
(assert (forall ((x_178 T_0))
	(isAtom_0 (Atom_0 x_178))))
(assert (forall ((x_179 R_0) (x_180 R_0))
	(isx_0 (x_0 x_179 x_180))))
(assert (forall ((x_181 R_0) (x_182 R_0))
	(isx_1 (x_1 x_181 x_182))))
(assert (forall ((x_183 R_0))
	(isStar_0 (Star_0 x_183))))
(assert (diseqR_0 Nil_0 Eps_0))
(assert (forall ((x_184 T_0))
	(diseqR_0 Nil_0 (Atom_0 x_184))))
(assert (forall ((x_185 R_0) (x_186 R_0))
	(diseqR_0 Nil_0 (x_0 x_185 x_186))))
(assert (forall ((x_187 R_0) (x_188 R_0))
	(diseqR_0 Nil_0 (x_1 x_187 x_188))))
(assert (forall ((x_189 R_0))
	(diseqR_0 Nil_0 (Star_0 x_189))))
(assert (diseqR_0 Eps_0 Nil_0))
(assert (forall ((x_190 T_0))
	(diseqR_0 (Atom_0 x_190) Nil_0)))
(assert (forall ((x_191 R_0) (x_192 R_0))
	(diseqR_0 (x_0 x_191 x_192) Nil_0)))
(assert (forall ((x_193 R_0) (x_194 R_0))
	(diseqR_0 (x_1 x_193 x_194) Nil_0)))
(assert (forall ((x_195 R_0))
	(diseqR_0 (Star_0 x_195) Nil_0)))
(assert (forall ((x_196 T_0))
	(diseqR_0 Eps_0 (Atom_0 x_196))))
(assert (forall ((x_197 R_0) (x_198 R_0))
	(diseqR_0 Eps_0 (x_0 x_197 x_198))))
(assert (forall ((x_199 R_0) (x_200 R_0))
	(diseqR_0 Eps_0 (x_1 x_199 x_200))))
(assert (forall ((x_201 R_0))
	(diseqR_0 Eps_0 (Star_0 x_201))))
(assert (forall ((x_202 T_0))
	(diseqR_0 (Atom_0 x_202) Eps_0)))
(assert (forall ((x_203 R_0) (x_204 R_0))
	(diseqR_0 (x_0 x_203 x_204) Eps_0)))
(assert (forall ((x_205 R_0) (x_206 R_0))
	(diseqR_0 (x_1 x_205 x_206) Eps_0)))
(assert (forall ((x_207 R_0))
	(diseqR_0 (Star_0 x_207) Eps_0)))
(assert (forall ((x_208 T_0) (x_209 R_0) (x_210 R_0))
	(diseqR_0 (Atom_0 x_208) (x_0 x_209 x_210))))
(assert (forall ((x_211 T_0) (x_212 R_0) (x_213 R_0))
	(diseqR_0 (Atom_0 x_211) (x_1 x_212 x_213))))
(assert (forall ((x_214 T_0) (x_215 R_0))
	(diseqR_0 (Atom_0 x_214) (Star_0 x_215))))
(assert (forall ((x_216 R_0) (x_217 R_0) (x_218 T_0))
	(diseqR_0 (x_0 x_216 x_217) (Atom_0 x_218))))
(assert (forall ((x_219 R_0) (x_220 R_0) (x_221 T_0))
	(diseqR_0 (x_1 x_219 x_220) (Atom_0 x_221))))
(assert (forall ((x_222 R_0) (x_223 T_0))
	(diseqR_0 (Star_0 x_222) (Atom_0 x_223))))
(assert (forall ((x_224 R_0) (x_225 R_0) (x_226 R_0) (x_227 R_0))
	(diseqR_0 (x_0 x_224 x_225) (x_1 x_226 x_227))))
(assert (forall ((x_228 R_0) (x_229 R_0) (x_230 R_0))
	(diseqR_0 (x_0 x_228 x_229) (Star_0 x_230))))
(assert (forall ((x_231 R_0) (x_232 R_0) (x_233 R_0) (x_234 R_0))
	(diseqR_0 (x_1 x_231 x_232) (x_0 x_233 x_234))))
(assert (forall ((x_235 R_0) (x_236 R_0) (x_237 R_0))
	(diseqR_0 (Star_0 x_235) (x_0 x_236 x_237))))
(assert (forall ((x_238 R_0) (x_239 R_0) (x_240 R_0))
	(diseqR_0 (x_1 x_238 x_239) (Star_0 x_240))))
(assert (forall ((x_241 R_0) (x_242 R_0) (x_243 R_0))
	(diseqR_0 (Star_0 x_241) (x_1 x_242 x_243))))
(assert (forall ((x_244 T_0) (x_245 T_0))
	(=> (diseqT_0 x_244 x_245)
	    (diseqR_0 (Atom_0 x_244) (Atom_0 x_245)))))
(assert (forall ((x_246 R_0) (x_247 R_0) (x_248 R_0) (x_249 R_0))
	(=> (diseqR_0 x_246 x_248)
	    (diseqR_0 (x_0 x_246 x_247) (x_0 x_248 x_249)))))
(assert (forall ((x_246 R_0) (x_247 R_0) (x_248 R_0) (x_249 R_0))
	(=> (diseqR_0 x_247 x_249)
	    (diseqR_0 (x_0 x_246 x_247) (x_0 x_248 x_249)))))
(assert (forall ((x_250 R_0) (x_251 R_0) (x_252 R_0) (x_253 R_0))
	(=> (diseqR_0 x_250 x_252)
	    (diseqR_0 (x_1 x_250 x_251) (x_1 x_252 x_253)))))
(assert (forall ((x_250 R_0) (x_251 R_0) (x_252 R_0) (x_253 R_0))
	(=> (diseqR_0 x_251 x_253)
	    (diseqR_0 (x_1 x_250 x_251) (x_1 x_252 x_253)))))
(assert (forall ((x_254 R_0) (x_255 R_0))
	(=> (diseqR_0 x_254 x_255)
	    (diseqR_0 (Star_0 x_254) (Star_0 x_255)))))
(declare-fun splits_0 (list_2 T_0 list_2) Bool)
(assert (forall ((x_2 T_0) (y_0 list_2) (z_0 pair_0) (x_3 list_2) (bs_0 list_1) (cs_0 list_1) (x_23 list_2) (x_24 list_2))
	(=>	(and (= x_23 (cons_2 (pair_1 (cons_1 x_2 bs_0) cs_0) x_24))
			(splits_0 x_24 x_2 x_3)
			(= y_0 (cons_2 z_0 x_3))
			(= z_0 (pair_1 bs_0 cs_0)))
		(splits_0 x_23 x_2 y_0))))
(assert (forall ((x_2 T_0) (y_0 list_2) (x_25 list_2))
	(=>	(and (= x_25 nil_2)
			(= y_0 nil_2))
		(splits_0 x_25 x_2 y_0))))
(declare-fun splits_1 (list_2 list_1) Bool)
(assert (forall ((x_4 list_1) (y_1 T_0) (xs_0 list_1) (x_26 list_2) (x_27 list_2) (x_28 list_2))
	(=>	(and (= x_26 (cons_2 (pair_1 nil_1 (cons_1 y_1 xs_0)) x_28))
			(splits_1 x_27 xs_0)
			(splits_0 x_28 y_1 x_27)
			(= x_4 (cons_1 y_1 xs_0)))
		(splits_1 x_26 x_4))))
(assert (forall ((x_4 list_1) (x_29 list_2))
	(=>	(and (= x_29 (cons_2 (pair_1 nil_1 nil_1) nil_2))
			(= x_4 nil_1))
		(splits_1 x_29 x_4))))
(declare-fun or_0 (Bool list_0) Bool)
(assert (forall ((x_5 list_0) (y_2 Bool) (xs_1 list_0) (x_30 Bool) (x_31 Bool))
	(=>	(and (= x_30 (or y_2 x_31))
			(or_0 x_31 xs_1)
			(= x_5 (cons_0 y_2 xs_1)))
		(or_0 x_30 x_5))))
(assert (forall ((x_5 list_0) (x_32 Bool))
	(=>	(and (= x_32 false)
			(= x_5 nil_0))
		(or_0 x_32 x_5))))
(declare-fun eps_0 (Bool R_0) Bool)
(assert (forall ((x_6 R_0) (y_3 R_0) (x_33 Bool))
	(=>	(and (= x_33 true)
			(= x_6 (Star_0 y_3)))
		(eps_0 x_33 x_6))))
(assert (forall ((x_6 R_0) (r_0 R_0) (q_0 R_0) (x_34 Bool) (x_35 Bool) (x_36 Bool))
	(=>	(and (= x_34 (and x_35 x_36))
			(eps_0 x_35 r_0)
			(eps_0 x_36 q_0)
			(= x_6 (x_1 r_0 q_0)))
		(eps_0 x_34 x_6))))
(assert (forall ((x_6 R_0) (p_0 R_0) (q_1 R_0) (x_37 Bool) (x_38 Bool) (x_39 Bool))
	(=>	(and (= x_37 (or x_38 x_39))
			(eps_0 x_38 p_0)
			(eps_0 x_39 q_1)
			(= x_6 (x_0 p_0 q_1)))
		(eps_0 x_37 x_6))))
(assert (forall ((x_6 R_0) (x_40 Bool))
	(=>	(and (= x_40 true)
			(= x_6 Eps_0))
		(eps_0 x_40 x_6))))
(assert (forall ((x_6 R_0) (x_21 T_0) (x_7 R_0) (x_41 Bool))
	(=>	(and (= x_41 false)
			(= x_6 (Atom_0 x_21)))
		(eps_0 x_41 x_6))))
(assert (forall ((x_6 R_0) (x_7 R_0) (x_42 Bool))
	(=>	(and (= x_42 false)
			(= x_6 Nil_0))
		(eps_0 x_42 x_6))))
(declare-fun okay_0 (Bool R_0) Bool)
(assert (forall ((x_8 R_0) (p_1 R_0) (x_43 Bool) (x_44 Bool) (x_45 Bool))
	(=>	(and (= x_43 (and x_44 (not x_45)))
			(okay_0 x_44 p_1)
			(eps_0 x_45 p_1)
			(= x_8 (Star_0 p_1)))
		(okay_0 x_43 x_8))))
(assert (forall ((x_8 R_0) (r_1 R_0) (q_2 R_0) (x_46 Bool) (x_47 Bool) (x_48 Bool))
	(=>	(and (= x_46 (and x_47 x_48))
			(okay_0 x_47 r_1)
			(okay_0 x_48 q_2)
			(= x_8 (x_1 r_1 q_2)))
		(okay_0 x_46 x_8))))
(assert (forall ((x_8 R_0) (p_2 R_0) (q_3 R_0) (x_49 Bool) (x_50 Bool) (x_51 Bool))
	(=>	(and (= x_49 (and x_50 x_51))
			(okay_0 x_50 p_2)
			(okay_0 x_51 q_3)
			(= x_8 (x_0 p_2 q_3)))
		(okay_0 x_49 x_8))))
(assert (forall ((x_8 R_0) (x_22 T_0) (x_9 R_0) (x_52 Bool))
	(=>	(and (= x_52 true)
			(= x_8 (Atom_0 x_22)))
		(okay_0 x_52 x_8))))
(assert (forall ((x_8 R_0) (x_9 R_0) (x_53 Bool))
	(=>	(and (= x_53 true)
			(= x_8 Eps_0))
		(okay_0 x_53 x_8))))
(assert (forall ((x_8 R_0) (x_9 R_0) (x_54 Bool))
	(=>	(and (= x_54 true)
			(= x_8 Nil_0))
		(okay_0 x_54 x_8))))
(declare-fun step_0 (R_0 R_0 T_0) Bool)
(assert (forall ((x_10 R_0) (y_4 T_0) (p_3 R_0) (x_55 R_0) (x_56 R_0))
	(=>	(and (= x_55 (x_1 x_56 (Star_0 p_3)))
			(step_0 x_56 p_3 y_4)
			(= x_10 (Star_0 p_3)))
		(step_0 x_55 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (r_2 R_0) (q_4 R_0) (x_58 R_0) (x_59 R_0) (x_60 R_0) (x_57 Bool))
	(=>	(and (= x_58 (x_0 (x_1 x_59 q_4) x_60))
			(step_0 x_59 r_2 y_4)
			(step_0 x_60 q_4 y_4)
			(= x_10 (x_1 r_2 q_4))
			(= x_57 true)
			(eps_0 x_57 r_2))
		(step_0 x_58 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (r_2 R_0) (q_4 R_0) (x_62 R_0) (x_63 R_0) (x_61 Bool))
	(=>	(and (= x_62 (x_0 (x_1 x_63 q_4) Nil_0))
			(step_0 x_63 r_2 y_4)
			(= x_10 (x_1 r_2 q_4))
			(= x_61 false)
			(eps_0 x_61 r_2))
		(step_0 x_62 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (p_4 R_0) (q_5 R_0) (x_64 R_0) (x_65 R_0) (x_66 R_0))
	(=>	(and (= x_64 (x_0 x_65 x_66))
			(step_0 x_65 p_4 y_4)
			(step_0 x_66 q_5 y_4)
			(= x_10 (x_0 p_4 q_5)))
		(step_0 x_64 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (b_0 T_0) (x_67 R_0))
	(=>	(and (= x_67 Eps_0)
			(= x_10 (Atom_0 b_0))
			(= b_0 y_4))
		(step_0 x_67 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (b_0 T_0) (x_68 R_0))
	(=>	(and (= x_68 Nil_0)
			(= x_10 (Atom_0 b_0))
			(diseqT_0 b_0 y_4))
		(step_0 x_68 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (x_11 R_0) (x_69 R_0))
	(=>	(and (= x_69 Nil_0)
			(= x_10 Eps_0))
		(step_0 x_69 x_10 y_4))))
(assert (forall ((x_10 R_0) (y_4 T_0) (x_11 R_0) (x_70 R_0))
	(=>	(and (= x_70 Nil_0)
			(= x_10 Nil_0))
		(step_0 x_70 x_10 y_4))))
(declare-fun rec_0 (Bool R_0 list_1) Bool)
(assert (forall ((x_12 R_0) (y_5 list_1) (z_1 T_0) (xs_2 list_1) (x_71 Bool) (x_72 R_0) (x_73 Bool))
	(=>	(and (= x_71 x_73)
			(step_0 x_72 x_12 z_1)
			(rec_0 x_73 x_72 xs_2)
			(= y_5 (cons_1 z_1 xs_2)))
		(rec_0 x_71 x_12 y_5))))
(assert (forall ((x_12 R_0) (y_5 list_1) (x_74 Bool) (x_75 Bool))
	(=>	(and (= x_74 x_75)
			(eps_0 x_75 x_12)
			(= y_5 nil_1))
		(rec_0 x_74 x_12 y_5))))
(declare-fun reck_0 (Bool R_0 list_1) Bool)
(declare-fun reck_1 (list_0 R_0 R_0 list_2) Bool)
(assert (forall ((x_13 R_0) (y_6 list_1) (p_5 R_0) (x_14 T_0) (x_15 list_1) (x_77 Bool) (x_78 Bool) (x_76 Bool))
	(=>	(and (= x_77 x_78)
			(rec_0 x_78 (x_1 p_5 (Star_0 p_5)) (cons_1 x_14 x_15))
			(= x_13 (Star_0 p_5))
			(= y_6 (cons_1 x_14 x_15))
			(= x_76 false)
			(eps_0 x_76 p_5))
		(reck_0 x_77 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (p_5 R_0) (x_14 T_0) (x_15 list_1) (x_80 Bool) (x_79 Bool))
	(=>	(and (= x_80 false)
			(= x_13 (Star_0 p_5))
			(= y_6 (cons_1 x_14 x_15))
			(= x_79 true)
			(eps_0 x_79 p_5))
		(reck_0 x_80 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (p_5 R_0) (x_81 Bool))
	(=>	(and (= x_81 true)
			(= x_13 (Star_0 p_5))
			(= y_6 nil_1))
		(reck_0 x_81 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (r_3 R_0) (q_6 R_0) (x_82 Bool) (x_83 list_2) (x_84 list_0) (x_85 Bool))
	(=>	(and (= x_82 x_85)
			(splits_1 x_83 y_6)
			(reck_1 x_84 r_3 q_6 x_83)
			(or_0 x_85 x_84)
			(= x_13 (x_1 r_3 q_6)))
		(reck_0 x_82 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (p_6 R_0) (q_7 R_0) (x_86 Bool) (x_87 Bool) (x_88 Bool))
	(=>	(and (= x_86 (or x_87 x_88))
			(reck_0 x_87 p_6 y_6)
			(reck_0 x_88 q_7 y_6)
			(= x_13 (x_0 p_6 q_7)))
		(reck_0 x_86 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (c_0 T_0) (b_1 T_0) (x_16 list_1) (x_17 T_0) (x_18 list_1) (x_89 Bool))
	(=>	(and (= x_89 false)
			(= x_13 (Atom_0 c_0))
			(= y_6 (cons_1 b_1 x_16))
			(= x_16 (cons_1 x_17 x_18)))
		(reck_0 x_89 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (c_0 T_0) (b_1 T_0) (x_16 list_1) (x_90 Bool))
	(=>	(and (= x_90 (= c_0 b_1))
			(= x_13 (Atom_0 c_0))
			(= y_6 (cons_1 b_1 x_16))
			(= x_16 nil_1))
		(reck_0 x_90 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (c_0 T_0) (x_91 Bool))
	(=>	(and (= x_91 false)
			(= x_13 (Atom_0 c_0))
			(= y_6 nil_1))
		(reck_0 x_91 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (z_2 T_0) (x_19 list_1) (x_92 Bool))
	(=>	(and (= x_92 false)
			(= x_13 Eps_0)
			(= y_6 (cons_1 z_2 x_19)))
		(reck_0 x_92 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (x_93 Bool))
	(=>	(and (= x_93 true)
			(= x_13 Eps_0)
			(= y_6 nil_1))
		(reck_0 x_93 x_13 y_6))))
(assert (forall ((x_13 R_0) (y_6 list_1) (x_94 Bool))
	(=>	(and (= x_94 false)
			(= x_13 Nil_0))
		(reck_0 x_94 x_13 y_6))))
(assert (forall ((p_7 R_0) (q_8 R_0) (x_20 list_2) (y_7 pair_0) (z_3 list_2) (l_0 list_1) (r_4 list_1) (x_95 list_0) (x_96 Bool) (x_97 Bool) (x_98 list_0))
	(=>	(and (= x_95 (cons_0 (and x_96 x_97) x_98))
			(reck_0 x_96 p_7 l_0)
			(rec_0 x_97 q_8 r_4)
			(reck_1 x_98 p_7 q_8 z_3)
			(= x_20 (cons_2 y_7 z_3))
			(= y_7 (pair_1 l_0 r_4)))
		(reck_1 x_95 p_7 q_8 x_20))))
(assert (forall ((p_7 R_0) (q_8 R_0) (x_20 list_2) (x_99 list_0))
	(=>	(and (= x_99 nil_0)
			(= x_20 nil_2))
		(reck_1 x_99 p_7 q_8 x_20))))
(assert (forall ((p_8 R_0) (s_0 list_1) (x_100 Bool) (x_101 Bool) (x_102 Bool))
	(=>	(and (not (= x_100 x_101))
			(= x_102 true)
			(rec_0 x_100 p_8 s_0)
			(reck_0 x_101 p_8 s_0)
			(okay_0 x_102 p_8))
		false)))
(check-sat)