(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_3 ) (Z_4 (unS_0 Nat_1)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun len_0 (Nat_0 list_0) Bool)
(declare-fun butlast_0 (list_0 list_0) Bool)
(declare-fun x_4 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_41 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_41))))
(assert (forall ((x_42 Nat_0))
	(diseqNat_0 (S_0 x_42) Z_0)))
(assert (forall ((x_43 Nat_0) (x_44 Nat_0))
	(=> (diseqNat_0 x_43 x_44) (diseqNat_0 (S_0 x_43) (S_0 x_44)))))
(assert (forall ((x_8 Nat_0) (y_0 Nat_1) (xs_0 list_0))
	(=> (len_0 x_8 xs_0) (len_0 (S_0 x_8) (cons_0 y_0 xs_0)))))
(assert (len_0 Z_0 nil_0))
(assert (forall ((x_11 list_0) (x_2 Nat_1) (x_3 list_0) (y_1 Nat_1))
	(=> (butlast_0 x_11 (cons_0 x_2 x_3)) (butlast_0 (cons_0 y_1 x_11) (cons_0 y_1 (cons_0 x_2 x_3))))))
(assert (forall ((y_1 Nat_1))
	(butlast_0 nil_0 (cons_0 y_1 nil_0))))
(assert (butlast_0 nil_0 nil_0))
(assert (forall ((x_14 Nat_0) (x_6 Nat_0) (z_2 Nat_0))
	(=> (x_4 x_14 z_2 x_6) (x_4 x_14 (S_0 z_2) (S_0 x_6)))))
(assert (forall ((z_2 Nat_0))
	(x_4 (S_0 z_2) (S_0 z_2) Z_0)))
(assert (forall ((y_2 Nat_0))
	(x_4 Z_0 Z_0 y_2)))
(assert (forall ((x_18 list_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 Nat_0) (xs_1 list_0))
	(=> (and (diseqNat_0 x_19 x_21) (butlast_0 x_18 xs_1) (len_0 x_19 x_18) (len_0 x_20 xs_1) (x_4 x_21 x_20 (S_0 Z_0))) false)))
(check-sat)
(get-model)
