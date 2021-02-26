(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_57 Nat_0) (x_56 Nat_0))
	(=> (= x_57 (S_0 x_56))
	    (unS_1 x_56 x_57))))
(assert (isZ_0 Z_0))
(assert (forall ((x_58 Nat_0))
	(isS_0 (S_0 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_59))))
(assert (forall ((x_60 Nat_0))
	(diseqNat_0 (S_0 x_60) Z_0)))
(assert (forall ((x_61 Nat_0) (x_62 Nat_0))
	(=> (diseqNat_0 x_61 x_62)
	    (diseqNat_0 (S_0 x_61) (S_0 x_62)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_7 Nat_0))
	(add_0 y_7 Z_0 y_7)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_54 y_7)
	    (add_0 (S_0 r_0) (S_0 x_54) y_7))))
(assert (forall ((y_7 Nat_0))
	(minus_0 Z_0 Z_0 y_7)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_54 y_7)
	    (minus_0 (S_0 r_0) (S_0 x_54) y_7))))
(assert (forall ((y_7 Nat_0))
	(le_0 Z_0 y_7)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (le_0 x_54 y_7)
	    (le_0 (S_0 x_54) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(ge_0 y_7 Z_0)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (ge_0 x_54 y_7)
	    (ge_0 (S_0 x_54) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(lt_0 Z_0 (S_0 y_7))))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_54 y_7)
	    (lt_0 (S_0 x_54) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(gt_0 (S_0 y_7) Z_0)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (gt_0 x_54 y_7)
	    (gt_0 (S_0 x_54) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(mult_0 Z_0 Z_0 y_7)))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_0 x_54 y_7)
			(add_0 z_4 r_0 y_7))
		(mult_0 z_4 (S_0 x_54) y_7))))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_54 y_7)
	    (div_0 Z_0 x_54 y_7))))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_54 y_7)
			(minus_0 z_4 x_54 y_7)
			(div_0 r_0 z_4 y_7))
		(div_0 (S_0 r_0) x_54 y_7))))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_54 y_7)
	    (mod_0 x_54 x_54 y_7))))
(assert (forall ((x_54 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_54 y_7)
			(minus_0 z_4 x_54 y_7)
			(mod_0 r_0 z_4 y_7))
		(mod_0 r_0 x_54 y_7))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_66 list_0) (x_64 Nat_0) (x_65 list_0))
	(=> (= x_66 (cons_0 x_64 x_65))
	    (head_2 x_64 x_66))))
(assert (forall ((x_66 list_0) (x_64 Nat_0) (x_65 list_0))
	(=> (= x_66 (cons_0 x_64 x_65))
	    (tail_2 x_65 x_66))))
(assert (isnil_0 nil_0))
(assert (forall ((x_67 Nat_0) (x_68 list_0))
	(iscons_0 (cons_0 x_67 x_68))))
(assert (forall ((x_69 Nat_0) (x_70 list_0))
	(diseqlist_0 nil_0 (cons_0 x_69 x_70))))
(assert (forall ((x_71 Nat_0) (x_72 list_0))
	(diseqlist_0 (cons_0 x_71 x_72) nil_0)))
(assert (forall ((x_73 Nat_0) (x_74 list_0) (x_75 Nat_0) (x_76 list_0))
	(=> (diseqNat_0 x_73 x_75)
	    (diseqlist_0 (cons_0 x_73 x_74) (cons_0 x_75 x_76)))))
(assert (forall ((x_73 Nat_0) (x_74 list_0) (x_75 Nat_0) (x_76 list_0))
	(=> (diseqlist_0 x_74 x_76)
	    (diseqlist_0 (cons_0 x_73 x_74) (cons_0 x_75 x_76)))))
