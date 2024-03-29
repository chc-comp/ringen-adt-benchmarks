(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(assert (forall ((x_17 Nat_0))
	(diseqNat_0 (S_0 x_17) Z_0)))
(assert (forall ((x_18 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_18))))
(assert (forall ((x_19 Nat_0) (x_20 Nat_0))
	(=> (diseqNat_0 x_19 x_20) (diseqNat_0 (S_0 x_19) (S_0 x_20)))))
(assert (forall ((x_4 Nat_0) (y_0 Nat_0) (xs_0 list_0))
	(=> (length_0 x_4 xs_0) (length_0 (S_0 x_4) (cons_0 y_0 xs_0)))))
(assert (length_0 Z_0 nil_0))
(assert (forall ((x_7 list_0) (z_1 Nat_0) (xs_1 list_0) (y_1 list_0))
	(=> (x_1 x_7 xs_1 y_1) (x_1 (cons_0 z_1 x_7) (cons_0 z_1 xs_1) y_1))))
(assert (forall ((x_8 list_0))
	(x_1 x_8 nil_0 x_8)))
(assert (forall ((x_9 list_0) (x_10 Nat_0) (x_11 Nat_0) (xs_2 list_0) (ys_0 list_0))
	(=> (and (diseqNat_0 x_10 x_11) (x_1 x_9 xs_2 ys_0) (length_0 x_10 x_9) (length_0 x_11 xs_2)) false)))
(check-sat)
(get-model)
