(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_5 ) (Z_6 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun third_0 (Nat_0 Nat_0) Bool)
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun x_7 (list_0 list_0 list_0) Bool)
(declare-fun reverse_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_92 Nat_0))
	(diseqNat_0 Z_5 (Z_6 x_92))))
(assert (forall ((x_93 Nat_0))
	(diseqNat_0 (Z_6 x_93) Z_5)))
(assert (forall ((x_94 Nat_0) (x_95 Nat_0))
	(=> (diseqNat_0 x_94 x_95) (diseqNat_0 (Z_6 x_94) (Z_6 x_95)))))
(assert (forall ((y_11 Nat_0))
	(add_0 y_11 Z_5 y_11)))
(assert (forall ((r_0 Nat_0) (x_82 Nat_0) (y_11 Nat_0))
	(=> (add_0 r_0 x_82 y_11) (add_0 (Z_6 r_0) (Z_6 x_82) y_11))))
(assert (forall ((y_11 Nat_0))
	(minus_0 Z_5 Z_5 y_11)))
(assert (forall ((r_0 Nat_0) (x_82 Nat_0) (y_11 Nat_0))
	(=> (minus_0 r_0 x_82 y_11) (minus_0 (Z_6 r_0) (Z_6 x_82) y_11))))
(assert (forall ((y_11 Nat_0))
	(le_0 Z_5 y_11)))
(assert (forall ((x_82 Nat_0) (y_11 Nat_0))
	(=> (le_0 x_82 y_11) (le_0 (Z_6 x_82) (Z_6 y_11)))))
(assert (forall ((y_11 Nat_0))
	(gt_0 (Z_6 y_11) Z_5)))
(assert (forall ((x_82 Nat_0) (y_11 Nat_0))
	(=> (gt_0 x_82 y_11) (gt_0 (Z_6 x_82) (Z_6 y_11)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (and (diseqNat_0 Z_5 (Z_6 (Z_6 Z_5))) (diseqNat_0 Z_5 (Z_6 Z_5))) (third_0 Z_5 Z_5)))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (forall ((x_84 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_0 Nat_0))
	(=> (and (diseqNat_0 x_0 (Z_6 (Z_6 Z_5))) (diseqNat_0 x_0 (Z_6 Z_5)) (diseqNat_0 x_0 Z_5) (third_0 x_27 x_84) (minus_0 x_84 x_0 (Z_6 (Z_6 (Z_6 Z_5)))) (add_0 x_26 (Z_6 Z_5) x_27)) (third_0 x_26 x_0))))
(assert (forall ((x_1 Nat_0) (y_0 list_0))
	(=> (le_0 x_1 Z_5) (take_0 nil_0 x_1 y_0))))
(assert (forall ((x_85 Nat_0) (x_30 list_0) (z_0 Nat_0) (xs_0 list_0) (x_1 Nat_0))
	(=> (and (gt_0 x_1 Z_5) (take_0 x_30 x_85 xs_0) (minus_0 x_85 x_1 (Z_6 Z_5))) (take_0 (cons_0 z_0 x_30) x_1 (cons_0 z_0 xs_0)))))
(assert (forall ((x_1 Nat_0) (y_0 list_0))
	(=> (le_0 x_1 Z_5) (take_0 nil_0 x_1 y_0))))
(assert (forall ((x_1 Nat_0))
	(=> (gt_0 x_1 Z_5) (take_0 nil_0 x_1 nil_0))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_2 y_1) (sort_0 (cons_0 x_2 (cons_0 y_1 nil_0)) x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_2 y_1) (sort_0 (cons_0 y_1 (cons_0 x_2 nil_0)) x_2 y_1))))
(assert (forall ((x_35 Bool_0) (y_3 Nat_0) (xs_1 list_0) (y_2 Nat_0))
	(=> (and (le_0 y_2 y_3) (ordered_0 x_35 (cons_0 y_3 xs_1))) (ordered_0 x_35 (cons_0 y_2 (cons_0 y_3 xs_1))))))
(assert (forall ((y_3 Nat_0) (xs_1 list_0) (y_2 Nat_0))
	(=> (gt_0 y_2 y_3) (ordered_0 false_0 (cons_0 y_2 (cons_0 y_3 xs_1))))))
