(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_4 ) (Z_5 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun not_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_1) (projpair_1 Nat_1)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unpair_0 (list_0 list_1) Bool)
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun pairs_0 (list_1 list_0) Bool)
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun even_0 (Bool_0 Nat_0) Bool)
(assert (forall ((x_95 Nat_1))
	(diseqNat_1 Z_4 (Z_5 x_95))))
(assert (forall ((x_96 Nat_1))
	(diseqNat_1 (Z_5 x_96) Z_4)))
(assert (forall ((x_97 Nat_1) (x_98 Nat_1))
	(=> (diseqNat_1 x_97 x_98) (diseqNat_1 (Z_5 x_97) (Z_5 x_98)))))
(assert (not_0 true_0 false_0))
(assert (not_0 false_0 true_0))
(assert (forall ((x_61 Nat_1) (x_62 list_0))
	(diseqlist_0 nil_0 (cons_0 x_61 x_62))))
(assert (forall ((x_63 Nat_1) (x_64 list_0))
	(diseqlist_0 (cons_0 x_63 x_64) nil_0)))
(assert (forall ((x_65 Nat_1) (x_66 list_0) (x_67 Nat_1) (x_68 list_0))
	(=> (diseqNat_1 x_65 x_67) (diseqlist_0 (cons_0 x_65 x_66) (cons_0 x_67 x_68)))))
(assert (forall ((x_65 Nat_1) (x_66 list_0) (x_67 Nat_1) (x_68 list_0))
	(=> (diseqlist_0 x_66 x_68) (diseqlist_0 (cons_0 x_65 x_66) (cons_0 x_67 x_68)))))
(assert (forall ((x_87 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_87))))
(assert (forall ((x_88 Nat_0))
	(diseqNat_0 (succ_0 x_88) zero_0)))
(assert (forall ((x_89 Nat_0) (x_90 Nat_0))
	(=> (diseqNat_0 x_89 x_90) (diseqNat_0 (succ_0 x_89) (succ_0 x_90)))))
(assert (forall ((x_10 list_0) (z_0 Nat_1) (y_1 Nat_1) (xys_0 list_1))
	(=> (unpair_0 x_10 xys_0) (unpair_0 (cons_0 z_0 (cons_0 y_1 x_10)) (cons_1 (pair_1 z_0 y_1) xys_0)))))
(assert (unpair_0 nil_0 nil_1))
(assert (forall ((x_13 Nat_0) (z_1 Nat_0) (y_2 Nat_0))
	(=> (plus_0 x_13 z_1 y_2) (plus_0 (succ_0 x_13) (succ_0 z_1) y_2))))
(assert (forall ((x_14 Nat_0))
	(plus_0 x_14 zero_0 x_14)))
(assert (forall ((x_16 list_1) (y_4 Nat_1) (xs_0 list_0) (y_3 Nat_1))
	(=> (pairs_0 x_16 xs_0) (pairs_0 (cons_1 (pair_1 y_3 y_4) x_16) (cons_0 y_3 (cons_0 y_4 xs_0))))))
(assert (forall ((y_3 Nat_1))
	(pairs_0 nil_1 (cons_0 y_3 nil_0))))
(assert (pairs_0 nil_1 nil_0))
(assert (forall ((x_19 Nat_0) (x_20 Nat_0) (y_5 Nat_1) (l_0 list_0))
	(=> (and (length_0 x_20 l_0) (plus_0 x_19 (succ_0 zero_0) x_20)) (length_0 x_19 (cons_0 y_5 l_0)))))
(assert (length_0 zero_0 nil_0))
(assert (forall ((x_23 Bool_0) (x_24 Bool_0) (y_6 Nat_0))
	(=> (and (even_0 x_24 y_6) (not_0 x_23 x_24)) (even_0 x_23 (succ_0 y_6)))))
(assert (even_0 true_0 zero_0))
(assert (forall ((x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_5 Nat_0) (y_7 Nat_0) (z_3 Nat_0))
	(=> (and (diseqNat_0 x_27 x_29) (plus_0 x_26 y_7 z_3) (plus_0 x_27 x_5 x_26) (plus_0 x_28 x_5 y_7) (plus_0 x_29 x_28 z_3)) false)))
(assert (forall ((x_30 Nat_0) (x_31 Nat_0) (x_6 Nat_0) (y_8 Nat_0))
	(=> (and (diseqNat_0 x_30 x_31) (plus_0 x_30 x_6 y_8) (plus_0 x_31 y_8 x_6)) false)))
(assert (forall ((x_32 Nat_0) (x_7 Nat_0))
	(=> (and (diseqNat_0 x_32 x_7) (plus_0 x_32 x_7 zero_0)) false)))
(assert (forall ((x_33 Nat_0) (x_8 Nat_0))
	(=> (and (diseqNat_0 x_33 x_8) (plus_0 x_33 zero_0 x_8)) false)))
(assert (forall ((x_36 Nat_0) (x_34 list_1) (x_35 list_0) (xs_1 list_0))
	(=> (and (diseqlist_0 x_35 xs_1) (length_0 x_36 xs_1) (even_0 true_0 x_36) (pairs_0 x_34 xs_1) (unpair_0 x_35 x_34)) false)))
(check-sat)
(get-model)
