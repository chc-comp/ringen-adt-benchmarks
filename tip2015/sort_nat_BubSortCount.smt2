(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool_0) (projpair_1 list_0)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun leq_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(declare-fun bubble_0 (pair_0 list_0) Bool)
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_55 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_55))))
(assert (forall ((x_56 Nat_0))
	(diseqNat_0 (succ_0 x_56) zero_0)))
(assert (forall ((x_57 Nat_0) (x_58 Nat_0))
	(=> (diseqNat_0 x_57 x_58) (diseqNat_0 (succ_0 x_57) (succ_0 x_58)))))
(assert (forall ((x_12 Nat_0) (z_0 Nat_0) (y_0 Nat_0))
	(=> (plus_0 x_12 z_0 y_0) (plus_0 (succ_0 x_12) (succ_0 z_0) y_0))))
(assert (forall ((x_13 Nat_0))
	(plus_0 x_13 zero_0 x_13)))
(assert (forall ((x_14 Bool_0) (x_2 Nat_0) (z_1 Nat_0))
	(=> (leq_0 x_14 z_1 x_2) (leq_0 x_14 (succ_0 z_1) (succ_0 x_2)))))
(assert (forall ((z_1 Nat_0))
	(leq_0 false_0 (succ_0 z_1) zero_0)))
(assert (forall ((y_1 Nat_0))
	(leq_0 true_0 zero_0 y_1)))
(assert (forall ((x_18 Nat_0) (x_19 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (count_0 x_19 x_3 ys_0) (plus_0 x_18 (succ_0 zero_0) x_19)) (count_0 x_18 x_3 (cons_0 x_3 ys_0)))))
(assert (forall ((x_21 Nat_0) (z_2 Nat_0) (ys_0 list_0) (x_3 Nat_0))
	(=> (and (diseqNat_0 x_3 z_2) (count_0 x_21 x_3 ys_0)) (count_0 x_21 x_3 (cons_0 z_2 ys_0)))))
(assert (forall ((x_3 Nat_0))
	(count_0 zero_0 x_3 nil_0)))
(assert (forall ((b_0 Bool_0) (ys_1 list_0) (y_4 Nat_0) (xs_0 list_0) (y_3 Nat_0))
	(=> (and (bubble_0 (pair_1 b_0 ys_1) (cons_0 y_4 xs_0)) (leq_0 true_0 y_3 y_4)) (bubble_0 (pair_1 b_0 (cons_0 y_3 ys_1)) (cons_0 y_3 (cons_0 y_4 xs_0))))))
(assert (forall ((x_27 Bool_0) (b_1 Bool_0) (ys_2 list_0) (y_4 Nat_0) (xs_0 list_0) (y_3 Nat_0))
	(=> (and (diseqBool_0 x_27 true_0) (bubble_0 (pair_1 b_1 ys_2) (cons_0 y_3 xs_0)) (leq_0 x_27 y_3 y_4)) (bubble_0 (pair_1 true_0 (cons_0 y_4 ys_2)) (cons_0 y_3 (cons_0 y_4 xs_0))))))
(assert (forall ((y_3 Nat_0))
	(bubble_0 (pair_1 false_0 (cons_0 y_3 nil_0)) (cons_0 y_3 nil_0))))
(assert (bubble_0 (pair_1 false_0 nil_0) nil_0))
(assert (forall ((x_33 list_0) (ys_3 list_0) (x_5 list_0))
	(=> (and (bubsort_0 x_33 ys_3) (bubble_0 (pair_1 true_0 ys_3) x_5)) (bubsort_0 x_33 x_5))))
(assert (forall ((x_36 list_0) (c_0 Bool_0) (ys_3 list_0))
	(=> (and (diseqBool_0 c_0 true_0) (bubble_0 (pair_1 c_0 ys_3) x_36)) (bubsort_0 x_36 x_36))))
(assert (forall ((x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_6 Nat_0) (y_5 Nat_0) (z_4 Nat_0))
	(=> (and (diseqNat_0 x_38 x_40) (plus_0 x_37 y_5 z_4) (plus_0 x_38 x_6 x_37) (plus_0 x_39 x_6 y_5) (plus_0 x_40 x_39 z_4)) false)))
(assert (forall ((x_41 Nat_0) (x_42 Nat_0) (x_7 Nat_0) (y_6 Nat_0))
	(=> (and (diseqNat_0 x_41 x_42) (plus_0 x_41 x_7 y_6) (plus_0 x_42 y_6 x_7)) false)))
(assert (forall ((x_43 Nat_0) (x_8 Nat_0))
	(=> (and (diseqNat_0 x_43 x_8) (plus_0 x_43 x_8 zero_0)) false)))
(assert (forall ((x_44 Nat_0) (x_9 Nat_0))
	(=> (and (diseqNat_0 x_44 x_9) (plus_0 x_44 zero_0 x_9)) false)))
(assert (forall ((x_45 list_0) (x_46 Nat_0) (x_47 Nat_0) (x_10 Nat_0) (xs_1 list_0))
	(=> (and (diseqNat_0 x_46 x_47) (bubsort_0 x_45 xs_1) (count_0 x_46 x_10 x_45) (count_0 x_47 x_10 xs_1)) false)))
(check-sat)
(get-model)