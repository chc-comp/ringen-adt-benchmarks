(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((T_0 0)) (((A_0 ) (B_0 ) (C_0 ))))
(declare-fun diseqT_0 (T_0 T_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 T_0) (tail_0 list_0)))))
(declare-datatypes ((R_0 0)) (((Nil_1 ) (Eps_0 ) (Atom_0 (projAtom_0 T_0)) (x_0 (proj_0 R_0) (proj_1 R_0)) (x_1 (proj_2 R_0) (proj_3 R_0)) (Star_0 (projStar_0 R_0)))))
(declare-fun eps_1 (Bool_0 R_0) Bool)
(declare-fun step_0 (R_0 R_0 T_0) Bool)
(declare-fun rec_0 (Bool_0 R_0 list_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (and_0 false_0 false_0 false_0))
(assert (and_0 false_0 true_0 false_0))
(assert (and_0 false_0 false_0 true_0))
(assert (and_0 true_0 true_0 true_0))
(assert (or_0 false_0 false_0 false_0))
(assert (or_0 true_0 true_0 false_0))
(assert (or_0 true_0 false_0 true_0))
(assert (or_0 true_0 true_0 true_0))
(assert (diseqT_0 A_0 B_0))
(assert (diseqT_0 A_0 C_0))
(assert (diseqT_0 B_0 A_0))
(assert (diseqT_0 C_0 A_0))
(assert (diseqT_0 B_0 C_0))
(assert (diseqT_0 C_0 B_0))
(assert (forall ((y_0 R_0))
	(eps_1 true_0 (Star_0 y_0))))
(assert (forall ((x_41 Bool_0) (x_10 Bool_0) (x_11 Bool_0) (r_1 R_0) (q_1 R_0))
	(=> (and (eps_1 x_10 r_1) (eps_1 x_11 q_1) (and_0 x_41 x_10 x_11)) (eps_1 x_41 (x_1 r_1 q_1)))))
(assert (forall ((x_12 Bool_0) (x_13 Bool_0) (x_14 Bool_0) (p_0 R_0) (q_0 R_0))
	(=> (and (eps_1 x_13 p_0) (eps_1 x_14 q_0) (or_0 x_12 x_13 x_14)) (eps_1 x_12 (x_0 p_0 q_0)))))
(assert (eps_1 true_0 Eps_0))
(assert (forall ((x_3 R_0) (x_7 T_0))
	(eps_1 false_0 (Atom_0 x_7))))
(assert (forall ((x_3 R_0))
	(eps_1 false_0 Nil_1)))
(assert (forall ((x_19 R_0) (p_2 R_0) (y_1 T_0))
	(=> (step_0 x_19 p_2 y_1) (step_0 (x_1 x_19 (Star_0 p_2)) (Star_0 p_2) y_1))))
(assert (forall ((x_22 R_0) (x_23 R_0) (r_2 R_0) (q_3 R_0) (y_1 T_0))
	(=> (and (step_0 x_22 r_2 y_1) (step_0 x_23 q_3 y_1) (eps_1 true_0 r_2)) (step_0 (x_0 (x_1 x_22 q_3) x_23) (x_1 r_2 q_3) y_1))))
(assert (forall ((x_26 R_0) (x_24 Bool_0) (r_2 R_0) (q_3 R_0) (y_1 T_0))
	(=> (and (diseqBool_0 x_24 true_0) (step_0 x_26 r_2 y_1) (eps_1 x_24 r_2)) (step_0 (x_0 (x_1 x_26 q_3) Nil_1) (x_1 r_2 q_3) y_1))))
(assert (forall ((x_28 R_0) (x_29 R_0) (p_1 R_0) (q_2 R_0) (y_1 T_0))
	(=> (and (step_0 x_28 p_1 y_1) (step_0 x_29 q_2 y_1)) (step_0 (x_0 x_28 x_29) (x_0 p_1 q_2) y_1))))
(assert (forall ((b_1 T_0))
	(step_0 Eps_0 (Atom_0 b_1) b_1)))
(assert (forall ((b_1 T_0) (y_1 T_0))
	(=> (diseqT_0 b_1 y_1) (step_0 Nil_1 (Atom_0 b_1) y_1))))
(assert (forall ((x_5 R_0) (y_1 T_0))
	(step_0 Nil_1 Eps_0 y_1)))
(assert (forall ((x_5 R_0) (y_1 T_0))
	(step_0 Nil_1 Nil_1 y_1)))
(assert (forall ((x_34 Bool_0) (x_35 R_0) (z_0 T_0) (xs_0 list_0) (x_6 R_0))
	(=> (and (step_0 x_35 x_6 z_0) (rec_0 x_34 x_35 xs_0)) (rec_0 x_34 x_6 (cons_0 z_0 xs_0)))))
(assert (forall ((x_37 Bool_0) (x_6 R_0))
	(=> (eps_1 x_37 x_6) (rec_0 x_37 x_6 nil_0))))
(assert (forall ((x_39 Bool_0) (x_40 Bool_0) (p_3 R_0) (q_4 R_0) (r_3 R_0) (s_0 list_0))
	(=> (and (diseqBool_0 x_39 x_40) (rec_0 x_39 (x_0 p_3 (x_1 q_4 r_3)) s_0) (rec_0 x_40 (x_1 (x_0 p_3 q_4) r_3) s_0)) false)))
(check-sat)
(get-model)
