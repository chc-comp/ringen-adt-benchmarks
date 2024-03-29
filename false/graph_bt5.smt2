(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_16 ) (Z_17 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_1 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun not_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Nat_0) (tail_1 list_1)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-datatypes ((B_0 0)) (((I_0 ) (O_0 ))))
(declare-datatypes ((list_3 0)) (((nil_3 ) (cons_3 (head_3 B_0) (tail_3 list_3)))))
(declare-datatypes ((list_4 0)) (((nil_4 ) (cons_4 (head_4 list_3) (tail_4 list_4)))))
(declare-datatypes ((pair_2 0)) (((pair_3 (projpair_2 list_3) (projpair_3 list_3)))))
(declare-datatypes ((list_5 0)) (((nil_5 ) (cons_5 (head_5 pair_2) (tail_5 list_5)))))
(declare-fun primEnumFromTo_0 (list_1 Nat_0 Nat_0) Bool)
(declare-fun or_0 (Bool_0 list_0) Bool)
(declare-fun maximummaximum_0 (Nat_0 Nat_0 list_2) Bool)
(declare-fun length_0 (Nat_0 list_4) Bool)
(declare-fun last_0 (list_3 list_3 list_4) Bool)
(declare-fun dodeca_0 (list_2 Nat_0 list_1) Bool)
(declare-fun dodeca_1 (list_2 Nat_0 list_1) Bool)
(declare-fun dodeca_2 (list_2 Nat_0 list_1) Bool)
(declare-fun dodeca_3 (list_2 Nat_0 list_1) Bool)
(declare-fun dodeca_4 (list_2 Nat_0 list_1) Bool)
(declare-fun dodeca_5 (list_2 list_1) Bool)
(declare-fun bin_0 (list_3 Nat_0) Bool)
(declare-fun bgraph_0 (list_5 list_2) Bool)
(declare-fun beq_0 (Bool_0 list_3 list_3) Bool)
(declare-fun bpath_0 (list_0 list_3 list_3 list_5) Bool)
(declare-fun bpath_1 (Bool_0 list_4 list_5) Bool)
(declare-fun belem_0 (list_0 list_3 list_4) Bool)
(declare-fun belem_1 (Bool_0 list_3 list_4) Bool)
(declare-fun bunique_0 (Bool_0 list_4) Bool)
(declare-fun btour_0 (Bool_0 list_4 list_2) Bool)
(declare-fun x_37 (list_2 list_2 list_2) Bool)
(assert (forall ((x_266 Nat_0))
	(diseqNat_0 Z_16 (Z_17 x_266))))
(assert (forall ((x_267 Nat_0))
	(diseqNat_0 (Z_17 x_267) Z_16)))
(assert (forall ((x_268 Nat_0) (x_269 Nat_0))
	(=> (diseqNat_0 x_268 x_269) (diseqNat_0 (Z_17 x_268) (Z_17 x_269)))))
(assert (forall ((y_23 Nat_0))
	(add_0 y_23 Z_16 y_23)))
(assert (forall ((r_0 Nat_0) (x_200 Nat_0) (y_23 Nat_0))
	(=> (add_0 r_0 x_200 y_23) (add_0 (Z_17 r_0) (Z_17 x_200) y_23))))
(assert (forall ((y_23 Nat_0))
	(minus_0 Z_16 Z_16 y_23)))
(assert (forall ((r_0 Nat_0) (x_200 Nat_0) (y_23 Nat_0))
	(=> (minus_0 r_0 x_200 y_23) (minus_0 (Z_17 r_0) (Z_17 x_200) y_23))))
(assert (forall ((y_23 Nat_0))
	(le_0 Z_16 y_23)))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (le_0 x_200 y_23) (le_0 (Z_17 x_200) (Z_17 y_23)))))
(assert (forall ((y_23 Nat_0))
	(ge_0 y_23 Z_16)))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (ge_0 x_200 y_23) (ge_0 (Z_17 x_200) (Z_17 y_23)))))
(assert (forall ((y_23 Nat_0))
	(lt_0 Z_16 (Z_17 y_23))))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_200 y_23) (lt_0 (Z_17 x_200) (Z_17 y_23)))))
