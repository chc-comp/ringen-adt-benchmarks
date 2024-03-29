(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(declare-fun pairwise_0 (list_1 list_1) Bool)
(declare-fun mergingbu_0 (list_0 list_1) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun risers_0 (list_1 list_0) Bool)
(declare-fun msortbu_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (forall ((x_12 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_12 z_0 x_1) (leq_0 x_12 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_18 list_0) (x_4 Nat_0) (x_5 list_0) (z_1 Nat_0) (x_3 list_0))
	(=> (and (lmerge_0 x_18 x_3 (cons_0 x_4 x_5)) (leq_0 true_0 z_1 x_4)) (lmerge_0 (cons_0 z_1 x_18) (cons_0 z_1 x_3) (cons_0 x_4 x_5)))))
(assert (forall ((x_21 list_0) (x_19 Bool_0) (x_4 Nat_0) (x_5 list_0) (z_1 Nat_0) (x_3 list_0))
	(=> (and (diseqBool_0 x_19 true_0) (lmerge_0 x_21 (cons_0 z_1 x_3) x_5) (leq_0 x_19 z_1 x_4)) (lmerge_0 (cons_0 x_4 x_21) (cons_0 z_1 x_3) (cons_0 x_4 x_5)))))
(assert (forall ((z_1 Nat_0) (x_3 list_0))
	(lmerge_0 (cons_0 z_1 x_3) (cons_0 z_1 x_3) nil_0)))
(assert (forall ((x_23 list_0))
	(lmerge_0 x_23 nil_0 x_23)))
(assert (forall ((x_25 list_0) (x_26 list_1) (ys_0 list_0) (xss_0 list_1) (xs_0 list_0))
	(=> (and (lmerge_0 x_25 xs_0 ys_0) (pairwise_0 x_26 xss_0)) (pairwise_0 (cons_1 x_25 x_26) (cons_1 xs_0 (cons_1 ys_0 xss_0))))))
(assert (forall ((xs_0 list_0))
	(pairwise_0 (cons_1 xs_0 nil_1) (cons_1 xs_0 nil_1))))
(assert (pairwise_0 nil_1 nil_1))
(assert (forall ((x_29 list_0) (x_30 list_1) (z_2 list_0) (x_8 list_1) (xs_1 list_0))
	(=> (and (pairwise_0 x_30 (cons_1 xs_1 (cons_1 z_2 x_8))) (mergingbu_0 x_29 x_30)) (mergingbu_0 x_29 (cons_1 xs_1 (cons_1 z_2 x_8))))))
(assert (forall ((x_32 list_0))
	(mergingbu_0 x_32 (cons_1 x_32 nil_1))))
(assert (mergingbu_0 nil_0 nil_1))
(assert (forall ((x_34 Bool_0) (x_35 Bool_0) (x_36 Bool_0) (y_5 Nat_0) (xs_2 list_0) (y_4 Nat_0))
	(=> (and (leq_0 x_35 y_4 y_5) (ordered_0 x_36 (cons_0 y_5 xs_2)) (and_0 x_34 x_35 x_36)) (ordered_0 x_34 (cons_0 y_4 (cons_0 y_5 xs_2))))))
(assert (forall ((y_4 Nat_0))
	(ordered_0 true_0 (cons_0 y_4 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((ys_1 list_0) (yss_0 list_1) (y_7 Nat_0) (xs_3 list_0) (y_6 Nat_0))
	(=> (and (risers_0 (cons_1 ys_1 yss_0) (cons_0 y_7 xs_3)) (leq_0 true_0 y_6 y_7)) (risers_0 (cons_1 (cons_0 y_6 ys_1) yss_0) (cons_0 y_6 (cons_0 y_7 xs_3))))))
(assert (forall ((x_44 list_1) (x_42 Bool_0) (y_7 Nat_0) (xs_3 list_0) (y_6 Nat_0))
	(=> (and (diseqBool_0 x_42 true_0) (risers_0 x_44 (cons_0 y_7 xs_3)) (leq_0 x_42 y_6 y_7)) (risers_0 (cons_1 (cons_0 y_6 nil_0) x_44) (cons_0 y_6 (cons_0 y_7 xs_3))))))
(assert (forall ((y_7 Nat_0) (xs_3 list_0) (y_6 Nat_0))
	(=> (and (risers_0 nil_1 (cons_0 y_7 xs_3)) (leq_0 true_0 y_6 y_7)) (risers_0 nil_1 (cons_0 y_6 (cons_0 y_7 xs_3))))))
(assert (forall ((x_50 list_1) (x_48 Bool_0) (y_7 Nat_0) (xs_3 list_0) (y_6 Nat_0))
	(=> (and (diseqBool_0 x_48 true_0) (risers_0 x_50 (cons_0 y_7 xs_3)) (leq_0 x_48 y_6 y_7)) (risers_0 (cons_1 (cons_0 y_6 nil_0) x_50) (cons_0 y_6 (cons_0 y_7 xs_3))))))
(assert (forall ((y_6 Nat_0))
	(risers_0 (cons_1 (cons_0 y_6 nil_0) nil_1) (cons_0 y_6 nil_0))))
(assert (risers_0 nil_1 nil_0))
(assert (forall ((x_53 list_0) (x_54 list_1) (x_11 list_0))
	(=> (and (risers_0 x_54 x_11) (mergingbu_0 x_53 x_54)) (msortbu_0 x_53 x_11))))
(assert (forall ((x_56 list_0) (x_57 Bool_0) (xs_4 list_0))
	(=> (and (diseqBool_0 x_57 true_0) (msortbu_0 x_56 xs_4) (ordered_0 x_57 x_56)) false)))
(check-sat)
(get-model)
