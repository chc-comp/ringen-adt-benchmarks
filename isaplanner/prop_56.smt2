(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_3 ) (Z_4 (unS_0 Nat_1)))))
(declare-fun diseqNat_1 (Nat_1 Nat_1) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(declare-fun x_3 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_43 Nat_1))
	(diseqNat_1 Z_3 (Z_4 x_43))))
(assert (forall ((x_44 Nat_1))
	(diseqNat_1 (Z_4 x_44) Z_3)))
(assert (forall ((x_45 Nat_1) (x_46 Nat_1))
	(=> (diseqNat_1 x_45 x_46) (diseqNat_1 (Z_4 x_45) (Z_4 x_46)))))
(assert (forall ((x_23 Nat_1) (x_24 list_0))
	(diseqlist_0 nil_0 (cons_0 x_23 x_24))))
(assert (forall ((x_25 Nat_1) (x_26 list_0))
	(diseqlist_0 (cons_0 x_25 x_26) nil_0)))
(assert (forall ((x_27 Nat_1) (x_28 list_0) (x_29 Nat_1) (x_30 list_0))
	(=> (diseqNat_1 x_27 x_29) (diseqlist_0 (cons_0 x_27 x_28) (cons_0 x_29 x_30)))))
(assert (forall ((x_27 Nat_1) (x_28 list_0) (x_29 Nat_1) (x_30 list_0))
	(=> (diseqlist_0 x_28 x_30) (diseqlist_0 (cons_0 x_27 x_28) (cons_0 x_29 x_30)))))
(assert (forall ((x_5 list_0) (x_1 Nat_1) (x_2 list_0) (z_1 Nat_0))
	(=> (drop_0 x_5 z_1 x_2) (drop_0 x_5 (S_0 z_1) (cons_0 x_1 x_2)))))
(assert (forall ((z_1 Nat_0))
	(drop_0 nil_0 (S_0 z_1) nil_0)))
(assert (forall ((x_8 list_0))
	(drop_0 x_8 Z_0 x_8)))
(assert (forall ((x_10 Nat_0) (z_2 Nat_0) (y_1 Nat_0))
	(=> (x_3 x_10 z_2 y_1) (x_3 (S_0 x_10) (S_0 z_2) y_1))))
(assert (forall ((x_11 Nat_0))
	(x_3 x_11 Z_0 x_11)))
(assert (forall ((x_12 list_0) (x_13 list_0) (x_14 Nat_0) (x_15 list_0) (n_0 Nat_0) (m_0 Nat_0) (xs_0 list_0))
	(=> (and (diseqlist_0 x_13 x_15) (drop_0 x_12 m_0 xs_0) (drop_0 x_13 n_0 x_12) (x_3 x_14 n_0 m_0) (drop_0 x_15 x_14 xs_0)) false)))
(check-sat)
(get-model)