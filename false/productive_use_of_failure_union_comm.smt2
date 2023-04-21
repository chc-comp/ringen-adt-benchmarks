(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun eqNat_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun barbar_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun elem_0 (Bool_0 Nat_0 list_0) Bool)
(declare-fun union_0 (list_0 list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_33 Nat_0))
	(diseqNat_0 (S_0 x_33) Z_0)))
(assert (forall ((x_34 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_34))))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0))
	(=> (diseqNat_0 x_35 x_36) (diseqNat_0 (S_0 x_35) (S_0 x_36)))))
(assert (forall ((x_43 Nat_0) (x_44 list_0))
	(diseqlist_0 nil_0 (cons_0 x_43 x_44))))
(assert (forall ((x_45 Nat_0) (x_46 list_0))
	(diseqlist_0 (cons_0 x_45 x_46) nil_0)))
(assert (forall ((x_47 Nat_0) (x_48 list_0) (x_49 Nat_0) (x_50 list_0))
	(=> (diseqNat_0 x_47 x_49) (diseqlist_0 (cons_0 x_47 x_48) (cons_0 x_49 x_50)))))
(assert (forall ((x_47 Nat_0) (x_48 list_0) (x_49 Nat_0) (x_50 list_0))
	(=> (diseqlist_0 x_48 x_50) (diseqlist_0 (cons_0 x_47 x_48) (cons_0 x_49 x_50)))))
(assert (eqNat_0 true_0 Z_0 Z_0))
(assert (forall ((x_1 Nat_0))
	(eqNat_0 false_0 Z_0 (S_0 x_1))))
(assert (forall ((z_1 Nat_0))
	(eqNat_0 false_0 (S_0 z_1) Z_0)))
(assert (forall ((x_8 Bool_0) (y_1 Nat_0) (z_1 Nat_0))
	(=> (eqNat_0 x_8 z_1 y_1) (eqNat_0 x_8 (S_0 z_1) (S_0 y_1)))))
(assert (forall ((y_2 Bool_0))
	(barbar_0 true_0 true_0 y_2)))
(assert (forall ((x_11 Bool_0) (x_2 Bool_0))
	(=> (diseqBool_0 x_2 true_0) (barbar_0 x_11 x_2 x_11))))
(assert (forall ((x_12 Bool_0) (x_13 Bool_0) (x_14 Bool_0) (z_2 Nat_0) (xs_0 list_0) (x_3 Nat_0))
	(=> (and (eqNat_0 x_13 x_3 z_2) (elem_0 x_14 x_3 xs_0) (barbar_0 x_12 x_13 x_14)) (elem_0 x_12 x_3 (cons_0 z_2 xs_0)))))
(assert (forall ((x_3 Nat_0))
	(elem_0 false_0 x_3 nil_0)))
(assert (forall ((x_18 list_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (union_0 x_18 xs_1 y_4) (elem_0 true_0 z_3 y_4)) (union_0 x_18 (cons_0 z_3 xs_1) y_4))))
(assert (forall ((x_22 list_0) (x_20 Bool_0) (z_3 Nat_0) (xs_1 list_0) (y_4 list_0))
	(=> (and (diseqBool_0 x_20 true_0) (union_0 x_22 xs_1 y_4) (elem_0 x_20 z_3 y_4)) (union_0 (cons_0 z_3 x_22) (cons_0 z_3 xs_1) y_4))))
(assert (forall ((x_23 list_0))
	(union_0 x_23 nil_0 x_23)))
(assert (forall ((x_24 list_0) (x_25 list_0) (xs_2 list_0) (ys_0 list_0))
	(=> (and (diseqlist_0 x_24 x_25) (union_0 x_24 xs_2 ys_0) (union_0 x_25 ys_0 xs_2)) false)))
(check-sat)
(get-model)
