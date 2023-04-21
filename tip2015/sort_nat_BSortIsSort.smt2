(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun evens_0 (list_0 list_0) Bool)
(declare-fun odds_0 (list_0 list_0) Bool)
(declare-fun x_9 (list_0 list_0 list_0) Bool)
(declare-fun pairs_0 (list_0 list_0 list_0) Bool)
(declare-fun stitch_0 (list_0 list_0 list_0) Bool)
(declare-fun bmerge_0 (list_0 list_0 list_0) Bool)
(declare-fun bsort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_107 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_107))))
(assert (forall ((x_108 Nat_0))
	(diseqNat_0 (succ_0 x_108) zero_0)))
(assert (forall ((x_109 Nat_0) (x_110 Nat_0))
	(=> (diseqNat_0 x_109 x_110) (diseqNat_0 (succ_0 x_109) (succ_0 x_110)))))
(assert (forall ((x_117 Nat_0) (x_118 list_0))
	(diseqlist_0 nil_0 (cons_0 x_117 x_118))))
(assert (forall ((x_119 Nat_0) (x_120 list_0))
	(diseqlist_0 (cons_0 x_119 x_120) nil_0)))
(assert (forall ((x_121 Nat_0) (x_122 list_0) (x_123 Nat_0) (x_124 list_0))
	(=> (diseqNat_0 x_121 x_123) (diseqlist_0 (cons_0 x_121 x_122) (cons_0 x_123 x_124)))))
(assert (forall ((x_121 Nat_0) (x_122 list_0) (x_123 Nat_0) (x_124 list_0))
	(=> (diseqlist_0 x_122 x_124) (diseqlist_0 (cons_0 x_121 x_122) (cons_0 x_123 x_124)))))
(assert (forall ((x_27 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_27 z_0 x_1) (leq_0 x_27 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0))
	(=> (leq_0 true_0 x_2 y_1) (sort_0 (cons_0 x_2 (cons_0 y_1 nil_0)) x_2 y_1))))
(assert (forall ((x_33 Bool_0) (x_2 Nat_0) (y_1 Nat_0))
	(=> (and (diseqBool_0 x_33 true_0) (leq_0 x_33 x_2 y_1)) (sort_0 (cons_0 y_1 (cons_0 x_2 nil_0)) x_2 y_1))))
