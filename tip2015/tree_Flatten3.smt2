(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Tree_0 0)) (((Node_0 (projNode_0 Tree_0) (projNode_1 Nat_0) (projNode_2 Tree_0)) (Nil_1 ))))
(declare-fun flatten_0 (list_0 Tree_0) Bool)
(declare-fun x_2 (list_0 list_0 list_0) Bool)
(declare-fun flatten_1 (list_0 Tree_0) Bool)
(assert (forall ((x_60 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_60))))
(assert (forall ((x_61 Nat_0))
	(diseqNat_0 (Z_3 x_61) Z_2)))
(assert (forall ((x_62 Nat_0) (x_63 Nat_0))
	(=> (diseqNat_0 x_62 x_63) (diseqNat_0 (Z_3 x_62) (Z_3 x_63)))))
(assert (forall ((x_28 Nat_0) (x_29 list_0))
	(diseqlist_0 nil_0 (cons_0 x_28 x_29))))
(assert (forall ((x_30 Nat_0) (x_31 list_0))
	(diseqlist_0 (cons_0 x_30 x_31) nil_0)))
(assert (forall ((x_32 Nat_0) (x_33 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (diseqNat_0 x_32 x_34) (diseqlist_0 (cons_0 x_32 x_33) (cons_0 x_34 x_35)))))
(assert (forall ((x_32 Nat_0) (x_33 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (diseqlist_0 x_33 x_35) (diseqlist_0 (cons_0 x_32 x_33) (cons_0 x_34 x_35)))))
(assert (flatten_0 nil_0 Nil_1))
(assert (forall ((x_7 list_0) (z_0 Nat_0) (r_0 Tree_0))
	(=> (flatten_0 x_7 r_0) (flatten_0 (cons_0 z_0 x_7) (Node_0 Nil_1 z_0 r_0)))))
(assert (forall ((x_8 list_0) (p_0 Tree_0) (x_1 Nat_0) (q_0 Tree_0) (z_0 Nat_0) (r_0 Tree_0))
	(=> (flatten_0 x_8 (Node_0 p_0 x_1 (Node_0 q_0 z_0 r_0))) (flatten_0 x_8 (Node_0 (Node_0 p_0 x_1 q_0) z_0 r_0)))))
(assert (forall ((x_11 list_0) (z_1 Nat_0) (xs_0 list_0) (y_1 list_0))
	(=> (x_2 x_11 xs_0 y_1) (x_2 (cons_0 z_1 x_11) (cons_0 z_1 xs_0) y_1))))
(assert (forall ((x_12 list_0))
	(x_2 x_12 nil_0 x_12)))
(assert (flatten_1 nil_0 Nil_1))
(assert (forall ((x_14 list_0) (x_15 list_0) (x_16 list_0) (x_17 list_0) (p_1 Tree_0) (y_2 Nat_0) (q_1 Tree_0))
	(=> (and (flatten_1 x_15 p_1) (flatten_1 x_16 q_1) (x_2 x_17 (cons_0 y_2 nil_0) x_16) (x_2 x_14 x_15 x_17)) (flatten_1 x_14 (Node_0 p_1 y_2 q_1)))))
(assert (forall ((x_19 list_0) (x_20 list_0) (p_2 Tree_0))
	(=> (and (diseqlist_0 x_19 x_20) (flatten_0 x_19 p_2) (flatten_1 x_20 p_2)) false)))
(check-sat)
(get-model)
