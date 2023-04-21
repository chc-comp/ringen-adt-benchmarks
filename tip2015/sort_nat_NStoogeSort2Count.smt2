(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun third_0 (Nat_0 Nat_0) Bool)
(declare-fun twoThirds_0 (Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun x_12 (list_0 list_0 list_0) Bool)
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_127 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_127))))
(assert (forall ((x_128 Nat_0))
	(diseqNat_0 (succ_0 x_128) zero_0)))
(assert (forall ((x_129 Nat_0) (x_130 Nat_0))
	(=> (diseqNat_0 x_129 x_130) (diseqNat_0 (succ_0 x_129) (succ_0 x_130)))))
(assert (forall ((x_29 list_0) (z_1 Nat_0) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_29 z_0 xs_0) (take_0 (cons_0 z_1 x_29) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_33 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_33 z_2 y_1) (plus_0 (succ_0 x_33) (succ_0 z_2) y_1))))
(assert (forall ((x_34 Nat_0))
	(plus_0 x_34 zero_0 x_34)))
(assert (forall ((x_35 Nat_0) (y_3 Nat_0) (z_3 Nat_0))
	(=> (minus_0 x_35 z_3 y_3) (minus_0 x_35 (succ_0 z_3) (succ_0 y_3)))))
(assert (forall ((z_3 Nat_0))
	(minus_0 zero_0 (succ_0 z_3) zero_0)))
(assert (forall ((y_2 Nat_0))
	(minus_0 zero_0 zero_0 y_2)))
(assert (third_0 zero_0 (succ_0 (succ_0 zero_0))))
(assert (=> (diseqNat_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))) (third_0 zero_0 (succ_0 zero_0))))
(assert (third_0 zero_0 (succ_0 (succ_0 zero_0))))
(assert (forall ((x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 (succ_0 y_4) (succ_0 (succ_0 zero_0))) (diseqNat_0 (succ_0 y_4) (succ_0 zero_0)) (minus_0 x_43 (succ_0 y_4) (succ_0 (succ_0 (succ_0 zero_0)))) (third_0 x_44 x_43) (plus_0 x_42 (succ_0 zero_0) x_44)) (third_0 x_42 (succ_0 y_4)))))
(assert (third_0 zero_0 (succ_0 (succ_0 zero_0))))
(assert (=> (diseqNat_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))) (third_0 zero_0 (succ_0 zero_0))))
(assert (third_0 zero_0 (succ_0 (succ_0 zero_0))))
(assert (=> (and (diseqNat_0 zero_0 (succ_0 (succ_0 zero_0))) (diseqNat_0 zero_0 (succ_0 zero_0))) (third_0 zero_0 zero_0)))
(assert (twoThirds_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))))
(assert (=> (diseqNat_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))) (twoThirds_0 (succ_0 zero_0) (succ_0 zero_0))))
(assert (twoThirds_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))))
(assert (forall ((x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (y_5 Nat_0))
	(=> (and (diseqNat_0 (succ_0 y_5) (succ_0 (succ_0 zero_0))) (diseqNat_0 (succ_0 y_5) (succ_0 zero_0)) (minus_0 x_54 (succ_0 y_5) (succ_0 (succ_0 (succ_0 zero_0)))) (twoThirds_0 x_55 x_54) (plus_0 x_53 (succ_0 (succ_0 zero_0)) x_55)) (twoThirds_0 x_53 (succ_0 y_5)))))
(assert (twoThirds_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))))
(assert (=> (diseqNat_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))) (twoThirds_0 (succ_0 zero_0) (succ_0 zero_0))))
(assert (twoThirds_0 (succ_0 zero_0) (succ_0 (succ_0 zero_0))))
(assert (=> (and (diseqNat_0 zero_0 (succ_0 (succ_0 zero_0))) (diseqNat_0 zero_0 (succ_0 zero_0))) (twoThirds_0 zero_0 zero_0)))
(assert (forall ((x_61 Bool_0) (x_6 Nat_0) (z_4 Nat_0))
	(=> (leq_0 x_61 z_4 x_6) (leq_0 x_61 (succ_0 z_4) (succ_0 x_6)))))
(assert (forall ((z_4 Nat_0))
	(leq_0 false_0 (succ_0 z_4) zero_0)))
(assert (forall ((y_6 Nat_0))
	(leq_0 true_0 zero_0 y_6)))
(assert (forall ((x_7 Nat_0) (y_7 Nat_0))
	(=> (leq_0 true_0 x_7 y_7) (sort_0 (cons_0 x_7 (cons_0 y_7 nil_0)) x_7 y_7))))
(assert (forall ((x_67 Bool_0) (x_7 Nat_0) (y_7 Nat_0))
	(=> (and (diseqBool_0 x_67 true_0) (leq_0 x_67 x_7 y_7)) (sort_0 (cons_0 y_7 (cons_0 x_7 nil_0)) x_7 y_7))))
(assert (forall ((x_69 Nat_0) (x_70 Nat_0) (y_8 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_70 l_0) (plus_0 x_69 (succ_0 zero_0) x_70)) (length_0 x_69 (cons_0 y_8 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_73 list_0) (z_6 Nat_0) (xs_1 list_0) (z_5 Nat_0))
	(=> (drop_0 x_73 z_5 xs_1) (drop_0 x_73 (succ_0 z_5) (cons_0 z_6 xs_1)))))
