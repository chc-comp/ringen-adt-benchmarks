(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-datatypes ((Tree_0 0)) (((TNode_0 (projTNode_0 Tree_0) (projTNode_1 Nat_0) (projTNode_2 Tree_0)) (TNil_0 ))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun flatten_0 (list_0 Tree_0 list_0) Bool)
(declare-fun add_0 (Tree_0 Nat_0 Tree_0) Bool)
(declare-fun toTree_0 (Tree_0 list_0) Bool)
(declare-fun tsort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (forall ((x_7 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_7 z_0 x_1) (leq_0 x_7 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((x_11 Bool_0) (x_12 Bool_0) (x_13 Bool_0) (y_2 Nat_0) (xs_0 list_0) (y_1 Nat_0))
	(=> (and (leq_0 x_12 y_1 y_2) (ordered_0 x_13 (cons_0 y_2 xs_0)) (and_0 x_11 x_12 x_13)) (ordered_0 x_11 (cons_0 y_1 (cons_0 y_2 xs_0))))))
(assert (forall ((y_1 Nat_0))
	(ordered_0 true_0 (cons_0 y_1 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((x_16 list_0))
	(flatten_0 x_16 TNil_0 x_16)))
(assert (forall ((x_17 list_0) (x_18 list_0) (q_0 Tree_0) (z_2 Nat_0) (r_0 Tree_0) (y_3 list_0))
	(=> (and (flatten_0 x_18 r_0 y_3) (flatten_0 x_17 q_0 (cons_0 z_2 x_18))) (flatten_0 x_17 (TNode_0 q_0 z_2 r_0) y_3))))
(assert (forall ((x_4 Nat_0))
	(add_0 (TNode_0 TNil_0 x_4 TNil_0) x_4 TNil_0)))
(assert (forall ((x_23 Tree_0) (q_1 Tree_0) (z_3 Nat_0) (r_1 Tree_0) (x_4 Nat_0))
	(=> (and (add_0 x_23 x_4 q_1) (leq_0 true_0 x_4 z_3)) (add_0 (TNode_0 x_23 z_3 r_1) x_4 (TNode_0 q_1 z_3 r_1)))))
(assert (forall ((x_26 Tree_0) (x_24 Bool_0) (q_1 Tree_0) (z_3 Nat_0) (r_1 Tree_0) (x_4 Nat_0))
	(=> (and (diseqBool_0 x_24 true_0) (add_0 x_26 x_4 r_1) (leq_0 x_24 x_4 z_3)) (add_0 (TNode_0 q_1 z_3 x_26) x_4 (TNode_0 q_1 z_3 r_1)))))
(assert (forall ((x_27 Tree_0) (x_28 Tree_0) (y_5 Nat_0) (xs_1 list_0))
	(=> (and (toTree_0 x_28 xs_1) (add_0 x_27 y_5 x_28)) (toTree_0 x_27 (cons_0 y_5 xs_1)))))
(assert (toTree_0 TNil_0 nil_0))
(assert (forall ((x_31 list_0) (x_32 Tree_0) (x_6 list_0))
	(=> (and (toTree_0 x_32 x_6) (flatten_0 x_31 x_32 nil_0)) (tsort_0 x_31 x_6))))
(assert (forall ((x_34 list_0) (x_35 Bool_0) (xs_2 list_0))
	(=> (and (diseqBool_0 x_35 true_0) (tsort_0 x_34 xs_2) (ordered_0 x_35 x_34)) false)))
(check-sat)
(get-model)
