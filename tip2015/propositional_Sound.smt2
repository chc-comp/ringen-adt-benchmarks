(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_8 ) (Z_9 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_1 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun not_1 (Bool_0 Bool_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Bool_0)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 list_1) (tail_2 list_2)))))
(declare-datatypes ((Form_0 0)) (((x_0 (proj_0 Form_0) (proj_1 Form_0)) (Not_0 (projNot_0 Form_0)) (Var_0 (projVar_0 Nat_0)))))
(declare-fun or_0 (Bool_0 list_0) Bool)
(declare-fun models_0 (list_1 Nat_0 list_1) Bool)
(declare-fun models_1 (list_0 Nat_0 list_1) Bool)
(declare-fun models_2 (list_0 Nat_0 list_1) Bool)
(declare-fun bar_0 (Bool_0 list_1 Form_0) Bool)
(declare-fun formula_0 (Bool_0 Form_0 list_2) Bool)
(declare-fun x_12 (list_2 list_2 list_2) Bool)
(declare-fun models_3 (list_2 Form_0 list_1) Bool)
(declare-fun models_4 (list_2 Form_0 list_2) Bool)
(declare-fun models_5 (list_2 list_2 Form_0 list_2) Bool)
(assert (forall ((x_102 Nat_0))
	(diseqNat_0 Z_8 (Z_9 x_102))))
(assert (forall ((x_103 Nat_0))
	(diseqNat_0 (Z_9 x_103) Z_8)))
(assert (forall ((x_104 Nat_0) (x_105 Nat_0))
	(=> (diseqNat_0 x_104 x_105) (diseqNat_0 (Z_9 x_104) (Z_9 x_105)))))
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (or_1 false_0 false_0 false_0))
(assert (or_1 true_0 true_0 false_0))
(assert (or_1 true_0 false_0 true_0))
(assert (or_1 true_0 true_0 true_0))
(assert (not_1 true_0 false_0))
(assert (not_1 false_0 true_0))
(assert (forall ((x_23 Bool_0) (x_24 Bool_0) (y_0 Bool_0) (xs_0 list_0))
	(=> (and (or_0 x_24 xs_0) (or_1 x_23 y_0 x_24)) (or_0 x_23 (cons_0 y_0 xs_0)))))
(assert (or_0 false_0 nil_0))
(assert (forall ((x_27 list_1) (x_3 Nat_0) (y_2 Bool_0) (xs_1 list_1) (x_2 Nat_0))
	(=> (and (diseqNat_0 x_2 x_3) (models_0 x_27 x_2 xs_1)) (models_0 (cons_1 (pair_1 x_3 y_2) x_27) x_2 (cons_1 (pair_1 x_3 y_2) xs_1)))))
(assert (forall ((x_28 list_1) (y_2 Bool_0) (xs_1 list_1) (x_2 Nat_0))
	(=> (models_0 x_28 x_2 xs_1) (models_0 x_28 x_2 (cons_1 (pair_1 x_2 y_2) xs_1)))))
(assert (forall ((x_2 Nat_0))
	(models_0 nil_1 x_2 nil_1)))
(assert (forall ((x_31 list_0) (y_4 Nat_0) (x_5 list_1) (x_4 Nat_0))
	(=> (models_1 x_31 x_4 x_5) (models_1 x_31 x_4 (cons_1 (pair_1 y_4 true_0) x_5)))))
(assert (forall ((x_34 list_0) (x_6 Bool_0) (x_5 list_1) (x_4 Nat_0))
	(=> (and (diseqBool_0 x_6 true_0) (models_1 x_34 x_4 x_5)) (models_1 (cons_0 true_0 x_34) x_4 (cons_1 (pair_1 x_4 x_6) x_5)))))
(assert (forall ((x_36 list_0) (y_4 Nat_0) (x_6 Bool_0) (x_5 list_1) (x_4 Nat_0))
	(=> (and (diseqNat_0 x_4 y_4) (diseqBool_0 x_6 true_0) (models_1 x_36 x_4 x_5)) (models_1 (cons_0 false_0 x_36) x_4 (cons_1 (pair_1 y_4 x_6) x_5)))))
(assert (forall ((x_4 Nat_0))
	(models_1 nil_0 x_4 nil_1)))
(assert (forall ((x_39 list_0) (x_8 list_1) (x_7 Nat_0))
	(=> (models_2 x_39 x_7 x_8) (models_2 (cons_0 true_0 x_39) x_7 (cons_1 (pair_1 x_7 true_0) x_8)))))
(assert (forall ((x_41 list_0) (y_6 Nat_0) (x_8 list_1) (x_7 Nat_0))
	(=> (and (diseqNat_0 x_7 y_6) (models_2 x_41 x_7 x_8)) (models_2 (cons_0 false_0 x_41) x_7 (cons_1 (pair_1 y_6 true_0) x_8)))))
(assert (forall ((x_42 list_0) (y_6 Nat_0) (x_9 Bool_0) (x_8 list_1) (x_7 Nat_0))
	(=> (and (diseqBool_0 x_9 true_0) (models_2 x_42 x_7 x_8)) (models_2 x_42 x_7 (cons_1 (pair_1 y_6 x_9) x_8)))))
(assert (forall ((x_7 Nat_0))
	(models_2 nil_0 x_7 nil_1)))
