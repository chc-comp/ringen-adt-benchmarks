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
(declare-fun twoThirds_0 (Nat_0 Nat_0) Bool)
(declare-fun third_0 (Nat_0 Nat_0) Bool)
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun x_8 (list_0 list_0 list_0) Bool)
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_97 Nat_0))
	(diseqNat_0 Z_5 (Z_6 x_97))))
(assert (forall ((x_98 Nat_0))
	(diseqNat_0 (Z_6 x_98) Z_5)))
(assert (forall ((x_100 Nat_0) (x_99 Nat_0))
	(=> (diseqNat_0 x_99 x_100) (diseqNat_0 (Z_6 x_99) (Z_6 x_100)))))
(assert (forall ((y_10 Nat_0))
	(add_0 y_10 Z_5 y_10)))
(assert (forall ((r_0 Nat_0) (x_85 Nat_0) (y_10 Nat_0))
	(=> (add_0 r_0 x_85 y_10) (add_0 (Z_6 r_0) (Z_6 x_85) y_10))))
(assert (forall ((y_10 Nat_0))
	(minus_0 Z_5 Z_5 y_10)))
(assert (forall ((r_0 Nat_0) (x_85 Nat_0) (y_10 Nat_0))
	(=> (minus_0 r_0 x_85 y_10) (minus_0 (Z_6 r_0) (Z_6 x_85) y_10))))
(assert (forall ((y_10 Nat_0))
	(le_0 Z_5 y_10)))
(assert (forall ((x_85 Nat_0) (y_10 Nat_0))
	(=> (le_0 x_85 y_10) (le_0 (Z_6 x_85) (Z_6 y_10)))))
(assert (forall ((y_10 Nat_0))
	(gt_0 (Z_6 y_10) Z_5)))
(assert (forall ((x_85 Nat_0) (y_10 Nat_0))
	(=> (gt_0 x_85 y_10) (gt_0 (Z_6 x_85) (Z_6 y_10)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (twoThirds_0 (Z_6 Z_5) (Z_6 Z_5))))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (and (diseqNat_0 Z_5 (Z_6 (Z_6 Z_5))) (diseqNat_0 Z_5 (Z_6 Z_5))) (twoThirds_0 Z_5 Z_5)))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (twoThirds_0 (Z_6 Z_5) (Z_6 Z_5))))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (forall ((x_87 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_0 Nat_0))
	(=> (and (diseqNat_0 x_0 (Z_6 (Z_6 Z_5))) (diseqNat_0 x_0 (Z_6 Z_5)) (diseqNat_0 x_0 Z_5) (twoThirds_0 x_27 x_87) (minus_0 x_87 x_0 (Z_6 (Z_6 (Z_6 Z_5)))) (add_0 x_26 (Z_6 (Z_6 Z_5)) x_27)) (twoThirds_0 x_26 x_0))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (and (diseqNat_0 Z_5 (Z_6 (Z_6 Z_5))) (diseqNat_0 Z_5 (Z_6 Z_5))) (third_0 Z_5 Z_5)))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (forall ((x_89 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (x_1 Nat_0))
	(=> (and (diseqNat_0 x_1 (Z_6 (Z_6 Z_5))) (diseqNat_0 x_1 (Z_6 Z_5)) (diseqNat_0 x_1 Z_5) (third_0 x_36 x_89) (minus_0 x_89 x_1 (Z_6 (Z_6 (Z_6 Z_5)))) (add_0 x_35 (Z_6 Z_5) x_36)) (third_0 x_35 x_1))))
(assert (forall ((x_2 Nat_0) (y_0 list_0))
	(=> (le_0 x_2 Z_5) (take_0 nil_0 x_2 y_0))))
