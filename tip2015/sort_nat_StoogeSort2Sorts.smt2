(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun idiv_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun x_13 (list_0 list_0 list_0) Bool)
(declare-fun stoogesort_0 (list_0 list_0) Bool)
(declare-fun stoogesort_1 (list_0 list_0) Bool)
(declare-fun stoogesort_2 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (forall ((x_147 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_147))))
(assert (forall ((x_148 Nat_0))
	(diseqNat_0 (succ_0 x_148) zero_0)))
(assert (forall ((x_149 Nat_0) (x_150 Nat_0))
	(=> (diseqNat_0 x_149 x_150) (diseqNat_0 (succ_0 x_149) (succ_0 x_150)))))
(assert (forall ((x_37 list_0) (z_1 Nat_0) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_37 z_0 xs_0) (take_0 (cons_0 z_1 x_37) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_41 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_41 z_2 y_1) (plus_0 (succ_0 x_41) (succ_0 z_2) y_1))))
(assert (forall ((x_42 Nat_0))
	(plus_0 x_42 zero_0 x_42)))
(assert (forall ((x_43 Nat_0) (x_44 Nat_0) (z_3 Nat_0) (y_2 Nat_0))
	(=> (and (times_0 x_44 z_3 y_2) (plus_0 x_43 y_2 x_44)) (times_0 x_43 (succ_0 z_3) y_2))))
(assert (forall ((y_2 Nat_0))
	(times_0 zero_0 zero_0 y_2)))
(assert (forall ((x_47 Nat_0) (y_4 Nat_0) (z_4 Nat_0))
	(=> (minus_0 x_47 z_4 y_4) (minus_0 x_47 (succ_0 z_4) (succ_0 y_4)))))
(assert (forall ((z_4 Nat_0))
	(minus_0 zero_0 (succ_0 z_4) zero_0)))
(assert (forall ((y_3 Nat_0))
	(minus_0 zero_0 zero_0 y_3)))
(assert (forall ((x_51 Bool_0) (n_0 Nat_0) (z_5 Nat_0))
	(=> (lt_0 x_51 n_0 z_5) (lt_0 x_51 (succ_0 n_0) (succ_0 z_5)))))
(assert (forall ((z_5 Nat_0))
	(lt_0 true_0 zero_0 (succ_0 z_5))))
(assert (forall ((x_4 Nat_0))
	(lt_0 false_0 x_4 zero_0)))
(assert (forall ((x_55 Bool_0) (x_6 Nat_0) (z_6 Nat_0))
	(=> (leq_0 x_55 z_6 x_6) (leq_0 x_55 (succ_0 z_6) (succ_0 x_6)))))
(assert (forall ((z_6 Nat_0))
	(leq_0 false_0 (succ_0 z_6) zero_0)))
(assert (forall ((y_6 Nat_0))
	(leq_0 true_0 zero_0 y_6)))
(assert (forall ((x_139 Bool_0) (x_60 Bool_0) (x_61 Bool_0) (y_8 Nat_0) (xs_1 list_0) (y_7 Nat_0))
	(=> (and (leq_0 x_60 y_7 y_8) (ordered_0 x_61 (cons_0 y_8 xs_1)) (and_0 x_139 x_60 x_61)) (ordered_0 x_139 (cons_0 y_7 (cons_0 y_8 xs_1))))))
