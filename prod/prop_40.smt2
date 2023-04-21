(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun barbar_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun x_1 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_0) Bool)
(declare-fun union_0 (list_0 list_0 list_0) Bool)
(declare-fun x_6 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun subset_0 (Bool_0 list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_45 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_45))))
(assert (forall ((x_46 Nat_0))
	(diseqNat_0 (S_0 x_46) Z_0)))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0))
	(=> (diseqNat_0 x_47 x_48) (diseqNat_0 (S_0 x_47) (S_0 x_48)))))
(assert (forall ((x_55 Nat_0) (x_56 list_0))
	(diseqlist_0 nil_0 (cons_0 x_55 x_56))))
(assert (forall ((x_57 Nat_0) (x_58 list_0))
	(diseqlist_0 (cons_0 x_57 x_58) nil_0)))
(assert (forall ((x_59 Nat_0) (x_60 list_0) (x_61 Nat_0) (x_62 list_0))
	(=> (diseqNat_0 x_59 x_61) (diseqlist_0 (cons_0 x_59 x_60) (cons_0 x_61 x_62)))))
(assert (forall ((x_59 Nat_0) (x_60 list_0) (x_61 Nat_0) (x_62 list_0))
	(=> (diseqlist_0 x_60 x_62) (diseqlist_0 (cons_0 x_59 x_60) (cons_0 x_61 x_62)))))
(assert (forall ((y_0 Bool_0))
	(barbar_0 true_0 true_0 y_0)))
(assert (forall ((x_11 Bool_0) (x_0 Bool_0))
	(=> (diseqBool_0 x_0 true_0) (barbar_0 x_11 x_0 x_11))))
(assert (forall ((x_12 Bool_0) (y_2 Nat_0) (x_3 Nat_0))
	(=> (x_1 x_12 x_3 y_2) (x_1 x_12 (S_0 x_3) (S_0 y_2)))))
(assert (forall ((x_3 Nat_0))
	(x_1 false_0 (S_0 x_3) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_1 false_0 Z_0 (S_0 z_1))))
(assert (x_1 true_0 Z_0 Z_0))
(assert (forall ((x_17 Bool_0) (x_18 Bool_0) (x_19 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_4 Nat_0))
	(=> (and (x_1 x_18 x_4 z_2) (elem_0 x_19 x_4 xs_0) (barbar_0 x_17 x_18 x_19)) (elem_0 x_17 x_4 (cons_0 z_2 xs_0)))))
(assert (forall ((x_4 Nat_0))
	(elem_0 false_0 x_4 nil_0)))
(assert (forall ((x_23 list_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (union_0 x_23 xs_1 y_4) (elem_0 true_0 z_3 y_4)) (union_0 x_23 (cons_0 z_3 xs_1) y_4))))
(assert (forall ((x_27 list_0) (x_25 Bool_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (diseqBool_0 x_25 true_0) (union_0 x_27 xs_1 y_4) (elem_0 x_25 z_3 y_4)) (union_0 (cons_0 z_3 x_27) (cons_0 z_3 xs_1) y_4))))
(assert (forall ((x_28 list_0))
	(union_0 x_28 nil_0 x_28)))
(assert (forall ((x_29 Bool_0))
	(x_6 x_29 true_0 x_29)))
(assert (forall ((x_7 Bool_0) (y_5 Bool_0))
	(=> (diseqBool_0 x_7 true_0) (x_6 false_0 x_7 y_5))))
(assert (forall ((x_31 Bool_0) (x_32 Bool_0) (x_33 Bool_0) (z_4 Nat_0) (xs_2 list_0) (y_6 list_0))
	(=> (and (elem_0 x_32 z_4 y_6) (subset_0 x_33 xs_2 y_6) (x_6 x_31 x_32 x_33)) (subset_0 x_31 (cons_0 z_4 xs_2) y_6))))
(assert (forall ((y_6 list_0))
	(subset_0 true_0 nil_0 y_6)))
(assert (forall ((x_36 list_0) (x_9 list_0) (y_7 list_0))
	(=> (and (diseqlist_0 x_36 y_7) (subset_0 true_0 x_9 y_7) (union_0 x_36 x_9 y_7)) false)))
(check-sat)
(get-model)