(assert (forall ((y_23 Nat_0))
	(gt_0 (Z_17 y_23) Z_16)))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (gt_0 x_200 y_23) (gt_0 (Z_17 x_200) (Z_17 y_23)))))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_200 y_23) (div_0 Z_16 x_200 y_23))))
(assert (forall ((r_0 Nat_0) (x_200 Nat_0) (y_23 Nat_0) (z_18 Nat_0))
	(=> (and (ge_0 x_200 y_23) (minus_0 z_18 x_200 y_23) (div_0 r_0 z_18 y_23)) (div_0 (Z_17 r_0) x_200 y_23))))
(assert (forall ((x_200 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_200 y_23) (mod_0 x_200 x_200 y_23))))
(assert (forall ((r_0 Nat_0) (x_200 Nat_0) (y_23 Nat_0) (z_18 Nat_0))
	(=> (and (ge_0 x_200 y_23) (minus_0 z_18 x_200 y_23) (mod_0 r_0 z_18 y_23)) (mod_0 r_0 x_200 y_23))))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (or_1 false_0 false_0 false_0))
(assert (or_1 true_0 true_0 false_0))
(assert (or_1 true_0 false_0 true_0))
(assert (or_1 true_0 true_0 true_0))
(assert (not_0 true_0 false_0))
(assert (not_0 false_0 true_0))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_0 y_0) (primEnumFromTo_0 nil_1 x_0 y_0))))
(assert (forall ((x_201 Nat_0) (x_42 list_1) (x_0 Nat_0) (y_0 Nat_0))
	(=> (and (le_0 x_0 y_0) (primEnumFromTo_0 x_42 x_201 y_0) (add_0 x_201 (Z_17 Z_16) x_0)) (primEnumFromTo_0 (cons_1 x_0 x_42) x_0 y_0))))
(assert (forall ((x_189 Bool_0) (x_44 Bool_0) (y_1 Bool_0) (xs_0 list_0))
	(=> (and (or_0 x_44 xs_0) (or_1 x_189 y_1 x_44)) (or_0 x_189 (cons_0 y_1 xs_0)))))
(assert (or_0 false_0 nil_0))
(assert (forall ((x_46 Nat_0) (y_4 Nat_0) (y_3 Nat_0) (yzs_0 list_2) (x_2 Nat_0))
	(=> (and (le_0 y_3 y_4) (le_0 x_2 y_4) (maximummaximum_0 x_46 y_4 yzs_0)) (maximummaximum_0 x_46 x_2 (cons_2 (pair_1 y_3 y_4) yzs_0)))))
(assert (forall ((x_48 Nat_0) (y_4 Nat_0) (y_3 Nat_0) (yzs_0 list_2) (x_2 Nat_0))
	(=> (and (le_0 y_3 y_4) (gt_0 x_2 y_4) (maximummaximum_0 x_48 x_2 yzs_0)) (maximummaximum_0 x_48 x_2 (cons_2 (pair_1 y_3 y_4) yzs_0)))))
(assert (forall ((x_50 Nat_0) (y_3 Nat_0) (z_1 Nat_0) (yzs_0 list_2) (x_2 Nat_0))
	(=> (and (gt_0 y_3 z_1) (le_0 x_2 y_3) (maximummaximum_0 x_50 y_3 yzs_0)) (maximummaximum_0 x_50 x_2 (cons_2 (pair_1 y_3 z_1) yzs_0)))))
(assert (forall ((x_52 Nat_0) (y_3 Nat_0) (z_1 Nat_0) (yzs_0 list_2) (x_2 Nat_0))
	(=> (and (gt_0 y_3 z_1) (gt_0 x_2 y_3) (maximummaximum_0 x_52 x_2 yzs_0)) (maximummaximum_0 x_52 x_2 (cons_2 (pair_1 y_3 z_1) yzs_0)))))
(assert (forall ((x_2 Nat_0))
	(maximummaximum_0 x_2 x_2 nil_2)))
(assert (forall ((x_202 Nat_0) (x_56 Nat_0) (y_5 list_3) (l_0 list_4))
	(=> (and (length_0 x_56 l_0) (add_0 x_202 (Z_17 Z_16) x_56)) (length_0 x_202 (cons_4 y_5 l_0)))))
