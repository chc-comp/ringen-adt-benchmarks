(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_11 ) (Z_12 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_1 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Nat_0) (tail_1 list_1)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-datatypes ((list_3 0)) (((nil_3 ) (cons_3 (head_3 list_2) (tail_3 list_3)))))
(declare-fun primEnumFromTo_0 (list_1 Nat_0 Nat_0) Bool)
(declare-fun petersen_0 (list_2 Nat_0 list_1) Bool)
(declare-fun petersen_1 (list_2 list_1) Bool)
(declare-fun petersen_2 (list_3 Nat_0 list_2) Bool)
(declare-fun path_0 (list_0 Nat_0 Nat_0 list_2) Bool)
(declare-fun or_0 (Bool_0 list_0) Bool)
(declare-fun path_1 (Bool_0 list_1 list_2) Bool)
(declare-fun maximummaximum_0 (Nat_0 Nat_0 list_2) Bool)
(declare-fun length_0 (Nat_0 list_1) Bool)
(declare-fun last_0 (Nat_0 Nat_0 list_1) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_1) Bool)
(declare-fun unique_0 (Bool_0 list_1) Bool)
(declare-fun tour_0 (Bool_0 list_1 list_2) Bool)
(declare-fun x_22 (list_2 list_2 list_2) Bool)
(declare-fun concat_0 (list_2 list_3) Bool)
(assert (forall ((x_195 Nat_0))
	(diseqNat_0 Z_11 (Z_12 x_195))))
(assert (forall ((x_196 Nat_0))
	(diseqNat_0 (Z_12 x_196) Z_11)))
(assert (forall ((x_197 Nat_0) (x_198 Nat_0))
	(=> (diseqNat_0 x_197 x_198) (diseqNat_0 (Z_12 x_197) (Z_12 x_198)))))
(assert (forall ((y_18 Nat_0))
	(add_0 y_18 Z_11 y_18)))
(assert (forall ((r_0 Nat_0) (x_172 Nat_0) (y_18 Nat_0))
	(=> (add_0 r_0 x_172 y_18) (add_0 (Z_12 r_0) (Z_12 x_172) y_18))))
(assert (forall ((y_18 Nat_0))
	(minus_0 Z_11 Z_11 y_18)))
(assert (forall ((r_0 Nat_0) (x_172 Nat_0) (y_18 Nat_0))
	(=> (minus_0 r_0 x_172 y_18) (minus_0 (Z_12 r_0) (Z_12 x_172) y_18))))
(assert (forall ((y_18 Nat_0))
	(le_0 Z_11 y_18)))
(assert (forall ((x_172 Nat_0) (y_18 Nat_0))
	(=> (le_0 x_172 y_18) (le_0 (Z_12 x_172) (Z_12 y_18)))))
(assert (forall ((y_18 Nat_0))
	(gt_0 (Z_12 y_18) Z_11)))
(assert (forall ((x_172 Nat_0) (y_18 Nat_0))
	(=> (gt_0 x_172 y_18) (gt_0 (Z_12 x_172) (Z_12 y_18)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (or_1 false_0 false_0 false_0))
(assert (or_1 true_0 true_0 false_0))
(assert (or_1 true_0 false_0 true_0))
(assert (or_1 true_0 true_0 true_0))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_0 y_0) (primEnumFromTo_0 nil_1 x_0 y_0))))
(assert (forall ((x_173 Nat_0) (x_28 list_1) (x_0 Nat_0) (y_0 Nat_0))
	(=> (and (le_0 x_0 y_0) (primEnumFromTo_0 x_28 x_173 y_0) (add_0 x_173 (Z_12 Z_11) x_0)) (primEnumFromTo_0 (cons_1 x_0 x_28) x_0 y_0))))
(assert (forall ((x_174 Nat_0) (x_30 list_2) (z_0 Nat_0) (x_2 list_1) (x_1 Nat_0))
	(=> (and (petersen_0 x_30 x_1 x_2) (add_0 x_174 x_1 z_0)) (petersen_0 (cons_2 (pair_1 z_0 x_174) x_30) x_1 (cons_1 z_0 x_2)))))
(assert (forall ((x_1 Nat_0))
	(petersen_0 nil_2 x_1 nil_1)))
