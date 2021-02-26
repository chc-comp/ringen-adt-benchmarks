(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_44 Nat_1) (x_43 Nat_1))
	(=> (= x_44 (S_1 x_43))
	    (unS_1 x_43 x_44))))
(assert (isZ_0 Z_1))
(assert (forall ((x_45 Nat_1))
	(isS_0 (S_1 x_45))))
(assert (forall ((x_46 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_46))))
(assert (forall ((x_47 Nat_1))
	(diseqNat_0 (S_1 x_47) Z_1)))
(assert (forall ((x_48 Nat_1) (x_49 Nat_1))
	(=> (diseqNat_0 x_48 x_49)
	    (diseqNat_0 (S_1 x_48) (S_1 x_49)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_6 Nat_1))
	(add_0 y_6 Z_1 y_6)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_41 y_6)
	    (add_0 (S_1 r_0) (S_1 x_41) y_6))))
(assert (forall ((y_6 Nat_1))
	(minus_0 Z_1 Z_1 y_6)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_41 y_6)
	    (minus_0 (S_1 r_0) (S_1 x_41) y_6))))
(assert (forall ((y_6 Nat_1))
	(le_0 Z_1 y_6)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (le_0 x_41 y_6)
	    (le_0 (S_1 x_41) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(ge_0 y_6 Z_1)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (ge_0 x_41 y_6)
	    (ge_0 (S_1 x_41) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(lt_0 Z_1 (S_1 y_6))))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_41 y_6)
	    (lt_0 (S_1 x_41) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(gt_0 (S_1 y_6) Z_1)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (gt_0 x_41 y_6)
	    (gt_0 (S_1 x_41) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(mult_0 Z_1 Z_1 y_6)))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_41 y_6)
			(add_0 z_4 r_0 y_6))
		(mult_0 z_4 (S_1 x_41) y_6))))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_41 y_6)
	    (div_0 Z_1 x_41 y_6))))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_41 y_6)
			(minus_0 z_4 x_41 y_6)
			(div_0 r_0 z_4 y_6))
		(div_0 (S_1 r_0) x_41 y_6))))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_41 y_6)
	    (mod_0 x_41 x_41 y_6))))
(assert (forall ((x_41 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_41 y_6)
			(minus_0 z_4 x_41 y_6)
			(mod_0 r_0 z_4 y_6))
		(mod_0 r_0 x_41 y_6))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_1 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_53 list_0) (x_51 Nat_1) (x_52 list_0))
	(=> (= x_53 (cons_0 x_51 x_52))
	    (head_1 x_51 x_53))))
(assert (forall ((x_53 list_0) (x_51 Nat_1) (x_52 list_0))
	(=> (= x_53 (cons_0 x_51 x_52))
	    (tail_1 x_52 x_53))))
(assert (isnil_0 nil_0))
(assert (forall ((x_54 Nat_1) (x_55 list_0))
	(iscons_0 (cons_0 x_54 x_55))))
(assert (forall ((x_56 Nat_1) (x_57 list_0))
	(diseqlist_0 nil_0 (cons_0 x_56 x_57))))
(assert (forall ((x_58 Nat_1) (x_59 list_0))
	(diseqlist_0 (cons_0 x_58 x_59) nil_0)))
(assert (forall ((x_60 Nat_1) (x_61 list_0) (x_62 Nat_1) (x_63 list_0))
	(=> (diseqNat_0 x_60 x_62)
	    (diseqlist_0 (cons_0 x_60 x_61) (cons_0 x_62 x_63)))))
(assert (forall ((x_60 Nat_1) (x_61 list_0) (x_62 Nat_1) (x_63 list_0))
	(=> (diseqlist_0 x_61 x_63)
	    (diseqlist_0 (cons_0 x_60 x_61) (cons_0 x_62 x_63)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_66 Nat_0) (x_65 Nat_0))
	(=> (= x_66 (S_0 x_65))
	    (projS_1 x_65 x_66))))
(assert (isZ_1 Z_0))
(assert (forall ((x_67 Nat_0))
	(isS_1 (S_0 x_67))))
(assert (forall ((x_68 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_68))))
(assert (forall ((x_69 Nat_0))
	(diseqNat_1 (S_0 x_69) Z_0)))
