(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_3 ) (Z_4 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_49 Nat_1))
	(diseqNat_1 Z_3 (Z_4 x_49))))
(assert (forall ((x_50 Nat_1))
	(diseqNat_1 (Z_4 x_50) Z_3)))
(assert (forall ((x_51 Nat_1) (x_52 Nat_1))
	(=> (diseqNat_1 x_51 x_52) (diseqNat_1 (Z_4 x_51) (Z_4 x_52)))))
(assert (forall ((x_29 Nat_1) (x_30 list_0))
	(diseqlist_0 nil_0 (cons_0 x_29 x_30))))
(assert (forall ((x_31 Nat_1) (x_32 list_0))
	(diseqlist_0 (cons_0 x_31 x_32) nil_0)))
(assert (forall ((x_33 Nat_1) (x_34 list_0) (x_35 Nat_1) (x_36 list_0))
	(=> (diseqNat_1 x_33 x_35) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_33 Nat_1) (x_34 list_0) (x_35 Nat_1) (x_36 list_0))
	(=> (diseqlist_0 x_34 x_36) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_8 Nat_0) (y_0 Nat_1) (xs_0 list_0))
	(=> (length_0 x_8 xs_0) (length_0 (S_0 x_8) (cons_0 y_0 xs_0)))))
(assert (length_0 Z_0 nil_0))
(assert (forall ((x_11 list_0) (z_1 Nat_1) (xs_1 list_0) (y_1 list_0))
	(=> (x_1 x_11 xs_1 y_1) (x_1 (cons_0 z_1 x_11) (cons_0 z_1 xs_1) y_1))))
(assert (forall ((x_12 list_0))
	(x_1 x_12 nil_0 x_12)))
(assert (forall ((x_13 list_0) (x_14 list_0) (x_4 Nat_1) (x_5 list_0) (z_2 Nat_0))
	(=> (and (x_1 x_14 x_5 (cons_0 x_4 nil_0)) (rotate_0 x_13 z_2 x_14)) (rotate_0 x_13 (S_0 z_2) (cons_0 x_4 x_5)))))
(assert (forall ((z_2 Nat_0))
	(rotate_0 nil_0 (S_0 z_2) nil_0)))
(assert (forall ((x_17 list_0))
	(rotate_0 x_17 Z_0 x_17)))
(assert (forall ((x_18 Nat_0) (x_19 list_0) (x_20 list_0) (x_21 list_0) (x_6 list_0) (y_3 list_0))
	(=> (and (diseqlist_0 x_20 x_21) (length_0 x_18 x_6) (x_1 x_19 x_6 y_3) (rotate_0 x_20 x_18 x_19) (x_1 x_21 y_3 x_6)) false)))
(check-sat)
(get-model)