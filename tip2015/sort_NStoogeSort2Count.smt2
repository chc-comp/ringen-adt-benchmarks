(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_5 ) (Z_6 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun twoThirds_0 (Nat_0 Nat_0) Bool)
(declare-fun third_0 (Nat_0 Nat_0) Bool)
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun x_8 (list_0 list_0 list_0) Bool)
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_100 Nat_0))
	(diseqNat_0 Z_5 (Z_6 x_100))))
(assert (forall ((x_101 Nat_0))
	(diseqNat_0 (Z_6 x_101) Z_5)))
(assert (forall ((x_102 Nat_0) (x_103 Nat_0))
	(=> (diseqNat_0 x_102 x_103) (diseqNat_0 (Z_6 x_102) (Z_6 x_103)))))
(assert (forall ((y_9 Nat_0))
	(add_0 y_9 Z_5 y_9)))
(assert (forall ((r_0 Nat_0) (x_87 Nat_0) (y_9 Nat_0))
	(=> (add_0 r_0 x_87 y_9) (add_0 (Z_6 r_0) (Z_6 x_87) y_9))))
(assert (forall ((y_9 Nat_0))
	(minus_0 Z_5 Z_5 y_9)))
(assert (forall ((r_0 Nat_0) (x_87 Nat_0) (y_9 Nat_0))
	(=> (minus_0 r_0 x_87 y_9) (minus_0 (Z_6 r_0) (Z_6 x_87) y_9))))
(assert (forall ((y_9 Nat_0))
	(le_0 Z_5 y_9)))
(assert (forall ((x_87 Nat_0) (y_9 Nat_0))
	(=> (le_0 x_87 y_9) (le_0 (Z_6 x_87) (Z_6 y_9)))))
(assert (forall ((y_9 Nat_0))
	(gt_0 (Z_6 y_9) Z_5)))
(assert (forall ((x_87 Nat_0) (y_9 Nat_0))
	(=> (gt_0 x_87 y_9) (gt_0 (Z_6 x_87) (Z_6 y_9)))))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (twoThirds_0 (Z_6 Z_5) (Z_6 Z_5))))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (and (diseqNat_0 Z_5 (Z_6 (Z_6 Z_5))) (diseqNat_0 Z_5 (Z_6 Z_5))) (twoThirds_0 Z_5 Z_5)))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (twoThirds_0 (Z_6 Z_5) (Z_6 Z_5))))
(assert (twoThirds_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))))
(assert (forall ((x_89 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_0 Nat_0))
	(=> (and (diseqNat_0 x_0 (Z_6 (Z_6 Z_5))) (diseqNat_0 x_0 (Z_6 Z_5)) (diseqNat_0 x_0 Z_5) (twoThirds_0 x_28 x_89) (minus_0 x_89 x_0 (Z_6 (Z_6 (Z_6 Z_5)))) (add_0 x_27 (Z_6 (Z_6 Z_5)) x_28)) (twoThirds_0 x_27 x_0))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (and (diseqNat_0 Z_5 (Z_6 (Z_6 Z_5))) (diseqNat_0 Z_5 (Z_6 Z_5))) (third_0 Z_5 Z_5)))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (=> (diseqNat_0 (Z_6 Z_5) (Z_6 (Z_6 Z_5))) (third_0 Z_5 (Z_6 Z_5))))
(assert (third_0 Z_5 (Z_6 (Z_6 Z_5))))
(assert (forall ((x_91 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_1 Nat_0))
	(=> (and (diseqNat_0 x_1 (Z_6 (Z_6 Z_5))) (diseqNat_0 x_1 (Z_6 Z_5)) (diseqNat_0 x_1 Z_5) (third_0 x_37 x_91) (minus_0 x_91 x_1 (Z_6 (Z_6 (Z_6 Z_5)))) (add_0 x_36 (Z_6 Z_5) x_37)) (third_0 x_36 x_1))))
(assert (forall ((x_2 Nat_0) (y_0 list_0))
	(=> (le_0 x_2 Z_5) (take_0 nil_0 x_2 y_0))))
(assert (forall ((x_92 Nat_0) (x_40 list_0) (z_0 Nat_0) (xs_0 list_0) (x_2 Nat_0))
	(=> (and (gt_0 x_2 Z_5) (take_0 x_40 x_92 xs_0) (minus_0 x_92 x_2 (Z_6 Z_5))) (take_0 (cons_0 z_0 x_40) x_2 (cons_0 z_0 xs_0)))))
(assert (forall ((x_2 Nat_0) (y_0 list_0))
	(=> (le_0 x_2 Z_5) (take_0 nil_0 x_2 y_0))))
(assert (forall ((x_2 Nat_0))
	(=> (gt_0 x_2 Z_5) (take_0 nil_0 x_2 nil_0))))
