(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Bool_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun go_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun modstructural_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (diseqBool_0 false_0 true_0))
(assert (diseqBool_0 true_0 false_0))
(assert (forall ((x_43 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_43))))
(assert (forall ((x_44 Nat_0))
	(diseqNat_0 (succ_0 x_44) zero_0)))
(assert (forall ((x_45 Nat_0) (x_46 Nat_0))
	(=> (diseqNat_0 x_45 x_46) (diseqNat_0 (succ_0 x_45) (succ_0 x_46)))))
(assert (forall ((x_10 Nat_0) (y_1 Nat_0) (z_0 Nat_0))
	(=> (minus_0 x_10 z_0 y_1) (minus_0 x_10 (succ_0 z_0) (succ_0 y_1)))))
(assert (forall ((z_0 Nat_0))
	(minus_0 zero_0 (succ_0 z_0) zero_0)))
(assert (forall ((y_0 Nat_0))
	(minus_0 zero_0 zero_0 y_0)))
(assert (forall ((x_13 Bool_0) (n_0 Nat_0) (z_1 Nat_0))
	(=> (lt_0 x_13 n_0 z_1) (lt_0 x_13 (succ_0 n_0) (succ_0 z_1)))))
(assert (forall ((z_1 Nat_0))
	(lt_0 true_0 zero_0 (succ_0 z_1))))
(assert (forall ((x_1 Nat_0))
	(lt_0 false_0 x_1 zero_0)))
(assert (forall ((x_18 Nat_0) (z_2 Nat_0))
	(=> (lt_0 true_0 x_18 (succ_0 z_2)) (mod_0 x_18 x_18 (succ_0 z_2)))))
(assert (forall ((x_20 Nat_0) (x_21 Nat_0) (x_19 Bool_0) (z_2 Nat_0) (x_2 Nat_0))
	(=> (and (diseqBool_0 x_19 true_0) (minus_0 x_21 x_2 (succ_0 z_2)) (mod_0 x_20 x_21 (succ_0 z_2)) (lt_0 x_19 x_2 (succ_0 z_2))) (mod_0 x_20 x_2 (succ_0 z_2)))))
(assert (forall ((x_2 Nat_0))
	(mod_0 zero_0 x_2 zero_0)))
(assert (forall ((x_24 Nat_0) (x_7 Nat_0) (x_6 Nat_0) (x_4 Nat_0))
	(=> (go_0 x_24 x_6 x_7 (succ_0 x_4)) (go_0 x_24 (succ_0 x_6) (succ_0 x_7) (succ_0 x_4)))))
(assert (forall ((x_26 Nat_0) (x_6 Nat_0) (x_4 Nat_0))
	(=> (go_0 x_26 x_6 x_4 (succ_0 x_4)) (go_0 x_26 (succ_0 x_6) zero_0 (succ_0 x_4)))))
(assert (forall ((x_28 Nat_0) (x_5 Nat_0) (x_4 Nat_0))
	(=> (minus_0 x_28 (succ_0 x_4) (succ_0 x_5)) (go_0 x_28 zero_0 (succ_0 x_5) (succ_0 x_4)))))
(assert (forall ((x_4 Nat_0))
	(go_0 zero_0 zero_0 zero_0 (succ_0 x_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0))
	(go_0 zero_0 x_3 y_4 zero_0)))
(assert (forall ((x_32 Nat_0) (x_8 Nat_0) (y_5 Nat_0))
	(=> (go_0 x_32 x_8 zero_0 y_5) (modstructural_0 x_32 x_8 y_5))))
(assert (forall ((x_34 Nat_0) (x_35 Nat_0) (m_0 Nat_0) (n_1 Nat_0))
	(=> (and (diseqNat_0 x_34 x_35) (mod_0 x_34 m_0 n_1) (modstructural_0 x_35 m_0 n_1)) false)))
(check-sat)
(get-model)