(assert (forall ((x_175 Nat_0) (x_33 list_2) (y_2 Nat_0) (z_1 list_1))
	(=> (and (petersen_1 x_33 z_1) (add_0 x_175 (Z_12 Z_11) y_2)) (petersen_1 (cons_2 (pair_1 y_2 x_175) x_33) (cons_1 y_2 z_1)))))
(assert (petersen_1 nil_2 nil_1))
(assert (forall ((x_176 Nat_0) (x_177 Nat_0) (x_36 list_3) (u_0 Nat_0) (v_0 Nat_0) (x_5 list_2) (x_4 Nat_0))
	(=> (and (petersen_2 x_36 x_4 x_5) (add_0 x_176 x_4 u_0) (add_0 x_177 x_4 v_0)) (petersen_2 (cons_3 (cons_2 (pair_1 u_0 v_0) (cons_2 (pair_1 x_176 x_177) nil_2)) x_36) x_4 (cons_2 (pair_1 u_0 v_0) x_5)))))
(assert (forall ((x_4 Nat_0))
	(petersen_2 nil_3 x_4 nil_2)))
(assert (forall ((x_39 list_0) (u_1 Nat_0) (x_8 list_2))
	(=> (path_0 x_39 u_1 u_1 x_8) (path_0 (cons_0 true_0 x_39) u_1 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_41 list_0) (u_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 u_1) (path_0 x_41 u_1 u_1 x_8)) (path_0 (cons_0 true_0 x_41) u_1 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_43 list_0) (u_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 u_1) (path_0 x_43 u_1 u_1 x_8)) (path_0 (cons_0 true_0 x_43) u_1 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_45 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 v_1) (diseqNat_0 v_1 u_1) (path_0 x_45 v_1 u_1 x_8)) (path_0 (cons_0 true_0 x_45) v_1 u_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_47 list_0) (u_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 u_1) (path_0 x_47 u_1 u_1 x_8)) (path_0 (cons_0 true_0 x_47) u_1 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_49 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 v_1) (diseqNat_0 u_1 v_1) (path_0 x_49 v_1 v_1 x_8)) (path_0 (cons_0 false_0 x_49) v_1 v_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_51 list_0) (u_1 Nat_0) (x_8 list_2) (y_4 Nat_0))
	(=> (and (diseqNat_0 u_1 y_4) (diseqNat_0 u_1 y_4) (path_0 x_51 u_1 y_4 x_8)) (path_0 (cons_0 false_0 x_51) u_1 y_4 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_53 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2) (y_4 Nat_0))
	(=> (and (diseqNat_0 u_1 v_1) (diseqNat_0 v_1 y_4) (diseqNat_0 u_1 y_4) (path_0 x_53 v_1 y_4 x_8)) (path_0 (cons_0 false_0 x_53) v_1 y_4 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_55 list_0) (u_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 u_1) (path_0 x_55 u_1 u_1 x_8)) (path_0 (cons_0 true_0 x_55) u_1 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_57 list_0) (u_1 Nat_0) (x_8 list_2) (x_6 Nat_0))
	(=> (and (diseqNat_0 u_1 x_6) (diseqNat_0 u_1 x_6) (path_0 x_57 x_6 u_1 x_8)) (path_0 (cons_0 false_0 x_57) x_6 u_1 (cons_2 (pair_1 u_1 u_1) x_8)))))
(assert (forall ((x_59 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 v_1 u_1) (diseqNat_0 v_1 u_1) (path_0 x_59 u_1 u_1 x_8)) (path_0 (cons_0 false_0 x_59) u_1 u_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_61 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2) (x_6 Nat_0))
	(=> (and (diseqNat_0 u_1 x_6) (diseqNat_0 v_1 u_1) (diseqNat_0 v_1 x_6) (path_0 x_61 x_6 u_1 x_8)) (path_0 (cons_0 false_0 x_61) x_6 u_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_63 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2))
	(=> (and (diseqNat_0 u_1 v_1) (diseqNat_0 v_1 u_1) (path_0 x_63 u_1 v_1 x_8)) (path_0 (cons_0 true_0 x_63) u_1 v_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_65 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2) (x_6 Nat_0))
	(=> (and (diseqNat_0 u_1 x_6) (diseqNat_0 u_1 v_1) (diseqNat_0 v_1 x_6) (path_0 x_65 x_6 v_1 x_8)) (path_0 (cons_0 false_0 x_65) x_6 v_1 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_67 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2) (y_4 Nat_0))
	(=> (and (diseqNat_0 v_1 y_4) (diseqNat_0 u_1 y_4) (diseqNat_0 v_1 u_1) (path_0 x_67 u_1 y_4 x_8)) (path_0 (cons_0 false_0 x_67) u_1 y_4 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_69 list_0) (u_1 Nat_0) (v_1 Nat_0) (x_8 list_2) (x_6 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 u_1 x_6) (diseqNat_0 v_1 y_4) (diseqNat_0 u_1 y_4) (diseqNat_0 v_1 x_6) (path_0 x_69 x_6 y_4 x_8)) (path_0 (cons_0 false_0 x_69) x_6 y_4 (cons_2 (pair_1 u_1 v_1) x_8)))))
