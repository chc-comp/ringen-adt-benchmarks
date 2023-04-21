(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_4 ) (Z_5 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun add_1 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-datatypes ((E_0 0)) (((N_0 (projN_0 Nat_0)) (Add_0 (projAdd_0 E_0) (projAdd_1 E_0)) (Mul_0 (projMul_0 E_0) (projMul_1 E_0)) (Eq_0 (projEq_0 E_0) (projEq_1 E_0)) (V_0 (projV_0 Nat_0)))))
(declare-datatypes ((P_0 0) (list_1 0)) (((Print_0 (projPrint_0 E_0)) (x_0 (proj_0 Nat_0) (proj_1 E_0)) (While_0 (projWhile_0 E_0) (projWhile_1 list_1)) (If_0 (projIf_0 E_0) (projIf_1 list_1) (projIf_2 list_1))) ((nil_1 ) (cons_1 (head_1 P_0) (tail_1 list_1)))))
(declare-fun store_0 (list_0 list_0 Nat_0 Nat_0) Bool)
(declare-fun fetch_0 (Nat_0 list_0 Nat_0) Bool)
(declare-fun eval_0 (Nat_0 list_0 E_0) Bool)
(declare-fun x_4 (list_1 list_1 list_1) Bool)
(declare-fun opti_0 (P_0 P_0) Bool)
(declare-fun run_0 (list_0 list_0 list_1) Bool)
(assert (forall ((x_78 Nat_0))
	(diseqNat_0 Z_4 (Z_5 x_78))))
(assert (forall ((x_79 Nat_0))
	(diseqNat_0 (Z_5 x_79) Z_4)))
(assert (forall ((x_80 Nat_0) (x_81 Nat_0))
	(=> (diseqNat_0 x_80 x_81) (diseqNat_0 (Z_5 x_80) (Z_5 x_81)))))
(assert (forall ((y_5 Nat_0))
	(add_1 y_5 Z_4 y_5)))
(assert (forall ((r_2 Nat_0) (x_68 Nat_0) (y_5 Nat_0))
	(=> (add_1 r_2 x_68 y_5) (add_1 (Z_5 r_2) (Z_5 x_68) y_5))))
(assert (forall ((y_5 Nat_0))
	(minus_0 Z_4 Z_4 y_5)))
(assert (forall ((r_2 Nat_0) (x_68 Nat_0) (y_5 Nat_0))
	(=> (minus_0 r_2 x_68 y_5) (minus_0 (Z_5 r_2) (Z_5 x_68) y_5))))
(assert (forall ((y_5 Nat_0))
	(mult_0 Z_4 Z_4 y_5)))
(assert (forall ((r_2 Nat_0) (x_68 Nat_0) (y_5 Nat_0) (z_6 Nat_0))
	(=> (and (mult_0 r_2 x_68 y_5) (add_1 z_6 r_2 y_5)) (mult_0 z_6 (Z_5 x_68) y_5))))
(assert (forall ((x_88 Nat_0) (x_89 list_0))
	(diseqlist_0 nil_0 (cons_0 x_88 x_89))))
(assert (forall ((x_90 Nat_0) (x_91 list_0))
	(diseqlist_0 (cons_0 x_90 x_91) nil_0)))
(assert (forall ((x_92 Nat_0) (x_93 list_0) (x_94 Nat_0) (x_95 list_0))
	(=> (diseqNat_0 x_92 x_94) (diseqlist_0 (cons_0 x_92 x_93) (cons_0 x_94 x_95)))))
(assert (forall ((x_92 Nat_0) (x_93 list_0) (x_94 Nat_0) (x_95 list_0))
	(=> (diseqlist_0 x_93 x_95) (diseqlist_0 (cons_0 x_92 x_93) (cons_0 x_94 x_95)))))
(assert (forall ((n_1 Nat_0) (st_0 list_0) (z_0 Nat_0))
	(store_0 (cons_0 z_0 st_0) (cons_0 n_1 st_0) Z_4 z_0)))
(assert (forall ((x_69 Nat_0) (x_15 list_0) (n_1 Nat_0) (st_0 list_0) (y_0 Nat_0) (z_0 Nat_0))
	(=> (and (diseqNat_0 y_0 Z_4) (store_0 x_15 st_0 x_69 z_0) (minus_0 x_69 y_0 (Z_5 Z_4))) (store_0 (cons_0 n_1 x_15) (cons_0 n_1 st_0) y_0 z_0))))
(assert (forall ((z_0 Nat_0))
	(store_0 (cons_0 z_0 nil_0) nil_0 Z_4 z_0)))
(assert (forall ((x_70 Nat_0) (x_18 list_0) (y_0 Nat_0) (z_0 Nat_0))
	(=> (and (diseqNat_0 y_0 Z_4) (store_0 x_18 nil_0 x_70 z_0) (minus_0 x_70 y_0 (Z_5 Z_4))) (store_0 (cons_0 Z_4 x_18) nil_0 y_0 z_0))))
(assert (forall ((n_2 Nat_0) (st_1 list_0))
	(fetch_0 n_2 (cons_0 n_2 st_1) Z_4)))
(assert (forall ((x_71 Nat_0) (x_20 Nat_0) (n_2 Nat_0) (st_1 list_0) (y_1 Nat_0))
	(=> (and (diseqNat_0 y_1 Z_4) (fetch_0 x_20 st_1 x_71) (minus_0 x_71 y_1 (Z_5 Z_4))) (fetch_0 x_20 (cons_0 n_2 st_1) y_1))))
