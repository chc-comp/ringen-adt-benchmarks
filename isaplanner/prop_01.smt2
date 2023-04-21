(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_4 ) (Z_5 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun x_6 (list_0 list_0 list_0) Bool)
(assert (forall ((x_49 Nat_1))
	(diseqNat_1 Z_4 (Z_5 x_49))))
(assert (forall ((x_50 Nat_1))
	(diseqNat_1 (Z_5 x_50) Z_4)))
(assert (forall ((x_51 Nat_1) (x_52 Nat_1))
	(=> (diseqNat_1 x_51 x_52) (diseqNat_1 (Z_5 x_51) (Z_5 x_52)))))
(assert (forall ((x_29 Nat_1) (x_30 list_0))
	(diseqlist_0 nil_0 (cons_0 x_29 x_30))))
(assert (forall ((x_31 Nat_1) (x_32 list_0))
	(diseqlist_0 (cons_0 x_31 x_32) nil_0)))
(assert (forall ((x_33 Nat_1) (x_34 list_0) (x_35 Nat_1) (x_36 list_0))
	(=> (diseqNat_1 x_33 x_35) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_33 Nat_1) (x_34 list_0) (x_35 Nat_1) (x_36 list_0))
	(=> (diseqlist_0 x_34 x_36) (diseqlist_0 (cons_0 x_33 x_34) (cons_0 x_35 x_36)))))
(assert (forall ((x_9 list_0) (x_1 Nat_1) (x_2 list_0) (z_1 Nat_0))
	(=> (take_0 x_9 z_1 x_2) (take_0 (cons_0 x_1 x_9) (S_0 z_1) (cons_0 x_1 x_2)))))
(assert (forall ((z_1 Nat_0))
	(take_0 nil_0 (S_0 z_1) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 Z_0 y_0)))
(assert (forall ((x_12 list_0) (x_4 Nat_1) (x_5 list_0) (z_2 Nat_0))
	(=> (drop_0 x_12 z_2 x_5) (drop_0 x_12 (S_0 z_2) (cons_0 x_4 x_5)))))
(assert (forall ((z_2 Nat_0))
	(drop_0 nil_0 (S_0 z_2) nil_0)))
(assert (forall ((x_15 list_0))
	(drop_0 x_15 Z_0 x_15)))
(assert (forall ((x_17 list_0) (z_3 Nat_1) (xs_0 list_0) (y_2 list_0))
	(=> (x_6 x_17 xs_0 y_2) (x_6 (cons_0 z_3 x_17) (cons_0 z_3 xs_0) y_2))))
(assert (forall ((x_18 list_0))
	(x_6 x_18 nil_0 x_18)))
(assert (forall ((x_19 list_0) (x_20 list_0) (x_21 list_0) (n_0 Nat_0) (xs_1 list_0))
	(=> (and (diseqlist_0 x_21 xs_1) (take_0 x_19 n_0 xs_1) (drop_0 x_20 n_0 xs_1) (x_6 x_21 x_19 x_20)) false)))
(check-sat)
(get-model)
