(set-logic HORN)
(declare-datatypes ((Bin_0 0)) (((One_0 ) (ZeroAnd_0 (projZeroAnd_0 Bin_0)) (OneAnd_0 (projOneAnd_0 Bin_0)))))
(declare-fun diseqBin_0 (Bin_0 Bin_0) Bool)
(declare-fun s_0 (Bin_0 Bin_0) Bool)
(declare-fun plus_0 (Bin_0 Bin_0 Bin_0) Bool)
(assert (forall ((x_33 Bin_0))
	(diseqBin_0 One_0 (ZeroAnd_0 x_33))))
(assert (forall ((x_34 Bin_0))
	(diseqBin_0 One_0 (OneAnd_0 x_34))))
(assert (forall ((x_35 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_35) One_0)))
(assert (forall ((x_36 Bin_0))
	(diseqBin_0 (OneAnd_0 x_36) One_0)))
(assert (forall ((x_37 Bin_0) (x_38 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_37) (OneAnd_0 x_38))))
(assert (forall ((x_39 Bin_0) (x_40 Bin_0))
	(diseqBin_0 (OneAnd_0 x_39) (ZeroAnd_0 x_40))))
(assert (forall ((x_41 Bin_0) (x_42 Bin_0))
	(=> (diseqBin_0 x_41 x_42) (diseqBin_0 (ZeroAnd_0 x_41) (ZeroAnd_0 x_42)))))
(assert (forall ((x_43 Bin_0) (x_44 Bin_0))
	(=> (diseqBin_0 x_43 x_44) (diseqBin_0 (OneAnd_0 x_43) (OneAnd_0 x_44)))))
(assert (forall ((x_5 Bin_0) (ys_0 Bin_0))
	(=> (s_0 x_5 ys_0) (s_0 (ZeroAnd_0 x_5) (OneAnd_0 ys_0)))))
(assert (forall ((xs_0 Bin_0))
	(s_0 (OneAnd_0 xs_0) (ZeroAnd_0 xs_0))))
(assert (s_0 (ZeroAnd_0 One_0) One_0))
(assert (forall ((x_9 Bin_0) (x_10 Bin_0) (ys_2 Bin_0) (x_2 Bin_0))
	(=> (and (plus_0 x_9 x_2 ys_2) (s_0 x_10 x_9)) (plus_0 (ZeroAnd_0 x_10) (OneAnd_0 x_2) (OneAnd_0 ys_2)))))
(assert (forall ((x_12 Bin_0) (zs_0 Bin_0) (x_2 Bin_0))
	(=> (plus_0 x_12 x_2 zs_0) (plus_0 (OneAnd_0 x_12) (OneAnd_0 x_2) (ZeroAnd_0 zs_0)))))
(assert (forall ((x_13 Bin_0) (x_2 Bin_0))
	(=> (s_0 x_13 (OneAnd_0 x_2)) (plus_0 x_13 (OneAnd_0 x_2) One_0))))
(assert (forall ((x_16 Bin_0) (xs_1 Bin_0) (z_0 Bin_0))
	(=> (plus_0 x_16 z_0 xs_1) (plus_0 (OneAnd_0 x_16) (ZeroAnd_0 z_0) (OneAnd_0 xs_1)))))
(assert (forall ((x_18 Bin_0) (ys_1 Bin_0) (z_0 Bin_0))
	(=> (plus_0 x_18 z_0 ys_1) (plus_0 (ZeroAnd_0 x_18) (ZeroAnd_0 z_0) (ZeroAnd_0 ys_1)))))
(assert (forall ((x_19 Bin_0) (z_0 Bin_0))
	(=> (s_0 x_19 (ZeroAnd_0 z_0)) (plus_0 x_19 (ZeroAnd_0 z_0) One_0))))
(assert (forall ((x_21 Bin_0) (y_0 Bin_0))
	(=> (s_0 x_21 y_0) (plus_0 x_21 One_0 y_0))))
(assert (forall ((x_23 Bin_0) (x_24 Bin_0) (x_3 Bin_0) (y_1 Bin_0))
	(=> (and (diseqBin_0 x_23 x_24) (plus_0 x_23 x_3 y_1) (plus_0 x_24 y_1 x_3)) false)))
(check-sat)
(get-model)
