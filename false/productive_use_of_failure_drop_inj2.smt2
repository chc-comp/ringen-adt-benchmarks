(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_14 Nat_0))
	(diseqNat_0 (S_0 x_14) Z_0)))
(assert (forall ((x_15 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_15))))
(assert (forall ((x_16 Nat_0) (x_17 Nat_0))
	(=> (diseqNat_0 x_16 x_17) (diseqNat_0 (S_0 x_16) (S_0 x_17)))))
(assert (forall ((x_24 Nat_0) (x_25 list_0))
	(diseqlist_0 nil_0 (cons_0 x_24 x_25))))
(assert (forall ((x_26 Nat_0) (x_27 list_0))
	(diseqlist_0 (cons_0 x_26 x_27) nil_0)))
(assert (forall ((x_28 Nat_0) (x_29 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (diseqNat_0 x_28 x_30) (diseqlist_0 (cons_0 x_28 x_29) (cons_0 x_30 x_31)))))
(assert (forall ((x_28 Nat_0) (x_29 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (diseqlist_0 x_29 x_31) (diseqlist_0 (cons_0 x_28 x_29) (cons_0 x_30 x_31)))))
(assert (forall ((x_3 list_0))
	(drop_0 x_3 Z_0 x_3)))
(assert (forall ((x_4 list_0) (x_1 Nat_0) (x_2 list_0) (z_1 Nat_0))
	(=> (drop_0 x_4 z_1 x_2) (drop_0 x_4 (S_0 z_1) (cons_0 x_1 x_2)))))
(assert (forall ((z_1 Nat_0))
	(drop_0 nil_0 (S_0 z_1) nil_0)))
(assert (forall ((x_7 list_0) (n_0 Nat_0) (xs_0 list_0) (ys_0 list_0))
	(=> (and (diseqlist_0 xs_0 ys_0) (drop_0 x_7 n_0 xs_0) (drop_0 x_7 n_0 ys_0)) false)))
(check-sat)
(get-model)
