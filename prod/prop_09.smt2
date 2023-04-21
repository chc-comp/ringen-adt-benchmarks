(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_3 ) (Z_4 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_41 Nat_1))
	(diseqNat_1 Z_3 (Z_4 x_41))))
(assert (forall ((x_42 Nat_1))
	(diseqNat_1 (Z_4 x_42) Z_3)))
(assert (forall ((x_43 Nat_1) (x_44 Nat_1))
	(=> (diseqNat_1 x_43 x_44) (diseqNat_1 (Z_4 x_43) (Z_4 x_44)))))
(assert (forall ((x_21 Nat_1) (x_22 list_0))
	(diseqlist_0 nil_0 (cons_0 x_21 x_22))))
(assert (forall ((x_23 Nat_1) (x_24 list_0))
	(diseqlist_0 (cons_0 x_23 x_24) nil_0)))
(assert (forall ((x_25 Nat_1) (x_26 list_0) (x_27 Nat_1) (x_28 list_0))
	(=> (diseqNat_1 x_25 x_27) (diseqlist_0 (cons_0 x_25 x_26) (cons_0 x_27 x_28)))))
(assert (forall ((x_25 Nat_1) (x_26 list_0) (x_27 Nat_1) (x_28 list_0))
	(=> (diseqlist_0 x_26 x_28) (diseqlist_0 (cons_0 x_25 x_26) (cons_0 x_27 x_28)))))
(assert (forall ((x_4 list_0) (x_1 Nat_1) (x_2 list_0) (z_1 Nat_0))
	(=> (drop_0 x_4 z_1 x_2) (drop_0 x_4 (S_0 z_1) (cons_0 x_1 x_2)))))
(assert (forall ((z_1 Nat_0))
	(drop_0 nil_0 (S_0 z_1) nil_0)))
(assert (forall ((x_7 list_0))
	(drop_0 x_7 Z_0 x_7)))
(assert (forall ((x_8 list_0) (x_9 list_0) (x_10 list_0) (x_11 list_0) (x_12 list_0) (x_13 list_0) (x_3 Nat_0) (y_1 Nat_0) (z_2 list_0) (w_0 Nat_0))
	(=> (and (diseqlist_0 x_10 x_13) (drop_0 x_8 y_1 z_2) (drop_0 x_9 x_3 x_8) (drop_0 x_10 w_0 x_9) (drop_0 x_11 w_0 z_2) (drop_0 x_12 x_3 x_11) (drop_0 x_13 y_1 x_12)) false)))
(check-sat)
(get-model)