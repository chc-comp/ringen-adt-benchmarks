(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_1 ) (Z_2 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(declare-fun rev_0 (list_0 list_0) Bool)
(assert (forall ((x_33 Nat_0))
	(diseqNat_0 Z_1 (Z_2 x_33))))
(assert (forall ((x_34 Nat_0))
	(diseqNat_0 (Z_2 x_34) Z_1)))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0))
	(=> (diseqNat_0 x_35 x_36) (diseqNat_0 (Z_2 x_35) (Z_2 x_36)))))
(assert (forall ((x_21 Nat_0) (x_22 list_0))
	(diseqlist_0 nil_0 (cons_0 x_21 x_22))))
(assert (forall ((x_23 Nat_0) (x_24 list_0))
	(diseqlist_0 (cons_0 x_23 x_24) nil_0)))
(assert (forall ((x_25 Nat_0) (x_26 list_0) (x_27 Nat_0) (x_28 list_0))
	(=> (diseqNat_0 x_25 x_27) (diseqlist_0 (cons_0 x_25 x_26) (cons_0 x_27 x_28)))))
(assert (forall ((x_25 Nat_0) (x_26 list_0) (x_27 Nat_0) (x_28 list_0))
	(=> (diseqlist_0 x_26 x_28) (diseqlist_0 (cons_0 x_25 x_26) (cons_0 x_27 x_28)))))
(assert (forall ((x_5 list_0) (z_0 Nat_0) (xs_0 list_0) (y_0 list_0))
	(=> (x_0 x_5 xs_0 y_0) (x_0 (cons_0 z_0 x_5) (cons_0 z_0 xs_0) y_0))))
(assert (forall ((x_6 list_0))
	(x_0 x_6 nil_0 x_6)))
(assert (forall ((x_7 list_0) (x_8 list_0) (y_1 Nat_0) (xs_1 list_0))
	(=> (and (rev_0 x_8 xs_1) (x_0 x_7 x_8 (cons_0 y_1 nil_0))) (rev_0 x_7 (cons_0 y_1 xs_1)))))
(assert (rev_0 nil_0 nil_0))
(assert (forall ((x_11 list_0) (x_12 list_0) (x_13 list_0) (x_3 list_0))
	(=> (and (diseqlist_0 x_13 x_3) (rev_0 x_11 x_3) (x_0 x_12 x_11 nil_0) (rev_0 x_13 x_12)) false)))
(check-sat)
(get-model)