(declare-datatypes ((Heap_0 0)) (((Node_0 (projNode_0 Heap_0) (projNode_1 Nat_0) (projNode_2 Heap_0)) (Nil_0 ))))
(declare-fun diseqHeap_0 (Heap_0 Heap_0) Bool)
(declare-fun projNode_3 (Heap_0 Heap_0) Bool)
(declare-fun projNode_4 (Nat_0 Heap_0) Bool)
(declare-fun projNode_5 (Heap_0 Heap_0) Bool)
(declare-fun isNode_0 (Heap_0) Bool)
(declare-fun isNil_0 (Heap_0) Bool)
(assert (forall ((x_80 Heap_0) (x_77 Heap_0) (x_78 Nat_0) (x_79 Heap_0))
	(=> (= x_80 (Node_0 x_77 x_78 x_79))
	    (projNode_3 x_77 x_80))))
(assert (forall ((x_80 Heap_0) (x_77 Heap_0) (x_78 Nat_0) (x_79 Heap_0))
	(=> (= x_80 (Node_0 x_77 x_78 x_79))
	    (projNode_4 x_78 x_80))))
(assert (forall ((x_80 Heap_0) (x_77 Heap_0) (x_78 Nat_0) (x_79 Heap_0))
	(=> (= x_80 (Node_0 x_77 x_78 x_79))
	    (projNode_5 x_79 x_80))))
(assert (forall ((x_82 Heap_0) (x_83 Nat_0) (x_84 Heap_0))
	(isNode_0 (Node_0 x_82 x_83 x_84))))
(assert (isNil_0 Nil_0))
(assert (forall ((x_85 Heap_0) (x_86 Nat_0) (x_87 Heap_0))
	(diseqHeap_0 (Node_0 x_85 x_86 x_87) Nil_0)))
(assert (forall ((x_88 Heap_0) (x_89 Nat_0) (x_90 Heap_0))
	(diseqHeap_0 Nil_0 (Node_0 x_88 x_89 x_90))))
(assert (forall ((x_91 Heap_0) (x_92 Nat_0) (x_93 Heap_0) (x_94 Heap_0) (x_95 Nat_0) (x_96 Heap_0))
	(=> (diseqHeap_0 x_91 x_94)
	    (diseqHeap_0 (Node_0 x_91 x_92 x_93) (Node_0 x_94 x_95 x_96)))))
(assert (forall ((x_91 Heap_0) (x_92 Nat_0) (x_93 Heap_0) (x_94 Heap_0) (x_95 Nat_0) (x_96 Heap_0))
	(=> (diseqNat_0 x_92 x_95)
	    (diseqHeap_0 (Node_0 x_91 x_92 x_93) (Node_0 x_94 x_95 x_96)))))
(assert (forall ((x_91 Heap_0) (x_92 Nat_0) (x_93 Heap_0) (x_94 Heap_0) (x_95 Nat_0) (x_96 Heap_0))
	(=> (diseqHeap_0 x_93 x_96)
	    (diseqHeap_0 (Node_0 x_91 x_92 x_93) (Node_0 x_94 x_95 x_96)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Heap_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (Heap_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_100 list_1) (x_98 Heap_0) (x_99 list_1))
	(=> (= x_100 (cons_1 x_98 x_99))
	    (head_3 x_98 x_100))))
(assert (forall ((x_100 list_1) (x_98 Heap_0) (x_99 list_1))
	(=> (= x_100 (cons_1 x_98 x_99))
	    (tail_3 x_99 x_100))))
(assert (isnil_1 nil_1))
(assert (forall ((x_101 Heap_0) (x_102 list_1))
	(iscons_1 (cons_1 x_101 x_102))))
(assert (forall ((x_103 Heap_0) (x_104 list_1))
	(diseqlist_1 nil_1 (cons_1 x_103 x_104))))
(assert (forall ((x_105 Heap_0) (x_106 list_1))
	(diseqlist_1 (cons_1 x_105 x_106) nil_1)))
(assert (forall ((x_107 Heap_0) (x_108 list_1) (x_109 Heap_0) (x_110 list_1))
	(=> (diseqHeap_0 x_107 x_109)
	    (diseqlist_1 (cons_1 x_107 x_108) (cons_1 x_109 x_110)))))
(assert (forall ((x_107 Heap_0) (x_108 list_1) (x_109 Heap_0) (x_110 list_1))
	(=> (diseqlist_1 x_108 x_110)
	    (diseqlist_1 (cons_1 x_107 x_108) (cons_1 x_109 x_110)))))
(declare-fun toHeap_0 (list_1 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_15 list_1) (x_16 list_1))
	(=>	(and (= x_15 (cons_1 (Node_0 Nil_0 y_0 Nil_0) x_16))
			(toHeap_0 x_16 z_0)
			(= x_0 (cons_0 y_0 z_0)))
		(toHeap_0 x_15 x_0))))