(assert (length_0 Z_16 nil_4))
(assert (forall ((x_58 list_3) (z_2 list_3) (ys_0 list_4) (x_4 list_3))
	(=> (last_0 x_58 z_2 ys_0) (last_0 x_58 x_4 (cons_4 z_2 ys_0)))))
(assert (forall ((x_4 list_3))
	(last_0 x_4 x_4 nil_4)))
(assert (forall ((x_203 Nat_0) (x_204 Nat_0) (x_205 Nat_0) (x_206 Nat_0) (x_207 Nat_0) (x_208 Nat_0) (x_209 Nat_0) (x_62 list_2) (z_3 Nat_0) (x_6 list_1) (x_5 Nat_0))
	(=> (and (dodeca_0 x_62 x_5 x_6) (add_0 x_203 x_5 x_5) (add_0 x_204 x_203 x_5) (add_0 x_205 x_204 z_3) (add_0 x_206 x_5 x_5) (add_0 x_207 x_206 x_5) (add_0 x_208 (Z_17 Z_16) z_3) (add_0 x_209 x_207 x_208)) (dodeca_0 (cons_2 (pair_1 x_205 x_209) x_62) x_5 (cons_1 z_3 x_6)))))
(assert (forall ((x_5 Nat_0))
	(dodeca_0 nil_2 x_5 nil_1)))
(assert (forall ((x_210 Nat_0) (x_211 Nat_0) (x_212 Nat_0) (x_213 Nat_0) (x_214 Nat_0) (x_65 list_2) (z_4 Nat_0) (x_8 list_1) (x_7 Nat_0))
	(=> (and (dodeca_1 x_65 x_7 x_8) (add_0 x_210 x_7 x_7) (add_0 x_211 x_210 z_4) (add_0 x_212 x_7 x_7) (add_0 x_213 x_212 x_7) (add_0 x_214 x_213 z_4)) (dodeca_1 (cons_2 (pair_1 x_211 x_214) x_65) x_7 (cons_1 z_4 x_8)))))
(assert (forall ((x_7 Nat_0))
	(dodeca_1 nil_2 x_7 nil_1)))
(assert (forall ((x_215 Nat_0) (x_216 Nat_0) (x_217 Nat_0) (x_218 Nat_0) (x_68 list_2) (z_5 Nat_0) (x_10 list_1) (x_9 Nat_0))
	(=> (and (dodeca_2 x_68 x_9 x_10) (add_0 x_215 (Z_17 Z_16) z_5) (add_0 x_216 x_9 x_215) (add_0 x_217 x_9 x_9) (add_0 x_218 x_217 z_5)) (dodeca_2 (cons_2 (pair_1 x_216 x_218) x_68) x_9 (cons_1 z_5 x_10)))))
(assert (forall ((x_9 Nat_0))
	(dodeca_2 nil_2 x_9 nil_1)))
(assert (forall ((x_219 Nat_0) (x_220 Nat_0) (x_221 Nat_0) (x_71 list_2) (z_6 Nat_0) (x_12 list_1) (x_11 Nat_0))
	(=> (and (dodeca_3 x_71 x_11 x_12) (add_0 x_219 x_11 z_6) (add_0 x_220 x_11 x_11) (add_0 x_221 x_220 z_6)) (dodeca_3 (cons_2 (pair_1 x_219 x_221) x_71) x_11 (cons_1 z_6 x_12)))))
(assert (forall ((x_11 Nat_0))
	(dodeca_3 nil_2 x_11 nil_1)))
(assert (forall ((x_222 Nat_0) (x_74 list_2) (z_7 Nat_0) (x_14 list_1) (x_13 Nat_0))
	(=> (and (dodeca_4 x_74 x_13 x_14) (add_0 x_222 x_13 z_7)) (dodeca_4 (cons_2 (pair_1 z_7 x_222) x_74) x_13 (cons_1 z_7 x_14)))))
(assert (forall ((x_13 Nat_0))
	(dodeca_4 nil_2 x_13 nil_1)))
