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
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun x_11 (list_0 list_0 list_0) Bool)
(declare-fun reverse_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_122 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_122))))
(assert (forall ((x_123 Nat_0))
	(diseqNat_0 (succ_0 x_123) zero_0)))
(assert (forall ((x_124 Nat_0) (x_125 Nat_0))
	(=> (diseqNat_0 x_124 x_125) (diseqNat_0 (succ_0 x_124) (succ_0 x_125)))))
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
(assert (forall ((x_50 Bool_0) (x_5 Nat_0) (z_4 Nat_0))
	(=> (leq_0 x_50 z_4 x_5) (leq_0 x_50 (succ_0 z_4) (succ_0 x_5)))))
(assert (forall ((z_4 Nat_0))
	(leq_0 false_0 (succ_0 z_4) zero_0)))
(assert (forall ((y_5 Nat_0))
	(leq_0 true_0 zero_0 y_5)))
(assert (forall ((x_6 Nat_0) (y_6 Nat_0))
	(=> (leq_0 true_0 x_6 y_6) (sort_0 (cons_0 x_6 (cons_0 y_6 nil_0)) x_6 y_6))))
(assert (forall ((x_56 Bool_0) (x_6 Nat_0) (y_6 Nat_0))
	(=> (and (diseqBool_0 x_56 true_0) (leq_0 x_56 x_6 y_6)) (sort_0 (cons_0 y_6 (cons_0 x_6 nil_0)) x_6 y_6))))
(assert (forall ((x_58 Nat_0) (x_59 Nat_0) (y_7 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_59 l_0) (plus_0 x_58 (succ_0 zero_0) x_59)) (length_0 x_58 (cons_0 y_7 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_62 list_0) (z_6 Nat_0) (xs_1 list_0) (z_5 Nat_0))
	(=> (drop_0 x_62 z_5 xs_1) (drop_0 x_62 (succ_0 z_5) (cons_0 z_6 xs_1)))))
(assert (forall ((z_5 Nat_0))
	(drop_0 nil_0 (succ_0 z_5) nil_0)))
(assert (forall ((x_65 list_0))
	(drop_0 x_65 zero_0 x_65)))
(assert (forall ((x_67 list_0) (x_68 list_0) (x_9 Nat_0) (y_9 list_0))
	(=> (and (take_0 x_67 x_9 y_9) (drop_0 x_68 x_9 y_9)) (splitAt_0 (pair_1 x_67 x_68) x_9 y_9))))
(assert (forall ((x_69 Nat_0) (x_70 Nat_0) (ys_0 list_0) (x_10 Nat_0))
	(=> (and (count_0 x_70 x_10 ys_0) (plus_0 x_69 (succ_0 zero_0) x_70)) (count_0 x_69 x_10 (cons_0 x_10 ys_0)))))
(assert (forall ((x_72 Nat_0) (z_7 Nat_0) (ys_0 list_0) (x_10 Nat_0))
	(=> (and (diseqNat_0 x_10 z_7) (count_0 x_72 x_10 ys_0)) (count_0 x_72 x_10 (cons_0 z_7 ys_0)))))
(assert (forall ((x_10 Nat_0))
	(count_0 zero_0 x_10 nil_0)))
(assert (forall ((x_76 list_0) (z_8 Nat_0) (xs_2 list_0) (y_11 list_0))
	(=> (x_11 x_76 xs_2 y_11) (x_11 (cons_0 z_8 x_76) (cons_0 z_8 xs_2) y_11))))
(assert (forall ((x_77 list_0))
	(x_11 x_77 nil_0 x_77)))
(assert (forall ((x_78 list_0) (x_79 list_0) (y_12 Nat_0) (xs_3 list_0))
	(=> (and (reverse_0 x_79 xs_3) (x_11 x_78 x_79 (cons_0 y_12 nil_0))) (reverse_0 x_78 (cons_0 y_12 xs_3)))))
(assert (reverse_0 nil_0 nil_0))
(assert (forall ((x_86 list_0) (x_87 list_0) (x_88 list_0) (x_82 Nat_0) (x_83 Nat_0) (x_84 list_0) (ys_1 list_0) (zs_0 list_0) (x_17 list_0))
	(=> (and (nstoogesort_1 x_87 zs_0) (reverse_0 x_88 ys_1) (x_11 x_86 x_87 x_88) (length_0 x_82 x_17) (third_0 x_83 x_82) (reverse_0 x_84 x_17) (splitAt_0 (pair_1 ys_1 zs_0) x_83 x_84)) (nstoogesort_0 x_86 x_17))))
(assert (forall ((x_90 list_0) (x_91 list_0) (x_92 list_0) (x_20 Nat_0) (x_21 list_0) (y_14 Nat_0) (y_13 Nat_0))
	(=> (and (nstoogesort_0 x_91 (cons_0 y_13 (cons_0 y_14 (cons_0 x_20 x_21)))) (nstoogesort_2 x_92 x_91) (nstoogesort_0 x_90 x_92)) (nstoogesort_1 x_90 (cons_0 y_13 (cons_0 y_14 (cons_0 x_20 x_21)))))))
(assert (forall ((x_94 list_0) (y_14 Nat_0) (y_13 Nat_0))
	(=> (sort_0 x_94 y_13 y_14) (nstoogesort_1 x_94 (cons_0 y_13 (cons_0 y_14 nil_0))))))
(assert (forall ((y_13 Nat_0))
	(nstoogesort_1 (cons_0 y_13 nil_0) (cons_0 y_13 nil_0))))
(assert (nstoogesort_1 nil_0 nil_0))
(assert (forall ((x_101 list_0) (x_102 list_0) (x_98 Nat_0) (x_99 Nat_0) (ys_2 list_0) (zs_1 list_0) (x_22 list_0))
	(=> (and (nstoogesort_1 x_102 zs_1) (x_11 x_101 ys_2 x_102) (length_0 x_98 x_22) (third_0 x_99 x_98) (splitAt_0 (pair_1 ys_2 zs_1) x_99 x_22)) (nstoogesort_2 x_101 x_22))))
(assert (forall ((x_104 Nat_0) (x_105 Nat_0) (x_106 Nat_0) (x_107 Nat_0) (x_23 Nat_0) (y_15 Nat_0) (z_10 Nat_0))
	(=> (and (diseqNat_0 x_105 x_107) (plus_0 x_104 y_15 z_10) (plus_0 x_105 x_23 x_104) (plus_0 x_106 x_23 y_15) (plus_0 x_107 x_106 z_10)) false)))
(assert (forall ((x_108 Nat_0) (x_109 Nat_0) (x_24 Nat_0) (y_16 Nat_0))
	(=> (and (diseqNat_0 x_108 x_109) (plus_0 x_108 x_24 y_16) (plus_0 x_109 y_16 x_24)) false)))
(assert (forall ((x_110 Nat_0) (x_25 Nat_0))
	(=> (and (diseqNat_0 x_110 x_25) (plus_0 x_110 x_25 zero_0)) false)))
(assert (forall ((x_111 Nat_0) (x_26 Nat_0))
	(=> (and (diseqNat_0 x_111 x_26) (plus_0 x_111 zero_0 x_26)) false)))
(assert (forall ((x_112 list_0) (x_113 Nat_0) (x_114 Nat_0) (x_27 Nat_0) (xs_4 list_0))
	(=> (and (diseqNat_0 x_113 x_114) (nstoogesort_1 x_112 xs_4) (count_0 x_113 x_27 x_112) (count_0 x_114 x_27 xs_4)) false)))
(check-sat)
(get-model)