(assert (forall ((x_0 list_0) (x_17 list_1))
	(=>	(and (= x_17 nil_1)
			(= x_0 nil_0))
		(toHeap_0 x_17 x_0))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 list_0) (z_1 Nat_0) (xs_0 list_0) (x_18 list_0))
	(=>	(and (= x_18 (cons_0 x_1 (cons_0 z_1 xs_0)))
			(= y_1 (cons_0 z_1 xs_0))
			(le_0 x_1 z_1))
		(insert_0 x_18 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 list_0) (z_1 Nat_0) (xs_0 list_0) (x_19 list_0) (x_20 list_0))
	(=>	(and (= x_19 (cons_0 z_1 x_20))
			(insert_0 x_20 x_1 xs_0)
			(= y_1 (cons_0 z_1 xs_0))
			(gt_0 x_1 z_1))
		(insert_0 x_19 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 list_0) (x_21 list_0))
	(=>	(and (= x_21 (cons_0 x_1 nil_0))
			(= y_1 nil_0))
		(insert_0 x_21 x_1 y_1))))
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_2 Nat_0) (xs_1 list_0) (x_22 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_22 x_24)
			(isort_0 x_23 xs_1)
			(insert_0 x_24 y_2 x_23)
			(= x_2 (cons_0 y_2 xs_1)))
		(isort_0 x_22 x_2))))
(assert (forall ((x_2 list_0) (x_25 list_0))
	(=>	(and (= x_25 nil_0)
			(= x_2 nil_0))
		(isort_0 x_25 x_2))))
(declare-fun hmerge_0 (Heap_0 Heap_0 Heap_0) Bool)
(assert (forall ((x_3 Heap_0) (y_3 Heap_0) (x_26 Heap_0))
	(=>	(and (= x_26 y_3)
			(= x_3 Nil_0))
		(hmerge_0 x_26 x_3 y_3))))
(assert (forall ((x_3 Heap_0) (y_3 Heap_0) (z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0) (x_27 Heap_0))
	(=>	(and (= x_27 (Node_0 z_2 x_4 x_5))
			(= x_3 (Node_0 z_2 x_4 x_5))
			(= y_3 Nil_0))
		(hmerge_0 x_27 x_3 y_3))))
(assert (forall ((x_3 Heap_0) (y_3 Heap_0) (z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0) (x_6 Heap_0) (x_7 Nat_0) (x_8 Heap_0) (x_28 Heap_0) (x_29 Heap_0))
	(=>	(and (= x_28 (Node_0 x_29 x_4 z_2))
			(hmerge_0 x_29 x_5 (Node_0 x_6 x_7 x_8))
			(= x_3 (Node_0 z_2 x_4 x_5))
			(= y_3 (Node_0 x_6 x_7 x_8))
			(le_0 x_4 x_7))
		(hmerge_0 x_28 x_3 y_3))))
(assert (forall ((x_3 Heap_0) (y_3 Heap_0) (z_2 Heap_0) (x_4 Nat_0) (x_5 Heap_0) (x_6 Heap_0) (x_7 Nat_0) (x_8 Heap_0) (x_30 Heap_0) (x_31 Heap_0))
	(=>	(and (= x_30 (Node_0 x_31 x_7 x_6))
			(hmerge_0 x_31 (Node_0 z_2 x_4 x_5) x_8)
			(= x_3 (Node_0 z_2 x_4 x_5))
			(= y_3 (Node_0 x_6 x_7 x_8))
			(gt_0 x_4 x_7))
		(hmerge_0 x_30 x_3 y_3))))
