(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bin_0 0)) (((One_0 ) (ZeroAnd_0 (projZeroAnd_0 Bin_0)) (OneAnd_0 (projOneAnd_0 Bin_0)))))
(declare-fun s_0 (Bin_0 Bin_0) Bool)
(declare-fun plus_0 (Bin_0 Bin_0 Bin_0) Bool)
(declare-fun plus_1 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun toNat_0 (Nat_0 Bin_0) Bool)
(assert (forall ((x_60 Nat_0))
	(diseqNat_0 zero_0 (succ_0 x_60))))
(assert (forall ((x_61 Nat_0))
	(diseqNat_0 (succ_0 x_61) zero_0)))
(assert (forall ((x_62 Nat_0) (x_63 Nat_0))
	(=> (diseqNat_0 x_62 x_63) (diseqNat_0 (succ_0 x_62) (succ_0 x_63)))))
(assert (forall ((x_11 Bin_0) (ys_0 Bin_0))
	(=> (s_0 x_11 ys_0) (s_0 (ZeroAnd_0 x_11) (OneAnd_0 ys_0)))))
(assert (forall ((xs_0 Bin_0))
	(s_0 (OneAnd_0 xs_0) (ZeroAnd_0 xs_0))))
(assert (s_0 (ZeroAnd_0 One_0) One_0))
(assert (forall ((x_15 Bin_0) (x_16 Bin_0) (ys_2 Bin_0) (x_2 Bin_0))
	(=> (and (plus_0 x_15 x_2 ys_2) (s_0 x_16 x_15)) (plus_0 (ZeroAnd_0 x_16) (OneAnd_0 x_2) (OneAnd_0 ys_2)))))
(assert (forall ((x_18 Bin_0) (zs_0 Bin_0) (x_2 Bin_0))
	(=> (plus_0 x_18 x_2 zs_0) (plus_0 (OneAnd_0 x_18) (OneAnd_0 x_2) (ZeroAnd_0 zs_0)))))
(assert (forall ((x_19 Bin_0) (x_2 Bin_0))
	(=> (s_0 x_19 (OneAnd_0 x_2)) (plus_0 x_19 (OneAnd_0 x_2) One_0))))
(assert (forall ((x_22 Bin_0) (xs_1 Bin_0) (z_0 Bin_0))
	(=> (plus_0 x_22 z_0 xs_1) (plus_0 (OneAnd_0 x_22) (ZeroAnd_0 z_0) (OneAnd_0 xs_1)))))
(assert (forall ((x_24 Bin_0) (ys_1 Bin_0) (z_0 Bin_0))
	(=> (plus_0 x_24 z_0 ys_1) (plus_0 (ZeroAnd_0 x_24) (ZeroAnd_0 z_0) (ZeroAnd_0 ys_1)))))
(assert (forall ((x_25 Bin_0) (z_0 Bin_0))
	(=> (s_0 x_25 (ZeroAnd_0 z_0)) (plus_0 x_25 (ZeroAnd_0 z_0) One_0))))
(assert (forall ((x_27 Bin_0) (y_0 Bin_0))
	(=> (s_0 x_27 y_0) (plus_0 x_27 One_0 y_0))))
(assert (forall ((x_30 Nat_0) (z_1 Nat_0) (y_1 Nat_0))
	(=> (plus_1 x_30 z_1 y_1) (plus_1 (succ_0 x_30) (succ_0 z_1) y_1))))
(assert (forall ((x_31 Nat_0))
	(plus_1 x_31 zero_0 x_31)))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (ys_3 Bin_0))
	(=> (and (toNat_0 x_33 ys_3) (plus_1 x_34 (succ_0 zero_0) x_33) (toNat_0 x_35 ys_3) (plus_1 x_32 x_34 x_35)) (toNat_0 x_32 (OneAnd_0 ys_3)))))
(assert (forall ((x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (xs_2 Bin_0))
	(=> (and (toNat_0 x_38 xs_2) (toNat_0 x_39 xs_2) (plus_1 x_37 x_38 x_39)) (toNat_0 x_37 (ZeroAnd_0 xs_2)))))
(assert (toNat_0 (succ_0 zero_0) One_0))
(assert (forall ((x_42 Bin_0) (x_43 Nat_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0) (x_5 Bin_0) (y_2 Bin_0))
	(=> (and (diseqNat_0 x_43 x_46) (plus_0 x_42 x_5 y_2) (toNat_0 x_43 x_42) (toNat_0 x_44 x_5) (toNat_0 x_45 y_2) (plus_1 x_46 x_44 x_45)) false)))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0) (x_6 Nat_0) (y_3 Nat_0) (z_2 Nat_0))
	(=> (and (diseqNat_0 x_48 x_50) (plus_1 x_47 y_3 z_2) (plus_1 x_48 x_6 x_47) (plus_1 x_49 x_6 y_3) (plus_1 x_50 x_49 z_2)) false)))
(assert (forall ((x_51 Nat_0) (x_52 Nat_0) (x_7 Nat_0) (y_4 Nat_0))
	(=> (and (diseqNat_0 x_51 x_52) (plus_1 x_51 x_7 y_4) (plus_1 x_52 y_4 x_7)) false)))
(assert (forall ((x_53 Nat_0) (x_8 Nat_0))
	(=> (and (diseqNat_0 x_53 x_8) (plus_1 x_53 x_8 zero_0)) false)))
(assert (forall ((x_54 Nat_0) (x_9 Nat_0))
	(=> (and (diseqNat_0 x_54 x_9) (plus_1 x_54 zero_0 x_9)) false)))
(check-sat)
(get-model)
