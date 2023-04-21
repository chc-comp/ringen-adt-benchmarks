(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun nmsorttdhalf_0 (Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(declare-fun ordered_0 (Bool_0 list_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun nmsorttd_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (forall ((x_91 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_91))))
(assert (forall ((x_92 Nat_0))
	(diseqNat_0 (succ_0 x_92) zero_0)))
(assert (forall ((x_93 Nat_0) (x_94 Nat_0))
	(=> (diseqNat_0 x_93 x_94) (diseqNat_0 (succ_0 x_93) (succ_0 x_94)))))
(assert (forall ((x_21 list_0) (z_1 Nat_0) (xs_0 list_0) (z_0 Nat_0))
	(=> (take_0 x_21 z_0 xs_0) (take_0 (cons_0 z_1 x_21) (succ_0 z_0) (cons_0 z_1 xs_0)))))
(assert (forall ((z_0 Nat_0))
	(take_0 nil_0 (succ_0 z_0) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 zero_0 y_0)))
(assert (forall ((x_25 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (plus_0 x_25 z_2 y_1) (plus_0 (succ_0 x_25) (succ_0 z_2) y_1))))
(assert (forall ((x_26 Nat_0))
	(plus_0 x_26 zero_0 x_26)))
(assert (forall ((x_27 Nat_0) (y_3 Nat_0) (z_3 Nat_0))
	(=> (minus_0 x_27 z_3 y_3) (minus_0 x_27 (succ_0 z_3) (succ_0 y_3)))))
(assert (forall ((z_3 Nat_0))
	(minus_0 zero_0 (succ_0 z_3) zero_0)))
(assert (forall ((y_2 Nat_0))
	(minus_0 zero_0 zero_0 y_2)))
(assert (nmsorttdhalf_0 zero_0 (succ_0 zero_0)))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 (succ_0 y_4) (succ_0 zero_0)) (minus_0 x_33 (succ_0 y_4) (succ_0 (succ_0 zero_0))) (nmsorttdhalf_0 x_34 x_33) (plus_0 x_32 (succ_0 zero_0) x_34)) (nmsorttdhalf_0 x_32 (succ_0 y_4)))))
(assert (nmsorttdhalf_0 zero_0 (succ_0 zero_0)))
(assert (=> (diseqNat_0 zero_0 (succ_0 zero_0)) (nmsorttdhalf_0 zero_0 zero_0)))
(assert (forall ((x_38 Bool_0) (x_5 Nat_0) (z_4 Nat_0))
	(=> (leq_0 x_38 z_4 x_5) (leq_0 x_38 (succ_0 z_4) (succ_0 x_5)))))
(assert (forall ((z_4 Nat_0))
	(leq_0 false_0 (succ_0 z_4) zero_0)))
(assert (forall ((y_5 Nat_0))
	(leq_0 true_0 zero_0 y_5)))
(assert (forall ((x_44 list_0) (x_8 Nat_0) (x_9 list_0) (z_5 Nat_0) (x_7 list_0))
	(=> (and (lmerge_0 x_44 x_7 (cons_0 x_8 x_9)) (leq_0 true_0 z_5 x_8)) (lmerge_0 (cons_0 z_5 x_44) (cons_0 z_5 x_7) (cons_0 x_8 x_9)))))
(assert (forall ((x_47 list_0) (x_45 Bool_0) (x_8 Nat_0) (x_9 list_0) (z_5 Nat_0) (x_7 list_0))
	(=> (and (diseqBool_0 x_45 true_0) (lmerge_0 x_47 (cons_0 z_5 x_7) x_9) (leq_0 x_45 z_5 x_8)) (lmerge_0 (cons_0 x_8 x_47) (cons_0 z_5 x_7) (cons_0 x_8 x_9)))))
(assert (forall ((z_5 Nat_0) (x_7 list_0))
	(lmerge_0 (cons_0 z_5 x_7) (cons_0 z_5 x_7) nil_0)))
