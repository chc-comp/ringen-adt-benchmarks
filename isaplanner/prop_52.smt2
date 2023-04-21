(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun x_4 (list_0 list_0 list_0) Bool)
(declare-fun rev_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_36 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_36))))
(assert (forall ((x_37 Nat_0))
	(diseqNat_0 (S_0 x_37) Z_0)))
(assert (forall ((x_38 Nat_0) (x_39 Nat_0))
	(=> (diseqNat_0 x_38 x_39) (diseqNat_0 (S_0 x_38) (S_0 x_39)))))
(assert (forall ((x_7 Bool_0) (y_1 Nat_0) (x_2 Nat_0))
	(=> (x_0 x_7 x_2 y_1) (x_0 x_7 (S_0 x_2) (S_0 y_1)))))
(assert (forall ((x_2 Nat_0))
	(x_0 false_0 (S_0 x_2) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 Z_0 (S_0 z_1))))
(assert (x_0 true_0 Z_0 Z_0))
(assert (forall ((x_14 Nat_0) (z_2 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (count_0 x_14 x_3 ys_0) (x_0 true_0 x_3 z_2)) (count_0 (S_0 x_14) x_3 (cons_0 z_2 ys_0)))))
(assert (forall ((x_16 Nat_0) (x_15 Bool_0) (z_2 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_15 true_0) (count_0 x_16 x_3 ys_0) (x_0 x_15 x_3 z_2)) (count_0 x_16 x_3 (cons_0 z_2 ys_0)))))
(assert (forall ((x_3 Nat_0))
	(count_0 Z_0 x_3 nil_0)))
(assert (forall ((x_20 list_0) (z_3 Nat_0) (xs_0 list_0) (y_3 list_0))
	(=> (x_4 x_20 xs_0 y_3) (x_4 (cons_0 z_3 x_20) (cons_0 z_3 xs_0) y_3))))
(assert (forall ((x_21 list_0))
	(x_4 x_21 nil_0 x_21)))
(assert (forall ((x_22 list_0) (x_23 list_0) (y_4 Nat_0) (xs_1 list_0))
	(=> (and (rev_0 x_23 xs_1) (x_4 x_22 x_23 (cons_0 y_4 nil_0))) (rev_0 x_22 (cons_0 y_4 xs_1)))))
(assert (rev_0 nil_0 nil_0))
(assert (forall ((x_26 Nat_0) (x_27 list_0) (x_28 Nat_0) (n_0 Nat_0) (xs_2 list_0))
	(=> (and (diseqNat_0 x_26 x_28) (count_0 x_26 n_0 xs_2) (rev_0 x_27 xs_2) (count_0 x_28 n_0 x_27)) false)))
(check-sat)
(get-model)
