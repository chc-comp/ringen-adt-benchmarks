(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(declare-fun pairwise_0 (list_1 list_1) Bool)
(declare-fun mergingbu_0 (list_0 list_1) Bool)
(declare-fun risers_0 (list_1 list_0) Bool)
(declare-fun msortbu_0 (list_0 list_0) Bool)
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_71 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_71))))
(assert (forall ((x_72 Nat_0))
	(diseqNat_0 (succ_0 x_72) zero_0)))
(assert (forall ((x_73 Nat_0) (x_74 Nat_0))
	(=> (diseqNat_0 x_73 x_74) (diseqNat_0 (succ_0 x_73) (succ_0 x_74)))))
(assert (forall ((x_81 Nat_0) (x_82 list_0))
	(diseqlist_0 nil_0 (cons_0 x_81 x_82))))
(assert (forall ((x_83 Nat_0) (x_84 list_0))
	(diseqlist_0 (cons_0 x_83 x_84) nil_0)))
(assert (forall ((x_85 Nat_0) (x_86 list_0) (x_87 Nat_0) (x_88 list_0))
	(=> (diseqNat_0 x_85 x_87) (diseqlist_0 (cons_0 x_85 x_86) (cons_0 x_87 x_88)))))
(assert (forall ((x_85 Nat_0) (x_86 list_0) (x_87 Nat_0) (x_88 list_0))
	(=> (diseqlist_0 x_86 x_88) (diseqlist_0 (cons_0 x_85 x_86) (cons_0 x_87 x_88)))))
(assert (forall ((x_13 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_13 z_0 x_1) (leq_0 x_13 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_19 list_0) (x_4 Nat_0) (x_5 list_0) (z_1 Nat_0) (x_3 list_0))
	(=> (and (lmerge_0 x_19 x_3 (cons_0 x_4 x_5)) (leq_0 true_0 z_1 x_4)) (lmerge_0 (cons_0 z_1 x_19) (cons_0 z_1 x_3) (cons_0 x_4 x_5)))))
(assert (forall ((x_22 list_0) (x_20 Bool_0) (x_4 Nat_0) (x_5 list_0) (z_1 Nat_0) (x_3 list_0))
	(=> (and (diseqBool_0 x_20 true_0) (lmerge_0 x_22 (cons_0 z_1 x_3) x_5) (leq_0 x_20 z_1 x_4)) (lmerge_0 (cons_0 x_4 x_22) (cons_0 z_1 x_3) (cons_0 x_4 x_5)))))
(assert (forall ((z_1 Nat_0) (x_3 list_0))
	(lmerge_0 (cons_0 z_1 x_3) (cons_0 z_1 x_3) nil_0)))
(assert (forall ((x_24 list_0))
	(lmerge_0 x_24 nil_0 x_24)))
(assert (forall ((x_26 list_0) (x_27 list_1) (ys_0 list_0) (xss_0 list_1) (xs_0 list_0))
	(=> (and (lmerge_0 x_26 xs_0 ys_0) (pairwise_0 x_27 xss_0)) (pairwise_0 (cons_1 x_26 x_27) (cons_1 xs_0 (cons_1 ys_0 xss_0))))))
(assert (forall ((xs_0 list_0))
	(pairwise_0 (cons_1 xs_0 nil_1) (cons_1 xs_0 nil_1))))
(assert (pairwise_0 nil_1 nil_1))
(assert (forall ((x_30 list_0) (x_31 list_1) (z_2 list_0) (x_8 list_1) (xs_1 list_0))
	(=> (and (pairwise_0 x_31 (cons_1 xs_1 (cons_1 z_2 x_8))) (mergingbu_0 x_30 x_31)) (mergingbu_0 x_30 (cons_1 xs_1 (cons_1 z_2 x_8))))))
(assert (forall ((x_33 list_0))
	(mergingbu_0 x_33 (cons_1 x_33 nil_1))))
(assert (mergingbu_0 nil_0 nil_1))
(assert (forall ((ys_1 list_0) (yss_0 list_1) (y_5 Nat_0) (xs_2 list_0) (y_4 Nat_0))
	(=> (and (risers_0 (cons_1 ys_1 yss_0) (cons_0 y_5 xs_2)) (leq_0 true_0 y_4 y_5)) (risers_0 (cons_1 (cons_0 y_4 ys_1) yss_0) (cons_0 y_4 (cons_0 y_5 xs_2))))))
(assert (forall ((x_40 list_1) (x_38 Bool_0) (y_5 Nat_0) (xs_2 list_0) (y_4 Nat_0))
	(=> (and (diseqBool_0 x_38 true_0) (risers_0 x_40 (cons_0 y_5 xs_2)) (leq_0 x_38 y_4 y_5)) (risers_0 (cons_1 (cons_0 y_4 nil_0) x_40) (cons_0 y_4 (cons_0 y_5 xs_2))))))
(assert (forall ((y_5 Nat_0) (xs_2 list_0) (y_4 Nat_0))
	(=> (and (risers_0 nil_1 (cons_0 y_5 xs_2)) (leq_0 true_0 y_4 y_5)) (risers_0 nil_1 (cons_0 y_4 (cons_0 y_5 xs_2))))))
(assert (forall ((x_46 list_1) (x_44 Bool_0) (y_5 Nat_0) (xs_2 list_0) (y_4 Nat_0))
	(=> (and (diseqBool_0 x_44 true_0) (risers_0 x_46 (cons_0 y_5 xs_2)) (leq_0 x_44 y_4 y_5)) (risers_0 (cons_1 (cons_0 y_4 nil_0) x_46) (cons_0 y_4 (cons_0 y_5 xs_2))))))
(assert (forall ((y_4 Nat_0))
	(risers_0 (cons_1 (cons_0 y_4 nil_0) nil_1) (cons_0 y_4 nil_0))))
(assert (risers_0 nil_1 nil_0))
(assert (forall ((x_49 list_0) (x_50 list_1) (x_10 list_0))
	(=> (and (risers_0 x_50 x_10) (mergingbu_0 x_49 x_50)) (msortbu_0 x_49 x_10))))
(assert (forall ((z_4 Nat_0) (xs_3 list_0) (x_11 Nat_0))
	(=> (leq_0 true_0 x_11 z_4) (insert_0 (cons_0 x_11 (cons_0 z_4 xs_3)) x_11 (cons_0 z_4 xs_3)))))
(assert (forall ((x_56 list_0) (x_54 Bool_0) (z_4 Nat_0) (xs_3 list_0) (x_11 Nat_0))
	(=> (and (diseqBool_0 x_54 true_0) (insert_0 x_56 x_11 xs_3) (leq_0 x_54 x_11 z_4)) (insert_0 (cons_0 z_4 x_56) x_11 (cons_0 z_4 xs_3)))))
(assert (forall ((x_11 Nat_0))
	(insert_0 (cons_0 x_11 nil_0) x_11 nil_0)))
(assert (forall ((x_58 list_0) (x_59 list_0) (y_7 Nat_0) (xs_4 list_0))
	(=> (and (isort_0 x_59 xs_4) (insert_0 x_58 y_7 x_59)) (isort_0 x_58 (cons_0 y_7 xs_4)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((x_62 list_0) (x_63 list_0) (xs_5 list_0))
	(=> (and (diseqlist_0 x_62 x_63) (msortbu_0 x_62 xs_5) (isort_0 x_63 xs_5)) false)))
(check-sat)
(get-model)