(assert (forall ((x_49 list_0))
	(lmerge_0 x_49 nil_0 x_49)))
(assert (forall ((x_50 Bool_0) (x_51 Bool_0) (x_52 Bool_0) (y_8 Nat_0) (xs_1 list_0) (y_7 Nat_0))
	(=> (and (leq_0 x_51 y_7 y_8) (ordered_0 x_52 (cons_0 y_8 xs_1)) (and_0 x_50 x_51 x_52)) (ordered_0 x_50 (cons_0 y_7 (cons_0 y_8 xs_1))))))
(assert (forall ((y_7 Nat_0))
	(ordered_0 true_0 (cons_0 y_7 nil_0))))
(assert (ordered_0 true_0 nil_0))
(assert (forall ((x_55 Nat_0) (x_56 Nat_0) (y_9 Nat_0) (l_0 list_0))
	(=> (and (length_0 x_56 l_0) (plus_0 x_55 (succ_0 zero_0) x_56)) (length_0 x_55 (cons_0 y_9 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_59 list_0) (z_8 Nat_0) (xs_2 list_0) (z_7 Nat_0))
	(=> (drop_0 x_59 z_7 xs_2) (drop_0 x_59 (succ_0 z_7) (cons_0 z_8 xs_2)))))
(assert (forall ((z_7 Nat_0))
	(drop_0 nil_0 (succ_0 z_7) nil_0)))
(assert (forall ((x_62 list_0))
	(drop_0 x_62 zero_0 x_62)))
(assert (forall ((x_65 list_0) (x_66 list_0) (x_67 list_0) (x_68 list_0) (x_69 list_0) (x_63 Nat_0) (k_0 Nat_0) (x_14 Nat_0) (x_15 list_0) (y_11 Nat_0))
	(=> (and (take_0 x_66 k_0 (cons_0 y_11 (cons_0 x_14 x_15))) (nmsorttd_0 x_67 x_66) (drop_0 x_68 k_0 (cons_0 y_11 (cons_0 x_14 x_15))) (nmsorttd_0 x_69 x_68) (lmerge_0 x_65 x_67 x_69) (length_0 x_63 (cons_0 y_11 (cons_0 x_14 x_15))) (nmsorttdhalf_0 k_0 x_63)) (nmsorttd_0 x_65 (cons_0 y_11 (cons_0 x_14 x_15))))))
(assert (forall ((y_11 Nat_0))
	(nmsorttd_0 (cons_0 y_11 nil_0) (cons_0 y_11 nil_0))))
(assert (nmsorttd_0 nil_0 nil_0))
(assert (forall ((x_73 Nat_0) (x_74 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_16 Nat_0) (y_12 Nat_0) (z_10 Nat_0))
	(=> (and (diseqNat_0 x_74 x_76) (plus_0 x_73 y_12 z_10) (plus_0 x_74 x_16 x_73) (plus_0 x_75 x_16 y_12) (plus_0 x_76 x_75 z_10)) false)))
(assert (forall ((x_77 Nat_0) (x_78 Nat_0) (x_17 Nat_0) (y_13 Nat_0))
	(=> (and (diseqNat_0 x_77 x_78) (plus_0 x_77 x_17 y_13) (plus_0 x_78 y_13 x_17)) false)))
(assert (forall ((x_79 Nat_0) (x_18 Nat_0))
	(=> (and (diseqNat_0 x_79 x_18) (plus_0 x_79 x_18 zero_0)) false)))
(assert (forall ((x_80 Nat_0) (x_19 Nat_0))
	(=> (and (diseqNat_0 x_80 x_19) (plus_0 x_80 zero_0 x_19)) false)))
(assert (forall ((x_81 list_0) (x_82 Bool_0) (xs_3 list_0))
	(=> (and (diseqBool_0 x_82 true_0) (nmsorttd_0 x_81 xs_3) (ordered_0 x_82 x_81)) false)))
(check-sat)
(get-model)