(assert (forall ((x_6 Nat_0) (y_4 Nat_0))
	(path_0 nil_0 x_6 y_4 nil_2)))
(assert (forall ((x_168 Bool_0) (x_72 Bool_0) (y_5 Bool_0) (xs_0 list_0))
	(=> (and (or_0 x_72 xs_0) (or_1 x_168 y_5 x_72)) (or_0 x_168 (cons_0 y_5 xs_0)))))
(assert (or_0 false_0 nil_0))
(assert (forall ((x_169 Bool_0) (x_75 list_0) (x_76 Bool_0) (x_77 Bool_0) (y_7 Nat_0) (xs_1 list_1) (z_4 Nat_0) (y_6 list_2))
	(=> (and (path_0 x_75 z_4 y_7 y_6) (or_0 x_76 x_75) (path_1 x_77 (cons_1 y_7 xs_1) y_6) (and_0 x_169 x_76 x_77)) (path_1 x_169 (cons_1 z_4 (cons_1 y_7 xs_1)) y_6))))
(assert (forall ((z_4 Nat_0) (y_6 list_2))
	(path_1 true_0 (cons_1 z_4 nil_1) y_6)))
(assert (forall ((y_6 list_2))
	(path_1 true_0 nil_1 y_6)))
(assert (forall ((x_80 Nat_0) (y_10 Nat_0) (y_9 Nat_0) (yzs_0 list_2) (x_12 Nat_0))
	(=> (and (le_0 y_9 y_10) (le_0 x_12 y_10) (maximummaximum_0 x_80 y_10 yzs_0)) (maximummaximum_0 x_80 x_12 (cons_2 (pair_1 y_9 y_10) yzs_0)))))
(assert (forall ((x_82 Nat_0) (y_10 Nat_0) (y_9 Nat_0) (yzs_0 list_2) (x_12 Nat_0))
	(=> (and (le_0 y_9 y_10) (gt_0 x_12 y_10) (maximummaximum_0 x_82 x_12 yzs_0)) (maximummaximum_0 x_82 x_12 (cons_2 (pair_1 y_9 y_10) yzs_0)))))
(assert (forall ((x_84 Nat_0) (y_10 Nat_0) (z_6 Nat_0) (yzs_0 list_2) (x_12 Nat_0))
	(=> (and (gt_0 y_10 z_6) (le_0 x_12 y_10) (maximummaximum_0 x_84 y_10 yzs_0)) (maximummaximum_0 x_84 x_12 (cons_2 (pair_1 y_10 z_6) yzs_0)))))
(assert (forall ((x_86 Nat_0) (y_10 Nat_0) (z_6 Nat_0) (yzs_0 list_2) (x_12 Nat_0))
	(=> (and (gt_0 y_10 z_6) (gt_0 x_12 y_10) (maximummaximum_0 x_86 x_12 yzs_0)) (maximummaximum_0 x_86 x_12 (cons_2 (pair_1 y_10 z_6) yzs_0)))))
(assert (forall ((x_12 Nat_0))
	(maximummaximum_0 x_12 x_12 nil_2)))
(assert (forall ((x_178 Nat_0) (x_90 Nat_0) (y_11 Nat_0) (l_0 list_1))
	(=> (and (length_0 x_90 l_0) (add_0 x_178 (Z_12 Z_11) x_90)) (length_0 x_178 (cons_1 y_11 l_0)))))