(assert (forall ((x_3 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_3 y_1) (sort_0 (cons_0 x_3 (cons_0 y_1 nil_0)) x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_3 y_1) (sort_0 (cons_0 y_1 (cons_0 x_3 nil_0)) x_3 y_1))))
(assert (forall ((x_45 Nat_0) (x_46 Nat_0) (y_2 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_46 l_0) (add_0 x_45 (Z_6 Z_5) x_46)) (length_0 x_45 (cons_0 y_2 l_0)))))
(assert (length_0 Z_5 nil_0))
(assert (forall ((x_48 list_0) (x_5 Nat_0))
	(=> (le_0 x_5 Z_5) (drop_0 x_48 x_5 x_48))))
(assert (forall ((x_94 Nat_0) (x_49 list_0) (z_1 Nat_0) (xs_1 list_0) (x_5 Nat_0))
	(=> (and (gt_0 x_5 Z_5) (drop_0 x_49 x_94 xs_1) (minus_0 x_94 x_5 (Z_6 Z_5))) (drop_0 x_49 x_5 (cons_0 z_1 xs_1)))))
(assert (forall ((x_51 list_0) (x_5 Nat_0))
	(=> (le_0 x_5 Z_5) (drop_0 x_51 x_5 x_51))))
(assert (forall ((x_5 Nat_0))
	(=> (gt_0 x_5 Z_5) (drop_0 nil_0 x_5 nil_0))))
(assert (forall ((x_54 list_0) (x_55 list_0) (x_6 Nat_0) (y_4 list_0))
	(=> (and (take_0 x_54 x_6 y_4) (drop_0 x_55 x_6 y_4)) (splitAt_0 (pair_1 x_54 x_55) x_6 y_4))))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0) (ys_0 list_0) (x_7 Nat_0))
	(=> (and (count_0 x_57 x_7 ys_0) (add_0 x_56 (Z_6 Z_5) x_57)) (count_0 x_56 x_7 (cons_0 x_7 ys_0)))))
(assert (forall ((x_58 Nat_0) (z_2 Nat_0) (ys_0 list_0) (x_7 Nat_0))
	(=> (and (diseqNat_0 x_7 z_2) (count_0 x_58 x_7 ys_0)) (count_0 x_58 x_7 (cons_0 z_2 ys_0)))))
(assert (forall ((x_7 Nat_0))
	(count_0 Z_5 x_7 nil_0)))
(assert (forall ((x_62 list_0) (z_3 Nat_0) (xs_2 list_0) (y_6 list_0))
	(=> (x_8 x_62 xs_2 y_6) (x_8 (cons_0 z_3 x_62) (cons_0 z_3 xs_2) y_6))))
(assert (forall ((x_63 list_0))
	(x_8 x_63 nil_0 x_63)))
(assert (forall ((x_67 list_0) (x_68 list_0) (x_64 Nat_0) (x_65 Nat_0) (ys_1 list_0) (zs_0 list_0) (x_13 list_0))
	(=> (and (nstoogesort_1 x_68 ys_1) (x_8 x_67 x_68 zs_0) (length_0 x_64 x_13) (twoThirds_0 x_65 x_64) (splitAt_0 (pair_1 ys_1 zs_0) x_65 x_13)) (nstoogesort_0 x_67 x_13))))
(assert (forall ((x_70 list_0) (x_71 list_0) (x_72 list_0) (x_16 Nat_0) (x_17 list_0) (y_8 Nat_0) (y_7 Nat_0))
	(=> (and (nstoogesort_0 x_71 (cons_0 y_7 (cons_0 y_8 (cons_0 x_16 x_17)))) (nstoogesort_2 x_72 x_71) (nstoogesort_0 x_70 x_72)) (nstoogesort_1 x_70 (cons_0 y_7 (cons_0 y_8 (cons_0 x_16 x_17)))))))
(assert (forall ((x_74 list_0) (y_8 Nat_0) (y_7 Nat_0))
	(=> (sort_0 x_74 y_7 y_8) (nstoogesort_1 x_74 (cons_0 y_7 (cons_0 y_8 nil_0))))))
(assert (forall ((y_7 Nat_0))
	(nstoogesort_1 (cons_0 y_7 nil_0) (cons_0 y_7 nil_0))))
(assert (nstoogesort_1 nil_0 nil_0))
(assert (forall ((x_81 list_0) (x_82 list_0) (x_78 Nat_0) (x_79 Nat_0) (ys_2 list_0) (zs_1 list_0) (x_18 list_0))
	(=> (and (nstoogesort_1 x_82 zs_1) (x_8 x_81 ys_2 x_82) (length_0 x_78 x_18) (third_0 x_79 x_78) (splitAt_0 (pair_1 ys_2 zs_1) x_79 x_18)) (nstoogesort_2 x_81 x_18))))
(assert (forall ((x_84 list_0) (x_85 Nat_0) (x_86 Nat_0) (x_19 Nat_0) (xs_3 list_0))
	(=> (and (diseqNat_0 x_85 x_86) (nstoogesort_1 x_84 xs_3) (count_0 x_85 x_19 x_84) (count_0 x_86 x_19 xs_3)) false)))
(check-sat)
(get-model)