(assert (forall ((x_223 Nat_0) (x_77 list_2) (y_12 Nat_0) (z_8 list_1))
	(=> (and (dodeca_5 x_77 z_8) (add_0 x_223 (Z_17 Z_16) y_12)) (dodeca_5 (cons_2 (pair_1 y_12 x_223) x_77) (cons_1 y_12 z_8)))))
(assert (dodeca_5 nil_2 nil_1))
(assert (bin_0 nil_3 Z_16))
(assert (forall ((x_225 Nat_0) (x_81 list_3) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_16 Z_16) (bin_0 x_81 x_225) (div_0 x_225 x_16 (Z_17 (Z_17 Z_16))) (mod_0 Z_16 x_16 (Z_17 (Z_17 Z_16)))) (bin_0 (cons_3 O_0 x_81) x_16))))
(assert (bin_0 nil_3 Z_16))
(assert (forall ((x_227 Nat_0) (x_226 Nat_0) (x_84 list_3) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_16 Z_16) (diseqNat_0 x_226 Z_16) (bin_0 x_84 x_227) (div_0 x_227 x_16 (Z_17 (Z_17 Z_16))) (mod_0 x_226 x_16 (Z_17 (Z_17 Z_16)))) (bin_0 (cons_3 I_0 x_84) x_16))))
(assert (forall ((x_86 list_3) (x_87 list_3) (x_88 list_5) (u_0 Nat_0) (v_0 Nat_0) (z_9 list_2))
	(=> (and (bin_0 x_86 u_0) (bin_0 x_87 v_0) (bgraph_0 x_88 z_9)) (bgraph_0 (cons_5 (pair_3 x_86 x_87) x_88) (cons_2 (pair_1 u_0 v_0) z_9)))))
(assert (bgraph_0 nil_5 nil_2))
(assert (forall ((x_90 Bool_0) (zs_0 list_3) (xs_1 list_3))
	(=> (beq_0 x_90 xs_1 zs_0) (beq_0 x_90 (cons_3 O_0 xs_1) (cons_3 O_0 zs_0)))))
(assert (forall ((zs_0 list_3) (xs_1 list_3))
	(beq_0 false_0 (cons_3 O_0 xs_1) (cons_3 I_0 zs_0))))
(assert (forall ((xs_1 list_3))
	(beq_0 false_0 (cons_3 O_0 xs_1) nil_3)))
(assert (forall ((ys_1 list_3) (xs_1 list_3))
	(beq_0 false_0 (cons_3 I_0 xs_1) (cons_3 O_0 ys_1))))
(assert (forall ((x_95 Bool_0) (ys_1 list_3) (xs_1 list_3))
	(=> (beq_0 x_95 xs_1 ys_1) (beq_0 x_95 (cons_3 I_0 xs_1) (cons_3 I_0 ys_1)))))
(assert (forall ((xs_1 list_3))
	(beq_0 false_0 (cons_3 I_0 xs_1) nil_3)))
(assert (forall ((z_10 B_0) (x_19 list_3))
	(beq_0 false_0 nil_3 (cons_3 z_10 x_19))))
(assert (beq_0 true_0 nil_3 nil_3))
(assert (forall ((x_190 Bool_0) (x_191 Bool_0) (x_192 Bool_0) (x_101 Bool_0) (x_102 Bool_0) (x_103 Bool_0) (x_104 Bool_0) (x_105 list_0) (u_1 list_3) (v_1 list_3) (x_25 list_5) (x_23 list_3) (y_15 list_3))
	(=> (and (beq_0 x_101 u_1 x_23) (beq_0 x_102 v_1 y_15) (beq_0 x_103 u_1 y_15) (beq_0 x_104 v_1 x_23) (bpath_0 x_105 x_23 y_15 x_25) (and_0 x_190 x_101 x_102) (and_0 x_191 x_103 x_104) (or_1 x_192 x_190 x_191)) (bpath_0 (cons_0 x_192 x_105) x_23 y_15 (cons_5 (pair_3 u_1 v_1) x_25)))))
(assert (forall ((x_23 list_3) (y_15 list_3))
	(bpath_0 nil_0 x_23 y_15 nil_5)))