(assert (forall ((z_5 Nat_0))
	(drop_0 nil_0 (succ_0 z_5) nil_0)))
(assert (forall ((x_76 list_0))
	(drop_0 x_76 zero_0 x_76)))
(assert (forall ((x_78 list_0) (x_79 list_0) (x_10 Nat_0) (y_10 list_0))
	(=> (and (take_0 x_78 x_10 y_10) (drop_0 x_79 x_10 y_10)) (splitAt_0 (pair_1 x_78 x_79) x_10 y_10))))
(assert (forall ((x_80 Nat_0) (x_81 Nat_0) (ys_0 list_0) (x_11 Nat_0))
	(=> (and (count_0 x_81 x_11 ys_0) (plus_0 x_80 (succ_0 zero_0) x_81)) (count_0 x_80 x_11 (cons_0 x_11 ys_0)))))
(assert (forall ((x_83 Nat_0) (z_7 Nat_0) (ys_0 list_0) (x_11 Nat_0))
	(=> (and (diseqNat_0 x_11 z_7) (count_0 x_83 x_11 ys_0)) (count_0 x_83 x_11 (cons_0 z_7 ys_0)))))
(assert (forall ((x_11 Nat_0))
	(count_0 zero_0 x_11 nil_0)))
(assert (forall ((x_87 list_0) (z_8 Nat_0) (xs_2 list_0) (y_12 list_0))
	(=> (x_12 x_87 xs_2 y_12) (x_12 (cons_0 z_8 x_87) (cons_0 z_8 xs_2) y_12))))
(assert (forall ((x_88 list_0))
	(x_12 x_88 nil_0 x_88)))
(assert (forall ((x_92 list_0) (x_93 list_0) (x_89 Nat_0) (x_90 Nat_0) (ys_1 list_0) (zs_0 list_0) (x_17 list_0))
	(=> (and (nstoogesort_1 x_93 ys_1) (x_12 x_92 x_93 zs_0) (length_0 x_89 x_17) (twoThirds_0 x_90 x_89) (splitAt_0 (pair_1 ys_1 zs_0) x_90 x_17)) (nstoogesort_0 x_92 x_17))))
(assert (forall ((x_95 list_0) (x_96 list_0) (x_97 list_0) (x_20 Nat_0) (x_21 list_0) (y_14 Nat_0) (y_13 Nat_0))
	(=> (and (nstoogesort_0 x_96 (cons_0 y_13 (cons_0 y_14 (cons_0 x_20 x_21)))) (nstoogesort_2 x_97 x_96) (nstoogesort_0 x_95 x_97)) (nstoogesort_1 x_95 (cons_0 y_13 (cons_0 y_14 (cons_0 x_20 x_21)))))))
(assert (forall ((x_100 list_0) (y_14 Nat_0) (y_13 Nat_0))
	(=> (sort_0 x_100 y_13 y_14) (nstoogesort_1 x_100 (cons_0 y_13 (cons_0 y_14 nil_0))))))
(assert (forall ((y_13 Nat_0))
	(nstoogesort_1 (cons_0 y_13 nil_0) (cons_0 y_13 nil_0))))
(assert (nstoogesort_1 nil_0 nil_0))
(assert (forall ((x_106 list_0) (x_107 list_0) (x_103 Nat_0) (x_104 Nat_0) (ys_2 list_0) (zs_1 list_0) (x_22 list_0))
	(=> (and (nstoogesort_1 x_107 zs_1) (x_12 x_106 ys_2 x_107) (length_0 x_103 x_22) (third_0 x_104 x_103) (splitAt_0 (pair_1 ys_2 zs_1) x_104 x_22)) (nstoogesort_2 x_106 x_22))))
(assert (forall ((x_109 Nat_0) (x_110 Nat_0) (x_111 Nat_0) (x_112 Nat_0) (x_23 Nat_0) (y_15 Nat_0) (z_10 Nat_0))
	(=> (and (diseqNat_0 x_110 x_112) (plus_0 x_109 y_15 z_10) (plus_0 x_110 x_23 x_109) (plus_0 x_111 x_23 y_15) (plus_0 x_112 x_111 z_10)) false)))
(assert (forall ((x_113 Nat_0) (x_114 Nat_0) (x_24 Nat_0) (y_16 Nat_0))
	(=> (and (diseqNat_0 x_113 x_114) (plus_0 x_113 x_24 y_16) (plus_0 x_114 y_16 x_24)) false)))
(assert (forall ((x_115 Nat_0) (x_25 Nat_0))
	(=> (and (diseqNat_0 x_115 x_25) (plus_0 x_115 x_25 zero_0)) false)))
(assert (forall ((x_116 Nat_0) (x_26 Nat_0))
	(=> (and (diseqNat_0 x_116 x_26) (plus_0 x_116 zero_0 x_26)) false)))
(assert (forall ((x_117 list_0) (x_118 Nat_0) (x_119 Nat_0) (x_27 Nat_0) (xs_3 list_0))
	(=> (and (diseqNat_0 x_118 x_119) (nstoogesort_1 x_117 xs_3) (count_0 x_118 x_27 x_117) (count_0 x_119 x_27 xs_3)) false)))
(check-sat)
(get-model)
