(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Heap_0 0)) (((Node_0 (projNode_0 Heap_0) (projNode_1 Nat_0) (projNode_2 Heap_0)) (Nil_1 ))))
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(declare-fun isort_0 (list_0 list_0) Bool)
(declare-fun hmerge_0 (Heap_0 Heap_0 Heap_0) Bool)
(declare-fun toList_0 (list_0 Heap_0) Bool)
(declare-fun hinsert_0 (Heap_0 Nat_0 Heap_0) Bool)
(declare-fun toHeap_0 (Heap_0 list_0) Bool)
(declare-fun hsort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (succ_0 x_59) zero_0)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61) (diseqNat_0 (succ_0 x_60) (succ_0 x_61)))))
(assert (forall ((x_68 Nat_0) (x_69 list_0))
	(diseqlist_0 nil_0 (cons_0 x_68 x_69))))
(assert (forall ((x_70 Nat_0) (x_71 list_0))
	(diseqlist_0 (cons_0 x_70 x_71) nil_0)))
(assert (forall ((x_72 Nat_0) (x_73 list_0) (x_74 Nat_0) (x_75 list_0))
	(=> (diseqNat_0 x_72 x_74) (diseqlist_0 (cons_0 x_72 x_73) (cons_0 x_74 x_75)))))
(assert (forall ((x_72 Nat_0) (x_73 list_0) (x_74 Nat_0) (x_75 list_0))
	(=> (diseqlist_0 x_73 x_75) (diseqlist_0 (cons_0 x_72 x_73) (cons_0 x_74 x_75)))))
(assert (forall ((x_14 Bool_0) (x_1 Nat_0) (z_0 Nat_0))
	(=> (leq_0 x_14 z_0 x_1) (leq_0 x_14 (succ_0 z_0) (succ_0 x_1)))))
(assert (forall ((z_0 Nat_0))
	(leq_0 false_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(leq_0 true_0 zero_0 y_0)))
(assert (forall ((z_1 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (leq_0 true_0 x_2 z_1) (insert_0 (cons_0 x_2 (cons_0 z_1 xs_0)) x_2 (cons_0 z_1 xs_0)))))
(assert (forall ((x_22 list_0) (x_20 Bool_0) (z_1 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (and (diseqBool_0 x_20 true_0) (insert_0 x_22 x_2 xs_0) (leq_0 x_20 x_2 z_1)) (insert_0 (cons_0 z_1 x_22) x_2 (cons_0 z_1 xs_0)))))
(assert (forall ((x_2 Nat_0))
	(insert_0 (cons_0 x_2 nil_0) x_2 nil_0)))
(assert (forall ((x_24 list_0) (x_25 list_0) (y_2 Nat_0) (xs_1 list_0))
	(=> (and (isort_0 x_25 xs_1) (insert_0 x_24 y_2 x_25)) (isort_0 x_24 (cons_0 y_2 xs_1)))))
(assert (isort_0 nil_0 nil_0))
(assert (forall ((x_28 Heap_0))
	(hmerge_0 x_28 Nil_1 x_28)))
(assert (forall ((z_2 Heap_0) (x_5 Nat_0) (x_6 Heap_0))
	(hmerge_0 (Node_0 z_2 x_5 x_6) (Node_0 z_2 x_5 x_6) Nil_1)))
(assert (forall ((x_32 Heap_0) (x_7 Heap_0) (x_8 Nat_0) (x_9 Heap_0) (z_2 Heap_0) (x_5 Nat_0) (x_6 Heap_0))
	(=> (and (hmerge_0 x_32 x_6 (Node_0 x_7 x_8 x_9)) (leq_0 true_0 x_5 x_8)) (hmerge_0 (Node_0 x_32 x_5 z_2) (Node_0 z_2 x_5 x_6) (Node_0 x_7 x_8 x_9)))))
(assert (forall ((x_35 Heap_0) (x_33 Bool_0) (x_7 Heap_0) (x_8 Nat_0) (x_9 Heap_0) (z_2 Heap_0) (x_5 Nat_0) (x_6 Heap_0))
	(=> (and (diseqBool_0 x_33 true_0) (hmerge_0 x_35 (Node_0 z_2 x_5 x_6) x_9) (leq_0 x_33 x_5 x_8)) (hmerge_0 (Node_0 x_35 x_8 x_7) (Node_0 z_2 x_5 x_6) (Node_0 x_7 x_8 x_9)))))
(assert (toList_0 nil_0 Nil_1))
(assert (forall ((x_38 Heap_0) (x_39 list_0) (q_0 Heap_0) (y_4 Nat_0) (r_0 Heap_0))
	(=> (and (hmerge_0 x_38 q_0 r_0) (toList_0 x_39 x_38)) (toList_0 (cons_0 y_4 x_39) (Node_0 q_0 y_4 r_0)))))
(assert (forall ((x_40 Heap_0) (x_11 Nat_0) (y_5 Heap_0))
	(=> (hmerge_0 x_40 (Node_0 Nil_1 x_11 Nil_1) y_5) (hinsert_0 x_40 x_11 y_5))))
(assert (forall ((x_42 Heap_0) (x_43 Heap_0) (y_6 Nat_0) (xs_2 list_0))
	(=> (and (toHeap_0 x_43 xs_2) (hinsert_0 x_42 y_6 x_43)) (toHeap_0 x_42 (cons_0 y_6 xs_2)))))
(assert (toHeap_0 Nil_1 nil_0))
(assert (forall ((x_46 list_0) (x_47 Heap_0) (x_13 list_0))
	(=> (and (toHeap_0 x_47 x_13) (toList_0 x_46 x_47)) (hsort_0 x_46 x_13))))
(assert (forall ((x_49 list_0) (x_50 list_0) (xs_3 list_0))
	(=> (and (diseqlist_0 x_49 x_50) (hsort_0 x_49 xs_3) (isort_0 x_50 xs_3)) false)))
(check-sat)
(get-model)
