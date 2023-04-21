(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_19 Nat_0))
	(diseqNat_0 (S_0 x_19) Z_0)))
(assert (forall ((x_20 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_20))))
(assert (forall ((x_21 Nat_0) (x_22 Nat_0))
	(=> (diseqNat_0 x_21 x_22) (diseqNat_0 (S_0 x_21) (S_0 x_22)))))
(assert (forall ((x_29 Nat_0) (x_30 list_0))
	(diseqlist_0 nil_0 (cons_0 x_29 x_30))))
(assert (forall ((x_31 Nat_0) (x_32 list_0))
	(diseqlist_0 (cons_0 x_31 x_32) nil_0)))
(assert (forall ((x_33 Nat_0) (x_34 list_0) (x_35 Nat_0) (x_36 list_0))
	(=> (diseqNat_0 x_33 x_35) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_33 Nat_0) (x_34 list_0) (x_35 Nat_0) (x_36 list_0))
	(=> (diseqlist_0 x_34 x_36) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_6 list_0) (z_1 Nat_0) (xs_0 list_0) (y_0 list_0))
	(=> (x_0 x_6 xs_0 y_0) (x_0 (cons_0 z_1 x_6) (cons_0 z_1 xs_0) y_0))))
(assert (forall ((x_7 list_0))
	(x_0 x_7 nil_0 x_7)))
(assert (forall ((x_8 list_0))
	(rotate_0 x_8 Z_0 x_8)))
(assert (forall ((x_10 list_0) (x_11 list_0) (x_3 Nat_0) (x_4 list_0) (z_2 Nat_0))
	(=> (and (x_0 x_10 x_4 (cons_0 x_3 nil_0)) (rotate_0 x_11 z_2 x_10)) (rotate_0 x_11 (S_0 z_2) (cons_0 x_3 x_4)))))
(assert (forall ((z_2 Nat_0))
	(rotate_0 nil_0 (S_0 z_2) nil_0)))
(assert (forall ((x_13 list_0) (n_0 Nat_0) (xs_1 list_0))
	(=> (and (diseqlist_0 xs_1 x_13) (rotate_0 x_13 n_0 xs_1)) false)))
(check-sat)
(get-model)