(assert (length_0 Z_11 nil_1))
(assert (forall ((x_92 Nat_0) (z_7 Nat_0) (ys_0 list_1) (x_14 Nat_0))
	(=> (last_0 x_92 z_7 ys_0) (last_0 x_92 x_14 (cons_1 z_7 ys_0)))))
(assert (forall ((x_14 Nat_0))
	(last_0 x_14 x_14 nil_1)))
(assert (forall ((xs_2 list_1) (x_15 Nat_0))
	(elem_0 true_0 x_15 (cons_1 x_15 xs_2))))
(assert (forall ((x_96 Bool_0) (z_8 Nat_0) (xs_2 list_1) (x_15 Nat_0))
	(=> (and (diseqNat_0 z_8 x_15) (elem_0 x_96 x_15 xs_2)) (elem_0 x_96 x_15 (cons_1 z_8 xs_2)))))
(assert (forall ((x_15 Nat_0))
	(elem_0 false_0 x_15 nil_1)))
(assert (forall ((y_14 Nat_0) (xs_3 list_1))
	(=> (elem_0 true_0 y_14 xs_3) (unique_0 false_0 (cons_1 y_14 xs_3)))))
(assert (forall ((x_102 Bool_0) (x_101 Bool_0) (y_14 Nat_0) (xs_3 list_1))
	(=> (and (diseqBool_0 x_101 true_0) (unique_0 x_102 xs_3) (elem_0 x_101 y_14 xs_3)) (unique_0 x_102 (cons_1 y_14 xs_3)))))