(assert (forall ((x_45 Bool_0) (x_46 list_0) (z_3 Nat_0) (x_10 list_1))
	(=> (and (models_2 x_46 z_3 x_10) (or_0 x_45 x_46)) (bar_0 x_45 x_10 (Var_0 z_3)))))
(assert (forall ((x_48 Bool_0) (x_49 Bool_0) (r_0 Form_0) (x_10 list_1))
	(=> (and (bar_0 x_49 x_10 r_0) (not_1 x_48 x_49)) (bar_0 x_48 x_10 (Not_0 r_0)))))
(assert (forall ((x_50 Bool_0) (x_51 Bool_0) (x_52 Bool_0) (p_0 Form_0) (q_0 Form_0) (x_10 list_1))
	(=> (and (bar_0 x_51 x_10 p_0) (bar_0 x_52 x_10 q_0) (and_0 x_50 x_51 x_52)) (bar_0 x_50 x_10 (x_0 p_0 q_0)))))
(assert (forall ((x_53 Bool_0) (x_54 Bool_0) (x_55 Bool_0) (y_8 list_1) (xs_2 list_2) (p_1 Form_0))
	(=> (and (bar_0 x_54 y_8 p_1) (formula_0 x_55 p_1 xs_2) (and_0 x_53 x_54 x_55)) (formula_0 x_53 p_1 (cons_2 y_8 xs_2)))))
(assert (forall ((p_1 Form_0))
	(formula_0 true_0 p_1 nil_2)))
(assert (forall ((x_58 list_2) (z_4 list_1) (xs_3 list_2) (y_9 list_2))
	(=> (x_12 x_58 xs_3 y_9) (x_12 (cons_2 z_4 x_58) (cons_2 z_4 xs_3) y_9))))
(assert (forall ((x_59 list_2))
	(x_12 x_59 nil_2 x_59)))
(assert (forall ((x_63 list_1) (x_60 list_0) (x_61 Bool_0) (x_19 Nat_0) (y_12 list_1))
	(=> (and (diseqBool_0 x_61 true_0) (models_0 x_63 x_19 y_12) (models_1 x_60 x_19 y_12) (or_0 x_61 x_60)) (models_3 (cons_2 (cons_1 (pair_1 x_19 true_0) x_63) nil_2) (Var_0 x_19) y_12))))
(assert (forall ((x_64 list_0) (x_19 Nat_0) (y_12 list_1))
	(=> (and (models_1 x_64 x_19 y_12) (or_0 true_0 x_64)) (models_3 nil_2 (Var_0 x_19) y_12))))
(assert (forall ((x_70 list_1) (x_67 list_0) (x_68 Bool_0) (x_18 Nat_0) (y_12 list_1))
	(=> (and (diseqBool_0 x_68 true_0) (models_0 x_70 x_18 y_12) (models_2 x_67 x_18 y_12) (or_0 x_68 x_67)) (models_3 (cons_2 (cons_1 (pair_1 x_18 false_0) x_70) nil_2) (Not_0 (Var_0 x_18)) y_12))))
(assert (forall ((x_71 list_0) (x_18 Nat_0) (y_12 list_1))
	(=> (and (models_2 x_71 x_18 y_12) (or_0 true_0 x_71)) (models_3 nil_2 (Not_0 (Var_0 x_18)) y_12))))
(assert (forall ((x_74 list_2) (p_3 Form_0) (y_12 list_1))
	(=> (models_3 x_74 p_3 y_12) (models_3 x_74 (Not_0 (Not_0 p_3)) y_12))))
(assert (forall ((x_76 list_2) (x_77 list_2) (x_78 list_2) (r_1 Form_0) (q_4 Form_0) (y_12 list_1))
	(=> (and (models_3 x_77 (Not_0 r_1) y_12) (models_3 x_78 (x_0 r_1 (Not_0 q_4)) y_12) (x_12 x_76 x_77 x_78)) (models_3 x_76 (Not_0 (x_0 r_1 q_4)) y_12))))
(assert (forall ((x_80 list_2) (x_81 list_2) (p_2 Form_0) (q_3 Form_0) (y_12 list_1))
	(=> (and (models_3 x_81 p_2 y_12) (models_4 x_80 q_3 x_81)) (models_3 x_80 (x_0 p_2 q_3) y_12))))
(assert (forall ((x_83 list_2) (x_84 list_2) (y_13 list_1) (z_6 list_2) (q_5 Form_0))
	(=> (and (models_3 x_84 q_5 y_13) (models_5 x_83 z_6 q_5 x_84)) (models_4 x_83 q_5 (cons_2 y_13 z_6)))))
(assert (forall ((q_5 Form_0))
	(models_4 nil_2 q_5 nil_2)))
(assert (forall ((x_88 list_2) (z_7 list_1) (x_22 list_2) (x_21 list_2) (q_6 Form_0))
	(=> (models_5 x_88 x_21 q_6 x_22) (models_5 (cons_2 z_7 x_88) x_21 q_6 (cons_2 z_7 x_22)))))
(assert (forall ((x_89 list_2) (x_21 list_2) (q_6 Form_0))
	(=> (models_4 x_89 q_6 x_21) (models_5 x_89 x_21 q_6 nil_2))))
(assert (forall ((x_91 list_2) (x_92 Bool_0) (p_4 Form_0))
	(=> (and (diseqBool_0 x_92 true_0) (models_3 x_91 p_4 nil_1) (formula_0 x_92 p_4 x_91)) false)))
(check-sat)
(get-model)