(assert (forall ((x_70 Nat_0) (x_71 Nat_0))
	(=> (diseqNat_1 x_70 x_71)
	    (diseqNat_1 (S_0 x_70) (S_0 x_71)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_1 Nat_1) (x_2 list_0) (x_13 list_0) (x_14 list_0))
	(=>	(and (= x_13 (cons_0 x_1 x_14))
			(take_0 x_14 z_0 x_2)
			(= x_0 (S_0 z_0))
			(= y_0 (cons_0 x_1 x_2)))
		(take_0 x_13 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_15 list_0))
	(=>	(and (= x_15 nil_0)
			(= x_0 (S_0 z_0))
			(= y_0 nil_0))
		(take_0 x_15 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(= x_0 Z_0))
		(take_0 x_16 x_0 y_0))))
(declare-fun len_0 (Nat_0 list_0) Bool)
(assert (forall ((x_3 list_0) (y_1 Nat_1) (xs_0 list_0) (x_17 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_17 (S_0 x_18))
			(len_0 x_18 xs_0)
			(= x_3 (cons_0 y_1 xs_0)))
		(len_0 x_17 x_3))))
(assert (forall ((x_3 list_0) (x_19 Nat_0))
	(=>	(and (= x_19 Z_0)
			(= x_3 nil_0))
		(len_0 x_19 x_3))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 list_0) (z_1 Nat_0) (x_5 Nat_1) (x_6 list_0) (x_20 list_0) (x_21 list_0))
	(=>	(and (= x_20 x_21)
			(drop_0 x_21 z_1 x_6)
			(= x_4 (S_0 z_1))
			(= y_2 (cons_0 x_5 x_6)))
		(drop_0 x_20 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 list_0) (z_1 Nat_0) (x_22 list_0))
	(=>	(and (= x_22 nil_0)
			(= x_4 (S_0 z_1))
			(= y_2 nil_0))
		(drop_0 x_22 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 list_0) (x_23 list_0))
	(=>	(and (= x_23 y_2)
			(= x_4 Z_0))
		(drop_0 x_23 x_4 y_2))))
(declare-fun x_7 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_8 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_9 Nat_0) (x_24 Nat_0) (x_25 Nat_0))
	(=>	(and (= x_24 x_25)
			(x_7 x_25 z_2 x_9)
			(= x_8 (S_0 z_2))
			(= y_3 (S_0 x_9)))
		(x_7 x_24 x_8 y_3))))
(assert (forall ((x_8 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_26 Nat_0))
	(=>	(and (= x_26 (S_0 z_2))
			(= x_8 (S_0 z_2))
			(= y_3 Z_0))
		(x_7 x_26 x_8 y_3))))
(assert (forall ((x_8 Nat_0) (y_3 Nat_0) (x_27 Nat_0))
	(=>	(and (= x_27 Z_0)
			(= x_8 Z_0))
		(x_7 x_27 x_8 y_3))))
(declare-fun x_10 (list_0 list_0 list_0) Bool)
(assert (forall ((x_11 list_0) (y_4 list_0) (z_3 Nat_1) (xs_1 list_0) (x_28 list_0) (x_29 list_0))
	(=>	(and (= x_28 (cons_0 z_3 x_29))
			(x_10 x_29 xs_1 y_4)
			(= x_11 (cons_0 z_3 xs_1)))
		(x_10 x_28 x_11 y_4))))
(assert (forall ((x_11 list_0) (y_4 list_0) (x_30 list_0))
	(=>	(and (= x_30 y_4)
			(= x_11 nil_0))
		(x_10 x_30 x_11 y_4))))
(declare-fun rev_0 (list_0 list_0) Bool)
(assert (forall ((x_12 list_0) (y_5 Nat_1) (xs_2 list_0) (x_31 list_0) (x_32 list_0) (x_33 list_0))
	(=>	(and (= x_31 x_33)
			(rev_0 x_32 xs_2)
			(x_10 x_33 x_32 (cons_0 y_5 nil_0))
			(= x_12 (cons_0 y_5 xs_2)))
		(rev_0 x_31 x_12))))
(assert (forall ((x_12 list_0) (x_34 list_0))
	(=>	(and (= x_34 nil_0)
			(= x_12 nil_0))
		(rev_0 x_34 x_12))))
(assert (forall ((i_0 Nat_0) (xs_3 list_0) (x_35 list_0) (x_36 list_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 list_0) (x_40 list_0))
	(=>	(and (diseqlist_0 x_36 x_40)
			(take_0 x_35 i_0 xs_3)
			(rev_0 x_36 x_35)
			(len_0 x_37 xs_3)
			(x_7 x_38 x_37 i_0)
			(rev_0 x_39 xs_3)
			(drop_0 x_40 x_38 x_39))
		false)))
(check-sat)