(assert (forall ((x_90 Nat_0) (x_39 list_0) (z_0 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (and (gt_0 x_2 Z_5) (take_0 x_39 x_90 xs_0) (minus_0 x_90 x_2 (Z_6 Z_5))) (take_0 (cons_0 z_0 x_39) x_2 (cons_0 z_0 xs_0)))))
(assert (forall ((x_2 Nat_0) (y_0 list_0))
	(=> (le_0 x_2 Z_5) (take_0 nil_0 x_2 y_0))))
(assert (forall ((x_2 Nat_0))
	(=> (gt_0 x_2 Z_5) (take_0 nil_0 x_2 nil_0))))
(assert (forall ((x_3 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_3 y_1) (sort_0 (cons_0 x_3 (cons_0 y_1 nil_0)) x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_3 y_1) (sort_0 (cons_0 y_1 (cons_0 x_3 nil_0)) x_3 y_1))))
(assert (forall ((x_44 Bool_0) (y_3 Nat_0) (xs_1 list_0) (y_2 Nat_0))
	(=> (and (le_0 y_2 y_3) (ordered_0 x_44 (cons_0 y_3 xs_1))) (ordered_0 x_44 (cons_0 y_2 (cons_0 y_3 xs_1))))))
(assert (forall ((y_3 Nat_0) (xs_1 list_0) (y_2 Nat_0))
	(=> (gt_0 y_2 y_3) (ordered_0 false_0 (cons_0 y_2 (cons_0 y_3 xs_1))))))
(assert (forall ((y_2 Nat_0))
	(ordered_0 true_0 (cons_0 y_2 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((x_49 Nat_0) (x_50 Nat_0) (y_4 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_50 l_0) (add_0 x_49 (Z_6 Z_5) x_50)) (length_0 x_49 (cons_0 y_4 l_0)))))
(assert (length_0 Z_5 nil_0))
(assert (forall ((x_52 list_0) (x_6 Nat_0))
	(=> (le_0 x_6 Z_5) (drop_0 x_52 x_6 x_52))))
(assert (forall ((x_92 Nat_0) (x_53 list_0) (z_2 Nat_0) (xs_2 list_0) (x_6 Nat_0))
	(=> (and (gt_0 x_6 Z_5) (drop_0 x_53 x_92 xs_2) (minus_0 x_92 x_6 (Z_6 Z_5))) (drop_0 x_53 x_6 (cons_0 z_2 xs_2)))))
(assert (forall ((x_55 list_0) (x_6 Nat_0))
	(=> (le_0 x_6 Z_5) (drop_0 x_55 x_6 x_55))))
(assert (forall ((x_6 Nat_0))
	(=> (gt_0 x_6 Z_5) (drop_0 nil_0 x_6 nil_0))))
(assert (forall ((x_58 list_0) (x_59 list_0) (x_7 Nat_0) (y_6 list_0))
	(=> (and (take_0 x_58 x_7 y_6) (drop_0 x_59 x_7 y_6)) (splitAt_0 (pair_1 x_58 x_59) x_7 y_6))))
(assert (forall ((x_61 list_0) (z_3 Nat_0) (xs_3 list_0) (y_7 list_0))
	(=> (x_8 x_61 xs_3 y_7) (x_8 (cons_0 z_3 x_61) (cons_0 z_3 xs_3) y_7))))
(assert (forall ((x_62 list_0))
	(x_8 x_62 nil_0 x_62)))
(assert (forall ((x_66 list_0) (x_67 list_0) (x_63 Nat_0) (x_64 Nat_0) (ys_0 list_0) (zs_0 list_0) (x_13 list_0))
	(=> (and (nstoogesort_1 x_67 ys_0) (x_8 x_66 x_67 zs_0) (length_0 x_63 x_13) (twoThirds_0 x_64 x_63) (splitAt_0 (pair_1 ys_0 zs_0) x_64 x_13)) (nstoogesort_0 x_66 x_13))))
(assert (forall ((x_69 list_0) (x_70 list_0) (x_71 list_0) (x_16 Nat_0) (x_17 list_0) (y_9 Nat_0) (y_8 Nat_0))
	(=> (and (nstoogesort_0 x_70 (cons_0 y_8 (cons_0 y_9 (cons_0 x_16 x_17)))) (nstoogesort_2 x_71 x_70) (nstoogesort_0 x_69 x_71)) (nstoogesort_1 x_69 (cons_0 y_8 (cons_0 y_9 (cons_0 x_16 x_17)))))))
(assert (forall ((x_73 list_0) (y_9 Nat_0) (y_8 Nat_0))
	(=> (sort_0 x_73 y_8 y_9) (nstoogesort_1 x_73 (cons_0 y_8 (cons_0 y_9 nil_0))))))
(assert (forall ((y_8 Nat_0))
	(nstoogesort_1 (cons_0 y_8 nil_0) (cons_0 y_8 nil_0))))
(assert (nstoogesort_1 nil_0 nil_0))
(assert (forall ((x_80 list_0) (x_81 list_0) (x_77 Nat_0) (x_78 Nat_0) (ys_1 list_0) (zs_1 list_0) (x_18 list_0))
	(=> (and (nstoogesort_1 x_81 zs_1) (x_8 x_80 ys_1 x_81) (length_0 x_77 x_18) (third_0 x_78 x_77) (splitAt_0 (pair_1 ys_1 zs_1) x_78 x_18)) (nstoogesort_2 x_80 x_18))))
(assert (forall ((x_83 list_0) (x_84 Bool_0) (xs_4 list_0))
	(=> (and (diseqBool_0 x_84 true_0) (nstoogesort_1 x_83 xs_4) (ordered_0 x_84 x_83)) false)))
(check-sat)
(get-model)