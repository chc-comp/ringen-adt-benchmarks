(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_22 Nat_0))
	(diseqNat_0 (S_0 x_22) Z_0)))
(assert (forall ((x_23 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_23))))
(assert (forall ((x_24 Nat_0) (x_25 Nat_0))
	(=> (diseqNat_0 x_24 x_25) (diseqNat_0 (S_0 x_24) (S_0 x_25)))))
(assert (forall ((x_32 Nat_0) (x_33 list_0))
	(diseqlist_0 nil_0 (cons_0 x_32 x_33))))
(assert (forall ((x_34 Nat_0) (x_35 list_0))
	(diseqlist_0 (cons_0 x_34 x_35) nil_0)))
(assert (forall ((x_36 Nat_0) (x_37 list_0) (x_38 Nat_0) (x_39 list_0))
	(=> (diseqNat_0 x_36 x_38) (diseqlist_0 (cons_0 x_36 x_37) (cons_0 x_38 x_39)))))
(assert (forall ((x_36 Nat_0) (x_37 list_0) (x_38 Nat_0) (x_39 list_0))
	(=> (diseqlist_0 x_37 x_39) (diseqlist_0 (cons_0 x_36 x_37) (cons_0 x_38 x_39)))))
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
(assert (forall ((x_13 list_0) (x_14 list_0) (x_15 list_0) (x_16 list_0) (n_0 Nat_0) (m_0 Nat_0) (xs_1 list_0))
	(=> (and (diseqlist_0 x_14 x_16) (rotate_0 x_13 m_0 xs_1) (rotate_0 x_14 n_0 x_13) (rotate_0 x_15 n_0 xs_1) (rotate_0 x_16 m_0 x_15)) false)))
(check-sat)
(get-model)