(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun zip_0 (list_1 list_0 list_0) Bool)
(declare-fun zipConcat_0 (list_1 Nat_0 list_0 list_0) Bool)
(assert (forall ((x_57 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_57))))
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 (Z_3 x_58) Z_2)))
(assert (forall ((x_59 Nat_0) (x_60 Nat_0))
	(=> (diseqNat_0 x_59 x_60) (diseqNat_0 (Z_3 x_59) (Z_3 x_60)))))
(assert (forall ((x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0))
	(=> (diseqNat_0 x_21 x_23) (diseqpair_0 (pair_1 x_21 x_22) (pair_1 x_23 x_24)))))
(assert (forall ((x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0))
	(=> (diseqNat_0 x_22 x_24) (diseqpair_0 (pair_1 x_21 x_22) (pair_1 x_23 x_24)))))
(assert (forall ((x_45 pair_0) (x_46 list_1))
	(diseqlist_1 nil_1 (cons_1 x_45 x_46))))
(assert (forall ((x_47 pair_0) (x_48 list_1))
	(diseqlist_1 (cons_1 x_47 x_48) nil_1)))
(assert (forall ((x_49 pair_0) (x_50 list_1) (x_51 pair_0) (x_52 list_1))
	(=> (diseqpair_0 x_49 x_51) (diseqlist_1 (cons_1 x_49 x_50) (cons_1 x_51 x_52)))))
(assert (forall ((x_49 pair_0) (x_50 list_1) (x_51 pair_0) (x_52 list_1))
	(=> (diseqlist_1 x_50 x_52) (diseqlist_1 (cons_1 x_49 x_50) (cons_1 x_51 x_52)))))
(assert (forall ((x_7 list_1) (x_2 Nat_0) (x_3 list_0) (z_0 Nat_0) (x_1 list_0))
	(=> (zip_0 x_7 x_1 x_3) (zip_0 (cons_1 (pair_1 z_0 x_2) x_7) (cons_0 z_0 x_1) (cons_0 x_2 x_3)))))
(assert (forall ((z_0 Nat_0) (x_1 list_0))
	(zip_0 nil_1 (cons_0 z_0 x_1) nil_0)))
(assert (forall ((y_0 list_0))
	(zip_0 nil_1 nil_0 y_0)))
(assert (forall ((x_11 list_1) (y_2 Nat_0) (ys_0 list_0) (x_4 Nat_0) (y_1 list_0))
	(=> (zip_0 x_11 y_1 ys_0) (zipConcat_0 (cons_1 (pair_1 x_4 y_2) x_11) x_4 y_1 (cons_0 y_2 ys_0)))))
(assert (forall ((x_4 Nat_0) (y_1 list_0))
	(zipConcat_0 nil_1 x_4 y_1 nil_0)))
(assert (forall ((x_13 list_1) (x_14 list_1) (x_5 Nat_0) (xs_0 list_0) (ys_1 list_0))
	(=> (and (diseqlist_1 x_13 x_14) (zip_0 x_13 (cons_0 x_5 xs_0) ys_1) (zipConcat_0 x_14 x_5 xs_0 ys_1)) false)))
(check-sat)
(get-model)