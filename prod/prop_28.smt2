(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_1 ) (Z_2 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(declare-fun rev_0 (list_0 list_0) Bool)
(declare-fun qrevflat_0 (list_0 list_1 list_0) Bool)
(declare-fun revflat_0 (list_0 list_1) Bool)
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 Z_1 (Z_2 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (Z_2 x_59) Z_1)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61) (diseqNat_0 (Z_2 x_60) (Z_2 x_61)))))
(assert (forall ((x_32 Nat_0) (x_33 list_0))
	(diseqlist_0 nil_0 (cons_0 x_32 x_33))))
(assert (forall ((x_34 Nat_0) (x_35 list_0))
	(diseqlist_0 (cons_0 x_34 x_35) nil_0)))
(assert (forall ((x_36 Nat_0) (x_37 list_0) (x_38 Nat_0) (x_39 list_0))
	(=> (diseqNat_0 x_36 x_38) (diseqlist_0 (cons_0 x_36 x_37) (cons_0 x_38 x_39)))))
(assert (forall ((x_36 Nat_0) (x_37 list_0) (x_38 Nat_0) (x_39 list_0))
	(=> (diseqlist_0 x_37 x_39) (diseqlist_0 (cons_0 x_36 x_37) (cons_0 x_38 x_39)))))
(assert (forall ((x_7 list_0) (z_0 Nat_0) (xs_0 list_0) (y_0 list_0))
	(=> (x_0 x_7 xs_0 y_0) (x_0 (cons_0 z_0 x_7) (cons_0 z_0 xs_0) y_0))))
(assert (forall ((x_8 list_0))
	(x_0 x_8 nil_0 x_8)))
(assert (forall ((x_10 list_0) (x_11 list_0) (y_1 Nat_0) (xs_1 list_0))
	(=> (and (rev_0 x_10 xs_1) (x_0 x_11 x_10 (cons_0 y_1 nil_0))) (rev_0 x_11 (cons_0 y_1 xs_1)))))
(assert (rev_0 nil_0 nil_0))
(assert (forall ((x_13 list_0) (x_14 list_0) (x_15 list_0) (xs_2 list_0) (xss_0 list_1) (y_2 list_0))
	(=> (and (rev_0 x_14 xs_2) (x_0 x_15 x_14 y_2) (qrevflat_0 x_13 xss_0 x_15)) (qrevflat_0 x_13 (cons_1 xs_2 xss_0) y_2))))
(assert (forall ((x_17 list_0))
	(qrevflat_0 x_17 nil_1 x_17)))
(assert (forall ((x_18 list_0) (x_19 list_0) (x_20 list_0) (xs_3 list_0) (xss_1 list_1))
	(=> (and (revflat_0 x_19 xss_1) (rev_0 x_20 xs_3) (x_0 x_18 x_19 x_20)) (revflat_0 x_18 (cons_1 xs_3 xss_1)))))
(assert (revflat_0 nil_0 nil_1))
(assert (forall ((x_23 list_0) (x_24 list_0) (x_5 list_1))
	(=> (and (diseqlist_0 x_23 x_24) (revflat_0 x_23 x_5) (qrevflat_0 x_24 x_5 nil_0)) false)))
(check-sat)
(get-model)