(assert (forall ((z_1 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (leq_0 true_0 x_3 z_1) (insert_0 (cons_0 x_3 (cons_0 z_1 xs_0)) x_3 (cons_0 z_1 xs_0)))))
(assert (forall ((x_39 list_0) (x_37 Bool_0) (z_1 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_37 true_0) (insert_0 x_39 x_3 xs_0) (leq_0 x_37 x_3 z_1)) (insert_0 (cons_0 z_1 x_39) x_3 (cons_0 z_1 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(insert_0 (cons_0 x_3 nil_0) x_3 nil_0)))
(assert (forall ((x_41 list_0) (x_42 list_0) (y_3 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_42 xs_1) (insert_0 x_41 y_3 x_42)) (isort_0 x_41 (cons_0 y_3 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((x_46 list_0) (y_4 Nat_0) (xs_2 list_0))
	(=> (odds_0 x_46 xs_2) (evens_0 (cons_0 y_4 x_46) (cons_0 y_4 xs_2)))))
(assert (evens_0 nil_0 nil_0))
(assert (forall ((x_48 list_0) (y_5 Nat_0) (xs_3 list_0))
	(=> (evens_0 x_48 xs_3) (odds_0 x_48 (cons_0 y_5 xs_3)))))
(assert (odds_0 nil_0 nil_0))
(assert (forall ((x_52 list_0) (z_2 Nat_0) (xs_4 list_0) (y_6 list_0))
	(=> (x_9 x_52 xs_4 y_6) (x_9 (cons_0 z_2 x_52) (cons_0 z_2 xs_4) y_6))))
(assert (forall ((x_53 list_0))
	(x_9 x_53 nil_0 x_53)))
(assert (forall ((x_54 list_0) (x_55 list_0) (x_56 list_0) (x_13 Nat_0) (x_14 list_0) (z_3 Nat_0) (x_12 list_0))
	(=> (and (sort_0 x_55 z_3 x_13) (pairs_0 x_56 x_12 x_14) (x_9 x_54 x_55 x_56)) (pairs_0 x_54 (cons_0 z_3 x_12) (cons_0 x_13 x_14)))))
(assert (forall ((z_3 Nat_0) (x_12 list_0))
	(pairs_0 (cons_0 z_3 x_12) (cons_0 z_3 x_12) nil_0)))
(assert (forall ((x_59 list_0))
	(pairs_0 x_59 nil_0 x_59)))
(assert (forall ((x_61 list_0) (z_4 Nat_0) (xs_5 list_0) (y_8 list_0))
	(=> (pairs_0 x_61 xs_5 y_8) (stitch_0 (cons_0 z_4 x_61) (cons_0 z_4 xs_5) y_8))))
(assert (forall ((x_62 list_0))
	(stitch_0 x_62 nil_0 x_62)))
(assert (forall ((x_63 list_0) (x_64 list_0) (x_65 list_0) (x_66 list_0) (x_67 list_0) (x_68 list_0) (x_22 Nat_0) (x_23 list_0) (fail_0 list_0) (x_18 Nat_0) (x_19 list_0) (z_5 Nat_0))
	(=> (and (evens_0 x_63 (cons_0 z_5 (cons_0 x_22 x_23))) (evens_0 x_64 (cons_0 x_18 x_19)) (bmerge_0 x_65 x_63 x_64) (odds_0 x_66 (cons_0 z_5 (cons_0 x_22 x_23))) (odds_0 x_67 (cons_0 x_18 x_19)) (bmerge_0 x_68 x_66 x_67) (stitch_0 fail_0 x_65 x_68)) (bmerge_0 fail_0 (cons_0 z_5 (cons_0 x_22 x_23)) (cons_0 x_18 x_19)))))
(assert (forall ((x_71 list_0) (x_72 list_0) (x_73 list_0) (x_74 list_0) (x_75 list_0) (x_76 list_0) (x_20 Nat_0) (x_21 list_0) (fail_0 list_0) (x_18 Nat_0) (z_5 Nat_0))
	(=> (and (evens_0 x_71 (cons_0 z_5 nil_0)) (evens_0 x_72 (cons_0 x_18 (cons_0 x_20 x_21))) (bmerge_0 x_73 x_71 x_72) (odds_0 x_74 (cons_0 z_5 nil_0)) (odds_0 x_75 (cons_0 x_18 (cons_0 x_20 x_21))) (bmerge_0 x_76 x_74 x_75) (stitch_0 fail_0 x_73 x_76)) (bmerge_0 fail_0 (cons_0 z_5 nil_0) (cons_0 x_18 (cons_0 x_20 x_21))))))
(assert (forall ((x_86 list_0) (x_79 list_0) (x_80 list_0) (x_81 list_0) (x_82 list_0) (x_83 list_0) (x_84 list_0) (fail_0 list_0) (x_18 Nat_0) (z_5 Nat_0))
	(=> (and (sort_0 x_86 z_5 x_18) (evens_0 x_79 (cons_0 z_5 nil_0)) (evens_0 x_80 (cons_0 x_18 nil_0)) (bmerge_0 x_81 x_79 x_80) (odds_0 x_82 (cons_0 z_5 nil_0)) (odds_0 x_83 (cons_0 x_18 nil_0)) (bmerge_0 x_84 x_82 x_83) (stitch_0 fail_0 x_81 x_84)) (bmerge_0 x_86 (cons_0 z_5 nil_0) (cons_0 x_18 nil_0)))))
(assert (forall ((z_5 Nat_0) (x_17 list_0))
	(bmerge_0 (cons_0 z_5 x_17) (cons_0 z_5 x_17) nil_0)))
(assert (forall ((y_9 list_0))
	(bmerge_0 nil_0 nil_0 y_9)))
(assert (forall ((x_90 list_0) (x_91 list_0) (x_92 list_0) (x_93 list_0) (x_94 list_0) (x_25 Nat_0) (x_26 list_0) (y_10 Nat_0))
	(=> (and (evens_0 x_91 (cons_0 y_10 (cons_0 x_25 x_26))) (bsort_0 x_92 x_91) (odds_0 x_93 (cons_0 y_10 (cons_0 x_25 x_26))) (bsort_0 x_94 x_93) (bmerge_0 x_90 x_92 x_94)) (bsort_0 x_90 (cons_0 y_10 (cons_0 x_25 x_26))))))
(assert (forall ((y_10 Nat_0))
	(bsort_0 (cons_0 y_10 nil_0) (cons_0 y_10 nil_0))))
(assert (bsort_0 nil_0 nil_0))
(assert (forall ((x_98 list_0) (x_99 list_0) (xs_6 list_0))
	(=> (and (diseqlist_0 x_98 x_99) (bsort_0 x_98 xs_6) (isort_0 x_99 xs_6)) false)))
(check-sat)
(get-model)
