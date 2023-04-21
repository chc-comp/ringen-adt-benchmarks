(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_1 ) (Z_2 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(declare-fun rev_0 (list_0 list_0) Bool)
(assert (forall ((x_38 Nat_0))
	(diseqNat_0 Z_1 (Z_2 x_38))))
(assert (forall ((x_39 Nat_0))
	(diseqNat_0 (Z_2 x_39) Z_1)))
(assert (forall ((x_40 Nat_0) (x_41 Nat_0))
	(=> (diseqNat_0 x_40 x_41) (diseqNat_0 (Z_2 x_40) (Z_2 x_41)))))
(assert (forall ((x_26 Nat_0) (x_27 list_0))
	(diseqlist_0 nil_0 (cons_0 x_26 x_27))))
(assert (forall ((x_28 Nat_0) (x_29 list_0))
	(diseqlist_0 (cons_0 x_28 x_29) nil_0)))
(assert (forall ((x_30 Nat_0) (x_31 list_0) (x_32 Nat_0) (x_33 list_0))
	(=> (diseqNat_0 x_30 x_32) (diseqlist_0 (cons_0 x_30 x_31) (cons_0 x_32 x_33)))))
(assert (forall ((x_30 Nat_0) (x_31 list_0) (x_32 Nat_0) (x_33 list_0))
	(=> (diseqlist_0 x_31 x_33) (diseqlist_0 (cons_0 x_30 x_31) (cons_0 x_32 x_33)))))
(assert (forall ((x_5 list_0) (z_0 Nat_0) (xs_0 list_0) (y_0 list_0))
	(=> (x_0 x_5 xs_0 y_0) (x_0 (cons_0 z_0 x_5) (cons_0 z_0 xs_0) y_0))))
(assert (forall ((x_6 list_0))
	(x_0 x_6 nil_0 x_6)))
(assert (forall ((x_7 list_0) (x_8 list_0) (y_1 Nat_0) (xs_1 list_0))
	(=> (and (rev_0 x_8 xs_1) (x_0 x_7 x_8 (cons_0 y_1 nil_0))) (rev_0 x_7 (cons_0 y_1 xs_1)))))
(assert (rev_0 nil_0 nil_0))
(assert (forall ((x_11 list_0) (x_12 list_0) (x_13 list_0) (x_14 list_0) (x_15 list_0) (x_16 list_0) (x_17 list_0) (x_18 list_0) (x_3 list_0) (y_2 list_0))
	(=> (and (diseqlist_0 x_13 x_18) (x_0 x_11 x_3 y_2) (rev_0 x_12 x_11) (rev_0 x_13 x_12) (rev_0 x_14 x_3) (rev_0 x_15 x_14) (rev_0 x_16 y_2) (rev_0 x_17 x_16) (x_0 x_18 x_15 x_17)) false)))
(check-sat)
(get-model)
