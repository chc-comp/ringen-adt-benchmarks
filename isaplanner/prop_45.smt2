(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_1 ) (Z_2 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun zip_0 (list_1 list_0 list_0) Bool)
(assert (forall ((x_53 Nat_0))
	(diseqNat_0 Z_1 (Z_2 x_53))))
(assert (forall ((x_54 Nat_0))
	(diseqNat_0 (Z_2 x_54) Z_1)))
(assert (forall ((x_55 Nat_0) (x_56 Nat_0))
	(=> (diseqNat_0 x_55 x_56) (diseqNat_0 (Z_2 x_55) (Z_2 x_56)))))
(assert (forall ((x_17 Nat_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0))
	(=> (diseqNat_0 x_17 x_19) (diseqpair_0 (pair_1 x_17 x_18) (pair_1 x_19 x_20)))))
(assert (forall ((x_17 Nat_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0))
	(=> (diseqNat_0 x_18 x_20) (diseqpair_0 (pair_1 x_17 x_18) (pair_1 x_19 x_20)))))
(assert (forall ((x_41 pair_0) (x_42 list_1))
	(diseqlist_1 nil_1 (cons_1 x_41 x_42))))
(assert (forall ((x_43 pair_0) (x_44 list_1))
	(diseqlist_1 (cons_1 x_43 x_44) nil_1)))
(assert (forall ((x_45 pair_0) (x_46 list_1) (x_47 pair_0) (x_48 list_1))
	(=> (diseqpair_0 x_45 x_47) (diseqlist_1 (cons_1 x_45 x_46) (cons_1 x_47 x_48)))))
(assert (forall ((x_45 pair_0) (x_46 list_1) (x_47 pair_0) (x_48 list_1))
	(=> (diseqlist_1 x_46 x_48) (diseqlist_1 (cons_1 x_45 x_46) (cons_1 x_47 x_48)))))
(assert (forall ((x_6 list_1) (x_2 Nat_0) (x_3 list_0) (z_0 Nat_0) (x_1 list_0))
	(=> (zip_0 x_6 x_1 x_3) (zip_0 (cons_1 (pair_1 z_0 x_2) x_6) (cons_0 z_0 x_1) (cons_0 x_2 x_3)))))
(assert (forall ((z_0 Nat_0) (x_1 list_0))
	(zip_0 nil_1 (cons_0 z_0 x_1) nil_0)))
(assert (forall ((y_0 list_0))
	(zip_0 nil_1 nil_0 y_0)))
(assert (forall ((x_9 list_1) (x_10 list_1) (x_4 Nat_0) (y_1 Nat_0) (xs_0 list_0) (ys_0 list_0))
	(=> (and (diseqlist_1 x_9 (cons_1 (pair_1 x_4 y_1) x_10)) (zip_0 x_9 (cons_0 x_4 xs_0) (cons_0 y_1 ys_0)) (zip_0 x_10 xs_0 ys_0)) false)))
(check-sat)
(get-model)