(assert (forall ((y_7 Nat_0))
	(ordered_0 true_0 (cons_0 y_7 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((x_8 Nat_0) (y_9 Nat_0))
	(=> (leq_0 true_0 x_8 y_9) (sort_0 (cons_0 x_8 (cons_0 y_9 nil_0)) x_8 y_9))))
(assert (forall ((x_66 Bool_0) (x_8 Nat_0) (y_9 Nat_0))
	(=> (and (diseqBool_0 x_66 true_0) (leq_0 x_66 x_8 y_9)) (sort_0 (cons_0 y_9 (cons_0 x_8 nil_0)) x_8 y_9))))
(assert (forall ((x_68 Nat_0) (x_69 Nat_0) (y_10 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_69 l_0) (plus_0 x_68 (succ_0 zero_0) x_69)) (length_0 x_68 (cons_0 y_10 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_10 Nat_0) (y_11 Nat_0))
	(=> (lt_0 true_0 x_10 y_11) (idiv_0 zero_0 x_10 y_11))))
(assert (forall ((x_76 Nat_0) (x_77 Nat_0) (x_74 Bool_0) (x_10 Nat_0) (y_11 Nat_0))
	(=> (and (diseqBool_0 x_74 true_0) (minus_0 x_76 x_10 y_11) (idiv_0 x_77 x_76 y_11) (lt_0 x_74 x_10 y_11)) (idiv_0 (succ_0 x_77) x_10 y_11))))
(assert (forall ((x_78 list_0) (z_9 Nat_0) (xs_2 list_0) (z_8 Nat_0))
	(=> (drop_0 x_78 z_8 xs_2) (drop_0 x_78 (succ_0 z_8) (cons_0 z_9 xs_2)))))
(assert (forall ((z_8 Nat_0))
	(drop_0 nil_0 (succ_0 z_8) nil_0)))
(assert (forall ((x_81 list_0))
	(drop_0 x_81 zero_0 x_81)))
(assert (forall ((x_83 list_0) (x_84 list_0) (x_12 Nat_0) (y_13 list_0))
	(=> (and (take_0 x_83 x_12 y_13) (drop_0 x_84 x_12 y_13)) (splitAt_0 (pair_1 x_83 x_84) x_12 y_13))))
(assert (forall ((x_86 list_0) (z_10 Nat_0) (xs_3 list_0) (y_14 list_0))
	(=> (x_13 x_86 xs_3 y_14) (x_13 (cons_0 z_10 x_86) (cons_0 z_10 xs_3) y_14))))
(assert (forall ((x_87 list_0))
	(x_13 x_87 nil_0 x_87)))
(assert (forall ((x_92 list_0) (x_93 list_0) (x_88 Nat_0) (x_89 Nat_0) (x_90 Nat_0) (ys_0 list_0) (zs_0 list_0) (x_18 list_0))
	(=> (and (stoogesort_1 x_93 ys_0) (x_13 x_92 x_93 zs_0) (length_0 x_88 x_18) (times_0 x_89 (succ_0 (succ_0 zero_0)) x_88) (idiv_0 x_90 (succ_0 x_89) (succ_0 (succ_0 (succ_0 zero_0)))) (splitAt_0 (pair_1 ys_0 zs_0) x_90 x_18)) (stoogesort_0 x_92 x_18))))
(assert (forall ((x_95 list_0) (x_96 list_0) (x_97 list_0) (x_21 Nat_0) (x_22 list_0) (y_16 Nat_0) (y_15 Nat_0))
	(=> (and (stoogesort_0 x_96 (cons_0 y_15 (cons_0 y_16 (cons_0 x_21 x_22)))) (stoogesort_2 x_97 x_96) (stoogesort_0 x_95 x_97)) (stoogesort_1 x_95 (cons_0 y_15 (cons_0 y_16 (cons_0 x_21 x_22)))))))
(assert (forall ((x_100 list_0) (y_16 Nat_0) (y_15 Nat_0))
	(=> (sort_0 x_100 y_15 y_16) (stoogesort_1 x_100 (cons_0 y_15 (cons_0 y_16 nil_0))))))
(assert (forall ((y_15 Nat_0))
	(stoogesort_1 (cons_0 y_15 nil_0) (cons_0 y_15 nil_0))))
(assert (stoogesort_1 nil_0 nil_0))
(assert (forall ((x_106 list_0) (x_107 list_0) (x_103 Nat_0) (x_104 Nat_0) (ys_1 list_0) (zs_1 list_0) (x_23 list_0))
	(=> (and (stoogesort_1 x_107 zs_1) (x_13 x_106 ys_1 x_107) (length_0 x_103 x_23) (idiv_0 x_104 x_103 (succ_0 (succ_0 (succ_0 zero_0)))) (splitAt_0 (pair_1 ys_1 zs_1) x_104 x_23)) (stoogesort_2 x_106 x_23))))
(assert (forall ((x_109 Nat_0) (x_110 Nat_0) (x_111 Nat_0) (x_112 Nat_0) (x_24 Nat_0) (y_17 Nat_0) (z_12 Nat_0))
	(=> (and (diseqNat_0 x_110 x_112) (times_0 x_109 y_17 z_12) (times_0 x_110 x_24 x_109) (times_0 x_111 x_24 y_17) (times_0 x_112 x_111 z_12)) false)))
(assert (forall ((x_113 Nat_0) (x_114 Nat_0) (x_115 Nat_0) (x_116 Nat_0) (x_25 Nat_0) (y_18 Nat_0) (z_13 Nat_0))
	(=> (and (diseqNat_0 x_114 x_116) (plus_0 x_113 y_18 z_13) (plus_0 x_114 x_25 x_113) (plus_0 x_115 x_25 y_18) (plus_0 x_116 x_115 z_13)) false)))
(assert (forall ((x_117 Nat_0) (x_118 Nat_0) (x_26 Nat_0) (y_19 Nat_0))
	(=> (and (diseqNat_0 x_117 x_118) (times_0 x_117 x_26 y_19) (times_0 x_118 y_19 x_26)) false)))
(assert (forall ((x_119 Nat_0) (x_120 Nat_0) (x_27 Nat_0) (y_20 Nat_0))
	(=> (and (diseqNat_0 x_119 x_120) (plus_0 x_119 x_27 y_20) (plus_0 x_120 y_20 x_27)) false)))
(assert (forall ((x_121 Nat_0) (x_122 Nat_0) (x_123 Nat_0) (x_124 Nat_0) (x_125 Nat_0) (x_28 Nat_0) (y_21 Nat_0) (z_14 Nat_0))
	(=> (and (diseqNat_0 x_122 x_125) (plus_0 x_121 y_21 z_14) (times_0 x_122 x_28 x_121) (times_0 x_123 x_28 y_21) (times_0 x_124 x_28 z_14) (plus_0 x_125 x_123 x_124)) false)))
(assert (forall ((x_126 Nat_0) (x_127 Nat_0) (x_128 Nat_0) (x_129 Nat_0) (x_130 Nat_0) (x_29 Nat_0) (y_22 Nat_0) (z_15 Nat_0))
	(=> (and (diseqNat_0 x_127 x_130) (plus_0 x_126 x_29 y_22) (times_0 x_127 x_126 z_15) (times_0 x_128 x_29 z_15) (times_0 x_129 y_22 z_15) (plus_0 x_130 x_128 x_129)) false)))
(assert (forall ((x_131 Nat_0) (x_30 Nat_0))
	(=> (and (diseqNat_0 x_131 x_30) (times_0 x_131 x_30 (succ_0 zero_0))) false)))
(assert (forall ((x_132 Nat_0) (x_31 Nat_0))
	(=> (and (diseqNat_0 x_132 x_31) (times_0 x_132 (succ_0 zero_0) x_31)) false)))
(assert (forall ((x_133 Nat_0) (x_32 Nat_0))
	(=> (and (diseqNat_0 x_133 x_32) (plus_0 x_133 x_32 zero_0)) false)))
(assert (forall ((x_134 Nat_0) (x_33 Nat_0))
	(=> (and (diseqNat_0 x_134 x_33) (plus_0 x_134 zero_0 x_33)) false)))
(assert (forall ((x_135 Nat_0) (x_34 Nat_0))
	(=> (and (diseqNat_0 x_135 zero_0) (times_0 x_135 x_34 zero_0)) false)))
(assert (forall ((x_136 Nat_0) (x_35 Nat_0))
	(=> (and (diseqNat_0 x_136 zero_0) (times_0 x_136 zero_0 x_35)) false)))
(assert (forall ((x_137 list_0) (x_138 Bool_0) (xs_4 list_0))
	(=> (and (diseqBool_0 x_138 true_0) (stoogesort_1 x_137 xs_4) (ordered_0 x_138 x_137)) false)))
(check-sat)
(get-model)