(declare-fun hpairwise_0 (list_1 list_1) Bool)
(assert (forall ((x_9 list_1) (p_0 Heap_0) (y_4 list_1) (q_0 Heap_0) (qs_0 list_1) (x_32 list_1) (x_33 Heap_0) (x_34 list_1))
	(=>	(and (= x_32 (cons_1 x_33 x_34))
			(hmerge_0 x_33 p_0 q_0)
			(hpairwise_0 x_34 qs_0)
			(= x_9 (cons_1 p_0 y_4))
			(= y_4 (cons_1 q_0 qs_0)))
		(hpairwise_0 x_32 x_9))))
(assert (forall ((x_9 list_1) (p_0 Heap_0) (y_4 list_1) (x_35 list_1))
	(=>	(and (= x_35 (cons_1 p_0 nil_1))
			(= x_9 (cons_1 p_0 y_4))
			(= y_4 nil_1))
		(hpairwise_0 x_35 x_9))))
(assert (forall ((x_9 list_1) (x_36 list_1))
	(=>	(and (= x_36 nil_1)
			(= x_9 nil_1))
		(hpairwise_0 x_36 x_9))))
(declare-fun hmerging_0 (Heap_0 list_1) Bool)
(assert (forall ((x_10 list_1) (p_1 Heap_0) (y_5 list_1) (z_3 Heap_0) (x_11 list_1) (x_37 Heap_0) (x_38 list_1) (x_39 Heap_0))
	(=>	(and (= x_37 x_39)
			(hpairwise_0 x_38 (cons_1 p_1 (cons_1 z_3 x_11)))
			(hmerging_0 x_39 x_38)
			(= x_10 (cons_1 p_1 y_5))
			(= y_5 (cons_1 z_3 x_11)))
		(hmerging_0 x_37 x_10))))
(assert (forall ((x_10 list_1) (p_1 Heap_0) (y_5 list_1) (x_40 Heap_0))
	(=>	(and (= x_40 p_1)
			(= x_10 (cons_1 p_1 y_5))
			(= y_5 nil_1))
		(hmerging_0 x_40 x_10))))
(assert (forall ((x_10 list_1) (x_41 Heap_0))
	(=>	(and (= x_41 Nil_0)
			(= x_10 nil_1))
		(hmerging_0 x_41 x_10))))
(declare-fun toHeap_1 (Heap_0 list_0) Bool)
(assert (forall ((x_12 list_0) (x_42 Heap_0) (x_43 list_1) (x_44 Heap_0))
	(=>	(and (= x_42 x_44)
			(toHeap_0 x_43 x_12)
			(hmerging_0 x_44 x_43))
		(toHeap_1 x_42 x_12))))
(declare-fun toList_0 (list_0 Heap_0) Bool)
(assert (forall ((x_13 Heap_0) (x_45 list_0))
	(=>	(and (= x_45 nil_0)
			(= x_13 Nil_0))
		(toList_0 x_45 x_13))))
(assert (forall ((x_13 Heap_0) (p_2 Heap_0) (y_6 Nat_0) (q_1 Heap_0) (x_46 list_0) (x_47 Heap_0) (x_48 list_0))
	(=>	(and (= x_46 (cons_0 y_6 x_48))
			(hmerge_0 x_47 p_2 q_1)
			(toList_0 x_48 x_47)
			(= x_13 (Node_0 p_2 y_6 q_1)))
		(toList_0 x_46 x_13))))
(declare-fun hsort_0 (list_0 list_0) Bool)
(assert (forall ((x_14 list_0) (x_49 list_0) (x_50 Heap_0) (x_51 list_0))
	(=>	(and (= x_49 x_51)
			(toHeap_1 x_50 x_14)
			(toList_0 x_51 x_50))
		(hsort_0 x_49 x_14))))
(assert (forall ((xs_2 list_0) (x_52 list_0) (x_53 list_0))
	(=>	(and (diseqlist_0 x_52 x_53)
			(hsort_0 x_52 xs_2)
			(isort_0 x_53 xs_2))
		false)))
(check-sat)
