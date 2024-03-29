(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun butlast_0 (list_0 list_0) Bool)
(declare-fun x_3 (list_0 list_0 list_0) Bool)
(assert (forall ((x_34 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_34))))
(assert (forall ((x_35 Nat_0))
	(diseqNat_0 (Z_3 x_35) Z_2)))
(assert (forall ((x_36 Nat_0) (x_37 Nat_0))
	(=> (diseqNat_0 x_36 x_37) (diseqNat_0 (Z_3 x_36) (Z_3 x_37)))))
(assert (forall ((x_22 Nat_0) (x_23 list_0))
	(diseqlist_0 nil_0 (cons_0 x_22 x_23))))
(assert (forall ((x_24 Nat_0) (x_25 list_0))
	(diseqlist_0 (cons_0 x_24 x_25) nil_0)))
(assert (forall ((x_26 Nat_0) (x_27 list_0) (x_28 Nat_0) (x_29 list_0))
	(=> (diseqNat_0 x_26 x_28) (diseqlist_0 (cons_0 x_26 x_27) (cons_0 x_28 x_29)))))
(assert (forall ((x_26 Nat_0) (x_27 list_0) (x_28 Nat_0) (x_29 list_0))
	(=> (diseqlist_0 x_27 x_29) (diseqlist_0 (cons_0 x_26 x_27) (cons_0 x_28 x_29)))))
(assert (forall ((x_7 list_0) (x_1 Nat_0) (x_2 list_0) (y_0 Nat_0))
	(=> (butlast_0 x_7 (cons_0 x_1 x_2)) (butlast_0 (cons_0 y_0 x_7) (cons_0 y_0 (cons_0 x_1 x_2))))))
(assert (forall ((y_0 Nat_0))
	(butlast_0 nil_0 (cons_0 y_0 nil_0))))
(assert (butlast_0 nil_0 nil_0))
(assert (forall ((x_11 list_0) (z_1 Nat_0) (xs_0 list_0) (y_1 list_0))
	(=> (x_3 x_11 xs_0 y_1) (x_3 (cons_0 z_1 x_11) (cons_0 z_1 xs_0) y_1))))
(assert (forall ((x_12 list_0))
	(x_3 x_12 nil_0 x_12)))
(assert (forall ((x_13 list_0) (x_14 list_0) (xs_1 list_0) (x_5 Nat_0))
	(=> (and (diseqlist_0 x_14 xs_1) (x_3 x_13 xs_1 (cons_0 x_5 nil_0)) (butlast_0 x_14 x_13)) false)))
(check-sat)
(get-model)
