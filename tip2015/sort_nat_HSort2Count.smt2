(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((Heap_0 0)) (((Node_0 (projNode_0 Heap_0) (projNode_1 Nat_0) (projNode_2 Heap_0)) (Nil_1 ))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun hmerge_0 (Heap_0 Heap_0 Heap_0) Bool)
(declare-fun toList_0 (list_0 Heap_0) Bool)
(declare-fun hinsert_0 (Heap_0 Nat_0 Heap_0) Bool)
(declare-fun toHeap_0 (Heap_0 list_0) Bool)
(declare-fun hsort_0 (list_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_71 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_71))))
(assert (forall ((x_72 Nat_0))
	(diseqNat_0 (succ_0 x_72) zero_0)))
(assert (forall ((x_73 Nat_0) (x_74 Nat_0))
	(=> (diseqNat_0 x_73 x_74) (diseqNat_0 (succ_0 x_73) (succ_0 x_74)))))
(assert (forall ((x_20 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (plus_0 x_20 z_0 y_0) (plus_0 (succ_0 x_20) (succ_0 z_0) y_0))))
(assert (forall ((x_21 Nat_0))
	(plus_0 x_21 zero_0 x_21)))
(assert (forall ((x_22 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (leq_0 x_22 z_1 x_2) (leq_0 x_22 (succ_0 z_1) (succ_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(leq_0 false_0 (succ_0 z_1) zero_0)))
(assert (forall ((y_1 Nat_0))
	(leq_0 true_0 zero_0 y_1)))
(assert (forall ((x_26 Heap_0))
	(hmerge_0 x_26 Nil_1 x_26)))
(assert (forall ((z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0))
	(hmerge_0 (Node_0 z_2 x_4 x_5) (Node_0 z_2 x_4 x_5) Nil_1)))
(assert (forall ((x_30 Heap_0) (x_6 Heap_0) (x_7 Nat_0) (x_8 Heap_0) (z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0))
	(=> (and (hmerge_0 x_30 x_5 (Node_0 x_6 x_7 x_8)) (leq_0 true_0 x_4 x_7)) (hmerge_0 (Node_0 x_30 x_4 z_2) (Node_0 z_2 x_4 x_5) (Node_0 x_6 x_7 x_8)))))
(assert (forall ((x_33 Heap_0) (x_31 Bool_0) (x_6 Heap_0) (x_7 Nat_0) (x_8 Heap_0) (z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0))
	(=> (and (diseqBool_0 x_31 true_0) (hmerge_0 x_33 (Node_0 z_2 x_4 x_5) x_8) (leq_0 x_31 x_4 x_7)) (hmerge_0 (Node_0 x_33 x_7 x_6) (Node_0 z_2 x_4 x_5) (Node_0 x_6 x_7 x_8)))))
(assert (toList_0 nil_0 Nil_1))
(assert (forall ((x_36 Heap_0) (x_37 list_0) (q_0 Heap_0) (y_3 Nat_0) (r_0 Heap_0))
	(=> (and (hmerge_0 x_36 q_0 r_0) (toList_0 x_37 x_36)) (toList_0 (cons_0 y_3 x_37) (Node_0 q_0 y_3 r_0)))))
(assert (forall ((x_38 Heap_0) (x_10 Nat_0) (y_4 Heap_0))
	(=> (hmerge_0 x_38 (Node_0 Nil_1 x_10 Nil_1) y_4) (hinsert_0 x_38 x_10 y_4))))
(assert (forall ((x_40 Heap_0) (x_41 Heap_0) (y_5 Nat_0) (xs_0 list_0))
	(=> (and (toHeap_0 x_41 xs_0) (hinsert_0 x_40 y_5 x_41)) (toHeap_0 x_40 (cons_0 y_5 xs_0)))))
(assert (toHeap_0 Nil_1 nil_0))
(assert (forall ((x_44 list_0) (x_45 Heap_0) (x_12 list_0))
	(=> (and (toHeap_0 x_45 x_12) (toList_0 x_44 x_45)) (hsort_0 x_44 x_12))))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0) (ys_0 list_0) (x_13 Nat_0))
	(=> (and (count_0 x_48 x_13 ys_0) (plus_0 x_47 (succ_0 zero_0) x_48)) (count_0 x_47 x_13 (cons_0 x_13 ys_0)))))
(assert (forall ((x_50 Nat_0) (z_3 Nat_0) (ys_0 list_0) (x_13 Nat_0))
	(=> (and (diseqNat_0 x_13 z_3) (count_0 x_50 x_13 ys_0)) (count_0 x_50 x_13 (cons_0 z_3 ys_0)))))
(assert (forall ((x_13 Nat_0))
	(count_0 zero_0 x_13 nil_0)))
(assert (forall ((x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0) (x_14 Nat_0) (y_7 Nat_0) (z_4 Nat_0))
	(=> (and (diseqNat_0 x_54 x_56) (plus_0 x_53 y_7 z_4) (plus_0 x_54 x_14 x_53) (plus_0 x_55 x_14 y_7) (plus_0 x_56 x_55 z_4)) false)))
(assert (forall ((x_57 Nat_0) (x_58 Nat_0) (x_15 Nat_0) (y_8 Nat_0))
	(=> (and (diseqNat_0 x_57 x_58) (plus_0 x_57 x_15 y_8) (plus_0 x_58 y_8 x_15)) false)))
(assert (forall ((x_59 Nat_0) (x_16 Nat_0))
	(=> (and (diseqNat_0 x_59 x_16) (plus_0 x_59 x_16 zero_0)) false)))
(assert (forall ((x_60 Nat_0) (x_17 Nat_0))
	(=> (and (diseqNat_0 x_60 x_17) (plus_0 x_60 zero_0 x_17)) false)))
(assert (forall ((x_61 list_0) (x_62 Nat_0) (x_63 Nat_0) (x_18 Nat_0) (xs_1 list_0))
	(=> (and (diseqNat_0 x_62 x_63) (hsort_0 x_61 xs_1) (count_0 x_62 x_18 x_61) (count_0 x_63 x_18 xs_1)) false)))
(check-sat)
(get-model)