(assert (forall ((y_2 Nat_0))
	(ordered_0 true_0 (cons_0 y_2 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((x_40 Nat_0) (x_41 Nat_0) (y_4 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_41 l_0) (add_0 x_40 (Z_6 Z_5) x_41)) (length_0 x_40 (cons_0 y_4 l_0)))))
(assert (length_0 Z_5 nil_0))
(assert (forall ((x_43 list_0) (x_5 Nat_0))
	(=> (le_0 x_5 Z_5) (drop_0 x_43 x_5 x_43))))
(assert (forall ((x_87 Nat_0) (x_44 list_0) (z_2 Nat_0) (xs_2 list_0) (x_5 Nat_0))
	(=> (and (gt_0 x_5 Z_5) (drop_0 x_44 x_87 xs_2) (minus_0 x_87 x_5 (Z_6 Z_5))) (drop_0 x_44 x_5 (cons_0 z_2 xs_2)))))
(assert (forall ((x_46 list_0) (x_5 Nat_0))
	(=> (le_0 x_5 Z_5) (drop_0 x_46 x_5 x_46))))
(assert (forall ((x_5 Nat_0))
	(=> (gt_0 x_5 Z_5) (drop_0 nil_0 x_5 nil_0))))
(assert (forall ((x_49 list_0) (x_50 list_0) (x_6 Nat_0) (y_6 list_0))
	(=> (and (take_0 x_49 x_6 y_6) (drop_0 x_50 x_6 y_6)) (splitAt_0 (pair_1 x_49 x_50) x_6 y_6))))
(assert (forall ((x_52 list_0) (z_3 Nat_0) (xs_3 list_0) (y_7 list_0))
	(=> (x_7 x_52 xs_3 y_7) (x_7 (cons_0 z_3 x_52) (cons_0 z_3 xs_3) y_7))))
(assert (forall ((x_53 list_0))
	(x_7 x_53 nil_0 x_53)))
(assert (forall ((x_54 list_0) (x_55 list_0) (y_8 Nat_0) (xs_4 list_0))
	(=> (and (reverse_0 x_55 xs_4) (x_7 x_54 x_55 (cons_0 y_8 nil_0))) (reverse_0 x_54 (cons_0 y_8 xs_4)))))
(assert (reverse_0 nil_0 nil_0))
(assert (forall ((x_62 list_0) (x_63 list_0) (x_64 list_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 list_0) (ys_0 list_0) (zs_0 list_0) (x_13 list_0))
	(=> (and (nstoogesort_1 x_63 zs_0) (reverse_0 x_64 ys_0) (x_7 x_62 x_63 x_64) (length_0 x_58 x_13) (third_0 x_59 x_58) (reverse_0 x_60 x_13) (splitAt_0 (pair_1 ys_0 zs_0) x_59 x_60)) (nstoogesort_0 x_62 x_13))))
(assert (forall ((x_66 list_0) (x_67 list_0) (x_68 list_0) (x_16 Nat_0) (x_17 list_0) (y_10 Nat_0) (y_9 Nat_0))
	(=> (and (nstoogesort_0 x_67 (cons_0 y_9 (cons_0 y_10 (cons_0 x_16 x_17)))) (nstoogesort_2 x_68 x_67) (nstoogesort_0 x_66 x_68)) (nstoogesort_1 x_66 (cons_0 y_9 (cons_0 y_10 (cons_0 x_16 x_17)))))))
(assert (forall ((x_70 list_0) (y_10 Nat_0) (y_9 Nat_0))
	(=> (sort_0 x_70 y_9 y_10) (nstoogesort_1 x_70 (cons_0 y_9 (cons_0 y_10 nil_0))))))
(assert (forall ((y_9 Nat_0))
	(nstoogesort_1 (cons_0 y_9 nil_0) (cons_0 y_9 nil_0))))
(assert (nstoogesort_1 nil_0 nil_0))
(assert (forall ((x_77 list_0) (x_78 list_0) (x_74 Nat_0) (x_75 Nat_0) (ys_1 list_0) (zs_1 list_0) (x_18 list_0))
	(=> (and (nstoogesort_1 x_78 zs_1) (x_7 x_77 ys_1 x_78) (length_0 x_74 x_18) (third_0 x_75 x_74) (splitAt_0 (pair_1 ys_1 zs_1) x_75 x_18)) (nstoogesort_2 x_77 x_18))))
(assert (forall ((x_80 list_0) (x_81 Bool_0) (xs_5 list_0))
	(=> (and (diseqBool_0 x_81 true_0) (nstoogesort_1 x_80 xs_5) (ordered_0 x_81 x_80)) false)))
(check-sat)
(get-model)
