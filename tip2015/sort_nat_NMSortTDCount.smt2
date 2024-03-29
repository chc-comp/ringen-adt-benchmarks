(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun nmsorttdhalf_0 (Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun nmsorttd_0 (list_0 list_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_93 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_93))))
(assert (forall ((x_94 Nat_0))
	(diseqNat_0 (succ_0 x_94) zero_0)))
(assert (forall ((x_95 Nat_0) (x_96 Nat_0))
	(=> (diseqNat_0 x_95 x_96) (diseqNat_0 (succ_0 x_95) (succ_0 x_96)))))
(assert (forall ((x_22 list_0) (z_1 Nat_0) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_22 z_0 xs_0) (take_0 (cons_0 z_1 x_22) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_26 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_26 z_2 y_1) (plus_0 (succ_0 x_26) (succ_0 z_2) y_1))))
(assert (forall ((x_27 Nat_0))
	(plus_0 x_27 zero_0 x_27)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (z_3 Nat_0))
	(=> (minus_0 x_28 z_3 y_3) (minus_0 x_28 (succ_0 z_3) (succ_0 y_3)))))
(assert (forall ((z_3 Nat_0))
	(minus_0 zero_0 (succ_0 z_3) zero_0)))
(assert (forall ((y_2 Nat_0))
	(minus_0 zero_0 zero_0 y_2)))
(assert (nmsorttdhalf_0 zero_0 (succ_0 zero_0)))
(assert (forall ((x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 (succ_0 y_4) (succ_0 zero_0)) (minus_0 x_34 (succ_0 y_4) (succ_0 (succ_0 zero_0))) (nmsorttdhalf_0 x_35 x_34) (plus_0 x_33 (succ_0 zero_0) x_35)) (nmsorttdhalf_0 x_33 (succ_0 y_4)))))
(assert (nmsorttdhalf_0 zero_0 (succ_0 zero_0)))
(assert (=> (diseqNat_0 zero_0 (succ_0 zero_0)) (nmsorttdhalf_0 zero_0 zero_0)))
(assert (forall ((x_39 Bool_0) (x_5 Nat_0) (z_4 Nat_0))
	(=> (leq_0 x_39 z_4 x_5) (leq_0 x_39 (succ_0 z_4) (succ_0 x_5)))))
(assert (forall ((z_4 Nat_0))
	(leq_0 false_0 (succ_0 z_4) zero_0)))
(assert (forall ((y_5 Nat_0))
	(leq_0 true_0 zero_0 y_5)))
(assert (forall ((x_45 list_0) (x_8 Nat_0) (x_9 list_0) (z_5 Nat_0) (x_7 list_0))
	(=> (and (lmerge_0 x_45 x_7 (cons_0 x_8 x_9)) (leq_0 true_0 z_5 x_8)) (lmerge_0 (cons_0 z_5 x_45) (cons_0 z_5 x_7) (cons_0 x_8 x_9)))))
(assert (forall ((x_48 list_0) (x_46 Bool_0) (x_8 Nat_0) (x_9 list_0) (z_5 Nat_0) (x_7 list_0))
	(=> (and (diseqBool_0 x_46 true_0) (lmerge_0 x_48 (cons_0 z_5 x_7) x_9) (leq_0 x_46 z_5 x_8)) (lmerge_0 (cons_0 x_8 x_48) (cons_0 z_5 x_7) (cons_0 x_8 x_9)))))
(assert (forall ((z_5 Nat_0) (x_7 list_0))
	(lmerge_0 (cons_0 z_5 x_7) (cons_0 z_5 x_7) nil_0)))
(assert (forall ((x_50 list_0))
	(lmerge_0 x_50 nil_0 x_50)))
(assert (forall ((x_51 Nat_0) (x_52 Nat_0) (y_7 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_52 l_0) (plus_0 x_51 (succ_0 zero_0) x_52)) (length_0 x_51 (cons_0 y_7 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_55 list_0) (z_7 Nat_0) (xs_1 list_0) (z_6 Nat_0))
	(=> (drop_0 x_55 z_6 xs_1) (drop_0 x_55 (succ_0 z_6) (cons_0 z_7 xs_1)))))
(assert (forall ((z_6 Nat_0))
	(drop_0 nil_0 (succ_0 z_6) nil_0)))
(assert (forall ((x_58 list_0))
	(drop_0 x_58 zero_0 x_58)))
(assert (forall ((x_61 list_0) (x_62 list_0) (x_63 list_0) (x_64 list_0) (x_65 list_0) (x_59 Nat_0) (k_0 Nat_0) (x_13 Nat_0) (x_14 list_0) (y_9 Nat_0))
	(=> (and (take_0 x_62 k_0 (cons_0 y_9 (cons_0 x_13 x_14))) (nmsorttd_0 x_63 x_62) (drop_0 x_64 k_0 (cons_0 y_9 (cons_0 x_13 x_14))) (nmsorttd_0 x_65 x_64) (lmerge_0 x_61 x_63 x_65) (length_0 x_59 (cons_0 y_9 (cons_0 x_13 x_14))) (nmsorttdhalf_0 k_0 x_59)) (nmsorttd_0 x_61 (cons_0 y_9 (cons_0 x_13 x_14))))))
(assert (forall ((y_9 Nat_0))
	(nmsorttd_0 (cons_0 y_9 nil_0) (cons_0 y_9 nil_0))))
(assert (nmsorttd_0 nil_0 nil_0))
(assert (forall ((x_69 Nat_0) (x_70 Nat_0) (ys_0 list_0) (x_15 Nat_0))
	(=> (and (count_0 x_70 x_15 ys_0) (plus_0 x_69 (succ_0 zero_0) x_70)) (count_0 x_69 x_15 (cons_0 x_15 ys_0)))))
(assert (forall ((x_72 Nat_0) (z_9 Nat_0) (ys_0 list_0) (x_15 Nat_0))
	(=> (and (diseqNat_0 x_15 z_9) (count_0 x_72 x_15 ys_0)) (count_0 x_72 x_15 (cons_0 z_9 ys_0)))))
(assert (forall ((x_15 Nat_0))
	(count_0 zero_0 x_15 nil_0)))
(assert (forall ((x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_16 Nat_0) (y_11 Nat_0) (z_10 Nat_0))
	(=> (and (diseqNat_0 x_76 x_78) (plus_0 x_75 y_11 z_10) (plus_0 x_76 x_16 x_75) (plus_0 x_77 x_16 y_11) (plus_0 x_78 x_77 z_10)) false)))
(assert (forall ((x_79 Nat_0) (x_80 Nat_0) (x_17 Nat_0) (y_12 Nat_0))
	(=> (and (diseqNat_0 x_79 x_80) (plus_0 x_79 x_17 y_12) (plus_0 x_80 y_12 x_17)) false)))
(assert (forall ((x_81 Nat_0) (x_18 Nat_0))
	(=> (and (diseqNat_0 x_81 x_18) (plus_0 x_81 x_18 zero_0)) false)))
(assert (forall ((x_82 Nat_0) (x_19 Nat_0))
	(=> (and (diseqNat_0 x_82 x_19) (plus_0 x_82 zero_0 x_19)) false)))
(assert (forall ((x_83 list_0) (x_84 Nat_0) (x_85 Nat_0) (x_20 Nat_0) (xs_2 list_0))
	(=> (and (diseqNat_0 x_84 x_85) (nmsorttd_0 x_83 xs_2) (count_0 x_84 x_20 x_83) (count_0 x_85 x_20 xs_2)) false)))
(check-sat)
(get-model)