(assert (unique_0 true_0 nil_1))
(assert (forall ((x_108 Bool_0) (x_109 Bool_0) (x_110 Bool_0) (x_106 Nat_0) (x_107 Nat_0) (x_105 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_20 list_1))
	(=> (and (le_0 u_2 v_2) (path_1 x_109 (cons_1 x_105 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)) (unique_0 x_110 x_20) (length_0 x_106 (cons_1 x_105 x_20)) (maximummaximum_0 x_107 v_2 vs_0) (last_0 x_105 x_105 x_20) (and_0 x_108 x_109 x_110) (add_0 x_106 (Z_12 (Z_12 Z_11)) x_107)) (tour_0 x_108 (cons_1 x_105 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_112 Nat_0) (x_113 Nat_0) (x_111 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_19 Nat_0) (x_20 list_1))
	(=> (and (diseqNat_0 x_19 x_111) (le_0 u_2 v_2) (length_0 x_112 (cons_1 x_19 x_20)) (maximummaximum_0 x_113 v_2 vs_0) (last_0 x_111 x_19 x_20) (add_0 x_112 (Z_12 (Z_12 Z_11)) x_113)) (tour_0 false_0 (cons_1 x_19 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_181 Nat_0) (x_116 Nat_0) (x_117 Nat_0) (x_115 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_20 list_1))
	(=> (and (diseqNat_0 x_116 x_181) (le_0 u_2 v_2) (length_0 x_116 (cons_1 x_115 x_20)) (maximummaximum_0 x_117 v_2 vs_0) (last_0 x_115 x_115 x_20) (add_0 x_181 (Z_12 (Z_12 Z_11)) x_117)) (tour_0 false_0 (cons_1 x_115 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_182 Nat_0) (x_120 Nat_0) (x_121 Nat_0) (x_119 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_19 Nat_0) (x_20 list_1))
	(=> (and (diseqNat_0 x_19 x_119) (diseqNat_0 x_120 x_182) (le_0 u_2 v_2) (length_0 x_120 (cons_1 x_19 x_20)) (maximummaximum_0 x_121 v_2 vs_0) (last_0 x_119 x_19 x_20) (add_0 x_182 (Z_12 (Z_12 Z_11)) x_121)) (tour_0 false_0 (cons_1 x_19 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_126 Bool_0) (x_127 Bool_0) (x_128 Bool_0) (x_124 Nat_0) (x_125 Nat_0) (x_123 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_20 list_1))
	(=> (and (gt_0 u_2 v_2) (path_1 x_127 (cons_1 x_123 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)) (unique_0 x_128 x_20) (length_0 x_124 (cons_1 x_123 x_20)) (maximummaximum_0 x_125 u_2 vs_0) (last_0 x_123 x_123 x_20) (and_0 x_126 x_127 x_128) (add_0 x_124 (Z_12 (Z_12 Z_11)) x_125)) (tour_0 x_126 (cons_1 x_123 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_130 Nat_0) (x_131 Nat_0) (x_129 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_19 Nat_0) (x_20 list_1))
	(=> (and (diseqNat_0 x_19 x_129) (gt_0 u_2 v_2) (length_0 x_130 (cons_1 x_19 x_20)) (maximummaximum_0 x_131 u_2 vs_0) (last_0 x_129 x_19 x_20) (add_0 x_130 (Z_12 (Z_12 Z_11)) x_131)) (tour_0 false_0 (cons_1 x_19 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_185 Nat_0) (x_134 Nat_0) (x_135 Nat_0) (x_133 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_20 list_1))
	(=> (and (diseqNat_0 x_134 x_185) (gt_0 u_2 v_2) (length_0 x_134 (cons_1 x_133 x_20)) (maximummaximum_0 x_135 u_2 vs_0) (last_0 x_133 x_133 x_20) (add_0 x_185 (Z_12 (Z_12 Z_11)) x_135)) (tour_0 false_0 (cons_1 x_133 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_186 Nat_0) (x_138 Nat_0) (x_139 Nat_0) (x_137 Nat_0) (u_2 Nat_0) (v_2 Nat_0) (vs_0 list_2) (x_19 Nat_0) (x_20 list_1))
	(=> (and (diseqNat_0 x_19 x_137) (diseqNat_0 x_138 x_186) (gt_0 u_2 v_2) (length_0 x_138 (cons_1 x_19 x_20)) (maximummaximum_0 x_139 u_2 vs_0) (last_0 x_137 x_19 x_20) (add_0 x_186 (Z_12 (Z_12 Z_11)) x_139)) (tour_0 false_0 (cons_1 x_19 x_20) (cons_2 (pair_1 u_2 v_2) vs_0)))))
(assert (forall ((x_19 Nat_0) (x_20 list_1))
	(tour_0 false_0 (cons_1 x_19 x_20) nil_2)))
(assert (forall ((z_9 pair_0) (x_18 list_2))
	(tour_0 false_0 nil_1 (cons_2 z_9 x_18))))
(assert (tour_0 true_0 nil_1 nil_2))
(assert (forall ((x_145 list_2) (z_10 pair_0) (xs_4 list_2) (y_16 list_2))
	(=> (x_22 x_145 xs_4 y_16) (x_22 (cons_2 z_10 x_145) (cons_2 z_10 xs_4) y_16))))
(assert (forall ((x_146 list_2))
	(x_22 x_146 nil_2 x_146)))
(assert (forall ((x_147 list_2) (x_148 list_2) (y_17 list_2) (xs_5 list_3))
	(=> (and (concat_0 x_148 xs_5) (x_22 x_147 y_17 x_148)) (concat_0 x_147 (cons_3 y_17 xs_5)))))
(assert (concat_0 nil_2 nil_3))
(assert (forall ((x_190 Nat_0) (x_189 Nat_0) (x_160 list_1) (x_161 list_2) (x_162 list_3) (x_163 list_2) (x_164 list_1) (x_165 list_2) (x_166 list_2) (p_0 list_1))
	(=> (and (primEnumFromTo_0 x_160 Z_11 x_189) (petersen_1 x_161 x_160) (petersen_2 x_162 (Z_12 (Z_12 (Z_12 (Z_12 (Z_12 Z_11))))) (cons_2 (pair_1 x_190 Z_11) x_161)) (concat_0 x_163 x_162) (primEnumFromTo_0 x_164 Z_11 (Z_12 (Z_12 (Z_12 (Z_12 (Z_12 Z_11)))))) (petersen_0 x_165 (Z_12 (Z_12 (Z_12 (Z_12 (Z_12 Z_11))))) x_164) (x_22 x_166 x_163 x_165) (tour_0 true_0 p_0 x_166) (minus_0 x_190 (Z_12 (Z_12 (Z_12 (Z_12 (Z_12 Z_11))))) (Z_12 Z_11)) (minus_0 x_189 (Z_12 (Z_12 (Z_12 (Z_12 (Z_12 Z_11))))) (Z_12 Z_11))) false)))
(check-sat)
(get-model)
