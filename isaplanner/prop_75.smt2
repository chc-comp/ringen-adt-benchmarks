(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun x_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun x_4 (Nat_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_32 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_32))))
(assert (forall ((x_33 Nat_0))
	(diseqNat_0 (S_0 x_33) Z_0)))
(assert (forall ((x_34 Nat_0) (x_35 Nat_0))
	(=> (diseqNat_0 x_34 x_35) (diseqNat_0 (S_0 x_34) (S_0 x_35)))))
(assert (forall ((x_6 Bool_0) (y_1 Nat_0) (x_2 Nat_0))
	(=> (x_0 x_6 x_2 y_1) (x_0 x_6 (S_0 x_2) (S_0 y_1)))))
(assert (forall ((x_2 Nat_0))
	(x_0 false_0 (S_0 x_2) Z_0)))
(assert (forall ((z_1 Nat_0))
	(x_0 false_0 Z_0 (S_0 z_1))))
(assert (x_0 true_0 Z_0 Z_0))
(assert (forall ((x_13 Nat_0) (z_2 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (count_0 x_13 x_3 ys_0) (x_0 true_0 x_3 z_2)) (count_0 (S_0 x_13) x_3 (cons_0 z_2 ys_0)))))
(assert (forall ((x_15 Nat_0) (x_14 Bool_0) (z_2 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (diseqBool_0 x_14 true_0) (count_0 x_15 x_3 ys_0) (x_0 x_14 x_3 z_2)) (count_0 x_15 x_3 (cons_0 z_2 ys_0)))))
(assert (forall ((x_3 Nat_0))
	(count_0 Z_0 x_3 nil_0)))
(assert (forall ((x_19 Nat_0) (z_3 Nat_0) (y_3 Nat_0))
	(=> (x_4 x_19 z_3 y_3) (x_4 (S_0 x_19) (S_0 z_3) y_3))))
(assert (forall ((x_20 Nat_0))
	(x_4 x_20 Z_0 x_20)))
(assert (forall ((x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (n_0 Nat_0) (m_0 Nat_0) (xs_0 list_0))
	(=> (and (diseqNat_0 x_23 x_24) (count_0 x_21 n_0 xs_0) (count_0 x_22 n_0 (cons_0 m_0 nil_0)) (x_4 x_23 x_21 x_22) (count_0 x_24 n_0 (cons_0 m_0 xs_0))) false)))
(check-sat)
(get-model)