(assert (forall ((x_107 Bool_0) (x_108 list_0) (x_109 Bool_0) (x_110 Bool_0) (y_17 list_3) (xs_2 list_4) (z_12 list_3) (y_16 list_5))
	(=> (and (bpath_0 x_108 z_12 y_17 y_16) (or_0 x_109 x_108) (bpath_1 x_110 (cons_4 y_17 xs_2) y_16) (and_0 x_107 x_109 x_110)) (bpath_1 x_107 (cons_4 z_12 (cons_4 y_17 xs_2)) y_16))))
(assert (forall ((z_12 list_3) (y_16 list_5))
	(bpath_1 true_0 (cons_4 z_12 nil_4) y_16)))
(assert (forall ((y_16 list_5))
	(bpath_1 true_0 nil_4 y_16)))
(assert (forall ((x_114 Bool_0) (x_115 list_0) (z_13 list_3) (x_29 list_4) (x_28 list_3))
	(=> (and (beq_0 x_114 x_28 z_13) (belem_0 x_115 x_28 x_29)) (belem_0 (cons_0 x_114 x_115) x_28 (cons_4 z_13 x_29)))))
(assert (forall ((x_28 list_3))
	(belem_0 nil_0 x_28 nil_4)))
(assert (forall ((x_117 Bool_0) (x_118 list_0) (x_30 list_3) (y_19 list_4))
	(=> (and (belem_0 x_118 x_30 y_19) (or_0 x_117 x_118)) (belem_1 x_117 x_30 y_19))))
(assert (forall ((x_194 Bool_0) (x_120 Bool_0) (x_121 Bool_0) (x_122 Bool_0) (y_20 list_3) (xs_3 list_4))
	(=> (and (belem_1 x_121 y_20 xs_3) (bunique_0 x_122 xs_3) (not_0 x_194 x_121) (and_0 x_120 x_194 x_122)) (bunique_0 x_120 (cons_4 y_20 xs_3)))))
(assert (bunique_0 true_0 nil_4))
(assert (forall ((x_228 Nat_0) (x_196 Bool_0) (x_126 Bool_0) (x_127 list_3) (x_128 Bool_0) (x_129 list_5) (x_130 Bool_0) (x_131 Bool_0) (x_124 Nat_0) (x_125 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_34 list_3) (x_35 list_4))
	(=> (and (le_0 u_2 v_2) (last_0 x_127 x_34 x_35) (beq_0 x_128 x_34 x_127) (bgraph_0 x_129 (cons_2 (pair_1 u_2 v_2) vs_0)) (bpath_1 x_130 (cons_4 x_34 x_35) x_129) (bunique_0 x_131 x_35) (length_0 x_124 (cons_4 x_34 x_35)) (maximummaximum_0 x_125 v_2 vs_0) (and_0 x_196 x_128 x_130) (and_0 x_126 x_196 x_131) (add_0 x_228 (Z_17 Z_16) x_125) (add_0 x_124 (Z_17 Z_16) x_228)) (btour_0 x_126 (cons_4 x_34 x_35) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_230 Nat_0) (x_231 Nat_0) (x_132 Nat_0) (x_133 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_34 list_3) (x_35 list_4))
	(=> (and (diseqNat_0 x_132 x_231) (le_0 u_2 v_2) (length_0 x_132 (cons_4 x_34 x_35)) (maximummaximum_0 x_133 v_2 vs_0) (add_0 x_230 (Z_17 Z_16) x_133) (add_0 x_231 (Z_17 Z_16) x_230)) (btour_0 false_0 (cons_4 x_34 x_35) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_232 Nat_0) (x_198 Bool_0) (x_137 Bool_0) (x_138 list_3) (x_139 Bool_0) (x_140 list_5) (x_141 Bool_0) (x_142 Bool_0) (x_135 Nat_0) (x_136 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_34 list_3) (x_35 list_4))
	(=> (and (gt_0 u_2 v_2) (last_0 x_138 x_34 x_35) (beq_0 x_139 x_34 x_138) (bgraph_0 x_140 (cons_2 (pair_1 u_2 v_2) vs_0)) (bpath_1 x_141 (cons_4 x_34 x_35) x_140) (bunique_0 x_142 x_35) (length_0 x_135 (cons_4 x_34 x_35)) (maximummaximum_0 x_136 u_2 vs_0) (and_0 x_198 x_139 x_141) (and_0 x_137 x_198 x_142) (add_0 x_232 (Z_17 Z_16) x_136) (add_0 x_135 (Z_17 Z_16) x_232)) (btour_0 x_137 (cons_4 x_34 x_35) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_234 Nat_0) (x_235 Nat_0) (x_143 Nat_0) (x_144 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_34 list_3) (x_35 list_4))
	(=> (and (diseqNat_0 x_143 x_235) (gt_0 u_2 v_2) (length_0 x_143 (cons_4 x_34 x_35)) (maximummaximum_0 x_144 u_2 vs_0) (add_0 x_234 (Z_17 Z_16) x_144) (add_0 x_235 (Z_17 Z_16) x_234)) (btour_0 false_0 (cons_4 x_34 x_35) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_34 list_3) (x_35 list_4))
	(btour_0 false_0 (cons_4 x_34 x_35) nil_2)))
