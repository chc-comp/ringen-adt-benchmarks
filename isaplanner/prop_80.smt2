(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_4 ) (Z_5 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(declare-fun len_0 (Nat_0 list_0) Bool)
(declare-fun x_4 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun x_7 (list_0 list_0 list_0) Bool)
(assert (forall ((x_57 Nat_1))
	(diseqNat_1 Z_4 (Z_5 x_57))))
(assert (forall ((x_58 Nat_1))
	(diseqNat_1 (Z_5 x_58) Z_4)))
(assert (forall ((x_59 Nat_1) (x_60 Nat_1))
	(=> (diseqNat_1 x_59 x_60) (diseqNat_1 (Z_5 x_59) (Z_5 x_60)))))
(assert (forall ((x_37 Nat_1) (x_38 list_0))
	(diseqlist_0 nil_0 (cons_0 x_37 x_38))))
(assert (forall ((x_39 Nat_1) (x_40 list_0))
	(diseqlist_0 (cons_0 x_39 x_40) nil_0)))
(assert (forall ((x_41 Nat_1) (x_42 list_0) (x_43 Nat_1) (x_44 list_0))
	(=> (diseqNat_1 x_41 x_43) (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(assert (forall ((x_41 Nat_1) (x_42 list_0) (x_43 Nat_1) (x_44 list_0))
	(=> (diseqlist_0 x_42 x_44) (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(assert (forall ((x_10 list_0) (x_1 Nat_1) (x_2 list_0) (z_1 Nat_0))
	(=> (take_0 x_10 z_1 x_2) (take_0 (cons_0 x_1 x_10) (S_0 z_1) (cons_0 x_1 x_2)))))
(assert (forall ((z_1 Nat_0))
	(take_0 nil_0 (S_0 z_1) nil_0)))
(assert (forall ((y_0 list_0))
	(take_0 nil_0 Z_0 y_0)))
(assert (forall ((x_14 Nat_0) (y_1 Nat_1) (xs_0 list_0))
	(=> (len_0 x_14 xs_0) (len_0 (S_0 x_14) (cons_0 y_1 xs_0)))))
(assert (len_0 Z_0 nil_0))
(assert (forall ((x_16 Nat_0) (x_6 Nat_0) (z_2 Nat_0))
	(=> (x_4 x_16 z_2 x_6) (x_4 x_16 (S_0 z_2) (S_0 x_6)))))
(assert (forall ((z_2 Nat_0))
	(x_4 (S_0 z_2) (S_0 z_2) Z_0)))
(assert (forall ((y_2 Nat_0))
	(x_4 Z_0 Z_0 y_2)))
(assert (forall ((x_21 list_0) (z_3 Nat_1) (xs_1 list_0) (y_3 list_0))
	(=> (x_7 x_21 xs_1 y_3) (x_7 (cons_0 z_3 x_21) (cons_0 z_3 xs_1) y_3))))
(assert (forall ((x_22 list_0))
	(x_7 x_22 nil_0 x_22)))
(assert (forall ((x_23 list_0) (x_24 list_0) (x_25 list_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 list_0) (x_29 list_0) (n_0 Nat_0) (xs_2 list_0) (ys_0 list_0))
	(=> (and (diseqlist_0 x_24 x_29) (x_7 x_23 xs_2 ys_0) (take_0 x_24 n_0 x_23) (take_0 x_25 n_0 xs_2) (len_0 x_26 xs_2) (x_4 x_27 n_0 x_26) (take_0 x_28 x_27 ys_0) (x_7 x_29 x_25 x_28)) false)))
(check-sat)
(get-model)
