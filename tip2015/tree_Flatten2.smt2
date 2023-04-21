(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Tree_0 0)) (((Node_0 (projNode_0 Tree_0) (projNode_1 Nat_0) (projNode_2 Tree_0)) (Nil_1 ))))
(declare-fun flatten_0 (list_0 Tree_0 list_0) Bool)
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(declare-fun flatten_1 (list_0 Tree_0) Bool)
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (Z_3 x_59) Z_2)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61) (diseqNat_0 (Z_3 x_60) (Z_3 x_61)))))
(assert (forall ((x_26 Nat_0) (x_27 list_0))
	(diseqlist_0 nil_0 (cons_0 x_26 x_27))))
(assert (forall ((x_28 Nat_0) (x_29 list_0))
	(diseqlist_0 (cons_0 x_28 x_29) nil_0)))
(assert (forall ((x_30 Nat_0) (x_31 list_0) (x_32 Nat_0) (x_33 list_0))
	(=> (diseqNat_0 x_30 x_32) (diseqlist_0 (cons_0 x_30 x_31) (cons_0 x_32 x_33)))))
(assert (forall ((x_30 Nat_0) (x_31 list_0) (x_32 Nat_0) (x_33 list_0))
	(=> (diseqlist_0 x_31 x_33) (diseqlist_0 (cons_0 x_30 x_31) (cons_0 x_32 x_33)))))
(assert (forall ((x_4 list_0))
	(flatten_0 x_4 Nil_1 x_4)))
(assert (forall ((x_5 list_0) (x_6 list_0) (p_0 Tree_0) (z_0 Nat_0) (q_0 Tree_0) (y_0 list_0))
	(=> (and (flatten_0 x_6 q_0 y_0) (flatten_0 x_5 p_0 (cons_0 z_0 x_6))) (flatten_0 x_5 (Node_0 p_0 z_0 q_0) y_0))))
(assert (forall ((x_9 list_0) (z_1 Nat_0) (xs_0 list_0) (y_1 list_0))
	(=> (x_1 x_9 xs_0 y_1) (x_1 (cons_0 z_1 x_9) (cons_0 z_1 xs_0) y_1))))
(assert (forall ((x_10 list_0))
	(x_1 x_10 nil_0 x_10)))
(assert (flatten_1 nil_0 Nil_1))
(assert (forall ((x_12 list_0) (x_13 list_0) (x_14 list_0) (x_15 list_0) (p_1 Tree_0) (y_2 Nat_0) (q_1 Tree_0))
	(=> (and (flatten_1 x_13 p_1) (flatten_1 x_14 q_1) (x_1 x_15 (cons_0 y_2 nil_0) x_14) (x_1 x_12 x_13 x_15)) (flatten_1 x_12 (Node_0 p_1 y_2 q_1)))))
(assert (forall ((x_17 list_0) (x_18 list_0) (p_2 Tree_0))
	(=> (and (diseqlist_0 x_17 x_18) (flatten_0 x_17 p_2 nil_0) (flatten_1 x_18 p_2)) false)))
(check-sat)
(get-model)