(assert (forall ((z_14 pair_0) (x_33 list_2))
	(btour_0 false_0 nil_4 (cons_2 z_14 x_33))))
(assert (btour_0 true_0 nil_4 nil_2))
(assert (forall ((x_150 list_2) (z_15 pair_0) (xs_4 list_2) (y_22 list_2))
	(=> (x_37 x_150 xs_4 y_22) (x_37 (cons_2 z_15 x_150) (cons_2 z_15 xs_4) y_22))))
(assert (forall ((x_151 list_2))
	(x_37 x_151 nil_2 x_151)))
(assert (forall ((x_261 Nat_0) (x_258 Nat_0) (x_259 Nat_0) (x_260 Nat_0) (x_252 Nat_0) (x_253 Nat_0) (x_254 Nat_0) (x_255 Nat_0) (x_256 Nat_0) (x_257 Nat_0) (x_251 Nat_0) (x_250 Nat_0) (x_249 Nat_0) (x_171 list_1) (x_172 list_2) (x_173 list_1) (x_174 list_2) (x_175 list_1) (x_176 list_2) (x_177 list_1) (x_178 list_2) (x_179 list_1) (x_180 list_2) (x_181 list_1) (x_182 list_2) (x_183 list_2) (x_184 list_2) (x_185 list_2) (x_186 list_2) (x_187 list_2) (p_0 list_4))
	(=> (and (primEnumFromTo_0 x_171 Z_16 x_249) (dodeca_5 x_172 x_171) (primEnumFromTo_0 x_173 Z_16 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (dodeca_4 x_174 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_173) (primEnumFromTo_0 x_175 Z_16 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (dodeca_3 x_176 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_175) (primEnumFromTo_0 x_177 Z_16 x_250) (dodeca_2 x_178 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_177) (primEnumFromTo_0 x_179 Z_16 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (dodeca_1 x_180 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_179) (primEnumFromTo_0 x_181 Z_16 x_251) (dodeca_0 x_182 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_181) (x_37 x_183 x_180 (cons_2 (pair_1 x_255 x_257) x_182)) (x_37 x_184 (cons_2 (pair_1 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) x_260) x_178) x_183) (x_37 x_185 x_176 x_184) (x_37 x_186 x_174 x_185) (x_37 x_187 (cons_2 (pair_1 x_261 Z_16) x_172) x_186) (btour_0 true_0 p_0 x_187) (minus_0 x_261 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16)) (add_0 x_258 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (minus_0 x_259 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16)) (add_0 x_260 x_258 x_259) (add_0 x_252 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (add_0 x_253 x_252 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (minus_0 x_254 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16)) (add_0 x_255 x_253 x_254) (add_0 x_256 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (add_0 x_257 x_256 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16)))))) (minus_0 x_251 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16)) (minus_0 x_250 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16)) (minus_0 x_249 (Z_17 (Z_17 (Z_17 (Z_17 (Z_17 Z_16))))) (Z_17 Z_16))) false)))
(check-sat)
(get-model)