(assert (forall ((y_1 Nat_0))
	(fetch_0 Z_4 nil_0 y_1)))
(assert (forall ((x_23 Nat_0) (z_1 Nat_0) (x_3 list_0))
	(=> (fetch_0 x_23 x_3 z_1) (eval_0 x_23 x_3 (V_0 z_1)))))
(assert (forall ((x_25 Nat_0) (a_1 E_0) (b_2 E_0) (x_3 list_0))
	(=> (and (eval_0 x_25 x_3 a_1) (eval_0 x_25 x_3 b_2)) (eval_0 (Z_5 Z_4) x_3 (Eq_0 a_1 b_2)))))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0) (a_1 E_0) (b_2 E_0) (x_3 list_0))
	(=> (and (diseqNat_0 x_28 x_29) (eval_0 x_28 x_3 a_1) (eval_0 x_29 x_3 b_2)) (eval_0 Z_4 x_3 (Eq_0 a_1 b_2)))))
(assert (forall ((x_31 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (c_0 E_0) (b_1 E_0) (x_3 list_0))
	(=> (and (eval_0 x_32 x_3 c_0) (eval_0 x_33 x_3 b_1) (mult_0 x_31 x_32 x_33)) (eval_0 x_31 x_3 (Mul_0 c_0 b_1)))))
(assert (forall ((x_34 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (a_0 E_0) (b_0 E_0) (x_3 list_0))
	(=> (and (eval_0 x_35 x_3 a_0) (eval_0 x_36 x_3 b_0) (add_1 x_34 x_35 x_36)) (eval_0 x_34 x_3 (Add_0 a_0 b_0)))))
(assert (forall ((n_3 Nat_0) (x_3 list_0))
	(eval_0 n_3 x_3 (N_0 n_3))))
(assert (forall ((x_39 list_1) (z_2 P_0) (xs_0 list_1) (y_3 list_1))
	(=> (x_4 x_39 xs_0 y_3) (x_4 (cons_1 z_2 x_39) (cons_1 z_2 xs_0) y_3))))
(assert (forall ((x_40 list_1))
	(x_4 x_40 nil_1 x_40)))
(assert (forall ((c_1 E_0) (q_0 list_1) (r_0 list_1))
	(opti_0 (If_0 c_1 r_0 q_0) (If_0 c_1 q_0 r_0))))
(assert (forall ((x_43 list_1) (e_1 E_0) (p_1 list_1))
	(=> (x_4 x_43 p_1 p_1) (opti_0 (While_0 e_1 x_43) (While_0 e_1 p_1)))))
(assert (forall ((x_7 P_0) (x_10 E_0))
	(opti_0 (Print_0 x_10) (Print_0 x_10))))
(assert (forall ((x_7 P_0) (x_11 Nat_0) (x_12 E_0))
	(opti_0 (x_0 x_11 x_12) (x_0 x_11 x_12))))
(assert (forall ((x_47 list_0) (x_48 list_1) (e_5 E_0) (q_1 list_1) (q_2 list_1) (r_1 list_1) (x_8 list_0))
	(=> (and (x_4 x_48 q_2 r_1) (run_0 x_47 x_8 x_48) (eval_0 Z_4 x_8 e_5)) (run_0 x_47 x_8 (cons_1 (If_0 e_5 q_1 q_2) r_1)))))
(assert (forall ((x_51 list_0) (x_52 list_1) (x_50 Nat_0) (e_5 E_0) (q_1 list_1) (q_2 list_1) (r_1 list_1) (x_8 list_0))
	(=> (and (diseqNat_0 x_50 Z_4) (x_4 x_52 q_1 r_1) (run_0 x_51 x_8 x_52) (eval_0 x_50 x_8 e_5)) (run_0 x_51 x_8 (cons_1 (If_0 e_5 q_1 q_2) r_1)))))
(assert (forall ((x_54 list_0) (x_55 list_1) (e_4 E_0) (p_2 list_1) (r_1 list_1) (x_8 list_0))
	(=> (and (x_4 x_55 p_2 (cons_1 (While_0 e_4 p_2) nil_1)) (run_0 x_54 x_8 (cons_1 (If_0 e_4 x_55 nil_1) r_1))) (run_0 x_54 x_8 (cons_1 (While_0 e_4 p_2) r_1)))))
(assert (forall ((x_57 list_0) (x_58 Nat_0) (x_59 list_0) (x_9 Nat_0) (e_3 E_0) (r_1 list_1) (x_8 list_0))
	(=> (and (eval_0 x_58 x_8 e_3) (store_0 x_59 x_8 x_9 x_58) (run_0 x_57 x_59 r_1)) (run_0 x_57 x_8 (cons_1 (x_0 x_9 e_3) r_1)))))
(assert (forall ((x_62 Nat_0) (x_63 list_0) (e_2 E_0) (r_1 list_1) (x_8 list_0))
	(=> (and (eval_0 x_62 x_8 e_2) (run_0 x_63 x_8 r_1)) (run_0 (cons_0 x_62 x_63) x_8 (cons_1 (Print_0 e_2) r_1)))))
(assert (forall ((x_8 list_0))
	(run_0 nil_0 x_8 nil_1)))
(assert (forall ((x_65 list_0) (x_66 P_0) (x_67 list_0) (p_3 P_0))
	(=> (and (diseqlist_0 x_65 x_67) (run_0 x_65 nil_0 (cons_1 p_3 nil_1)) (opti_0 x_66 p_3) (run_0 x_67 nil_0 (cons_1 x_66 nil_1))) false)))
(check-sat)
(get-model)