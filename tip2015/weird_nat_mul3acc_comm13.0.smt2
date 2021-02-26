(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_109 Nat_1) (x_108 Nat_1))
	(=> (= x_109 (S_0 x_108))
	    (unS_1 x_108 x_109))))
(assert (isZ_0 Z_0))
(assert (forall ((x_110 Nat_1))
	(isS_0 (S_0 x_110))))
(assert (forall ((x_111 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_111))))
(assert (forall ((x_112 Nat_1))
	(diseqNat_0 (S_0 x_112) Z_0)))
(assert (forall ((x_113 Nat_1) (x_114 Nat_1))
	(=> (diseqNat_0 x_113 x_114)
	    (diseqNat_0 (S_0 x_113) (S_0 x_114)))))
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
	(add_0 y_6 Z_0 y_6)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_106 y_6)
	    (add_0 (S_0 r_0) (S_0 x_106) y_6))))
(assert (forall ((y_6 Nat_1))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_106 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_106) y_6))))
(assert (forall ((y_6 Nat_1))
	(le_0 Z_0 y_6)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (le_0 x_106 y_6)
	    (le_0 (S_0 x_106) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (ge_0 x_106 y_6)
	    (ge_0 (S_0 x_106) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_106 y_6)
	    (lt_0 (S_0 x_106) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (gt_0 x_106 y_6)
	    (gt_0 (S_0 x_106) (S_0 y_6)))))
(assert (forall ((y_6 Nat_1))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (mult_0 r_0 x_106 y_6)
			(add_0 z_5 r_0 y_6))
		(mult_0 z_5 (S_0 x_106) y_6))))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_106 y_6)
	    (div_0 Z_0 x_106 y_6))))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_106 y_6)
			(minus_0 z_5 x_106 y_6)
			(div_0 r_0 z_5 y_6))
		(div_0 (S_0 r_0) x_106 y_6))))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_106 y_6)
	    (mod_0 x_106 x_106 y_6))))
(assert (forall ((x_106 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_106 y_6)
			(minus_0 z_5 x_106 y_6)
			(mod_0 r_0 z_5 y_6))
		(mod_0 r_0 x_106 y_6))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_117 Nat_0) (x_116 Nat_0))
	(=> (= x_117 (succ_0 x_116))
	    (p_1 x_116 x_117))))
(assert (iszero_0 zero_0))
(assert (forall ((x_118 Nat_0))
	(issucc_0 (succ_0 x_118))))
(assert (forall ((x_119 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_119))))
(assert (forall ((x_120 Nat_0))
	(diseqNat_1 (succ_0 x_120) zero_0)))
(assert (forall ((x_121 Nat_0) (x_122 Nat_0))
	(=> (diseqNat_1 x_121 x_122)
	    (diseqNat_1 (succ_0 x_121) (succ_0 x_122)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_13 Nat_0) (x_14 Nat_0))
	(=>	(and (= x_13 (succ_0 x_14))
			(plus_0 x_14 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_13 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_15 Nat_0))
	(=>	(and (= x_15 y_0)
			(= x_0 zero_0))
		(plus_0 x_15 x_0 y_0))))
(declare-fun addacc_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_16 Nat_0) (x_17 Nat_0))
	(=>	(and (= x_16 x_17)
			(addacc_0 x_17 x_2 (succ_0 y_1) z_1)
			(= x_1 (succ_0 x_2)))
		(addacc_0 x_16 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_18 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_18 x_19)
			(addacc_0 x_19 zero_0 x_3 (succ_0 z_1))
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(addacc_0 x_18 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_20 Nat_0))
	(=>	(and (= x_20 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(addacc_0 x_20 x_1 y_1 z_1))))
(declare-fun mulacc_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_29 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0))
	(=>	(and (= x_29 (succ_0 zero_0))
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_28)
			(= x_5 zero_0)
			(= x_6 zero_0)
			(= x_7 zero_0)
			(mulacc_0 x_21 x_5 x_6 x_7)
			(mulacc_0 x_22 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_23 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_24 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_25 x_22 x_23 x_24)
			(addacc_0 x_26 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_27 x_21 x_25 x_26)
			(plus_0 x_28 (succ_0 zero_0) x_27))
		(mulacc_0 x_29 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_38 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0))
	(=>	(and (= x_38 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_37)
			(diseqNat_1 x_5 zero_0)
			(mulacc_0 x_30 x_5 x_6 x_7)
			(mulacc_0 x_31 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_32 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_33 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_34 x_31 x_32 x_33)
			(addacc_0 x_35 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_36 x_30 x_34 x_35)
			(plus_0 x_37 (succ_0 zero_0) x_36))
		(mulacc_0 x_38 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_47 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_47 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_46)
			(= x_5 zero_0)
			(diseqNat_1 x_6 zero_0)
			(mulacc_0 x_39 x_5 x_6 x_7)
			(mulacc_0 x_40 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_41 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_42 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_43 x_40 x_41 x_42)
			(addacc_0 x_44 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_45 x_39 x_43 x_44)
			(plus_0 x_46 (succ_0 zero_0) x_45))
		(mulacc_0 x_47 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_56 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0))
	(=>	(and (= x_56 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_55)
			(diseqNat_1 x_5 zero_0)
			(mulacc_0 x_48 x_5 x_6 x_7)
			(mulacc_0 x_49 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_50 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_51 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_52 x_49 x_50 x_51)
			(addacc_0 x_53 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_54 x_48 x_52 x_53)
			(plus_0 x_55 (succ_0 zero_0) x_54))
		(mulacc_0 x_56 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_65 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Nat_0) (x_64 Nat_0))
	(=>	(and (= x_65 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_64)
			(= x_5 zero_0)
			(= x_6 zero_0)
			(diseqNat_1 x_7 zero_0)
			(mulacc_0 x_57 x_5 x_6 x_7)
			(mulacc_0 x_58 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_59 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_60 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_61 x_58 x_59 x_60)
			(addacc_0 x_62 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_63 x_57 x_61 x_62)
			(plus_0 x_64 (succ_0 zero_0) x_63))
		(mulacc_0 x_65 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_74 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0))
	(=>	(and (= x_74 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_73)
			(diseqNat_1 x_5 zero_0)
			(mulacc_0 x_66 x_5 x_6 x_7)
			(mulacc_0 x_67 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_68 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_69 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_70 x_67 x_68 x_69)
			(addacc_0 x_71 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_72 x_66 x_70 x_71)
			(plus_0 x_73 (succ_0 zero_0) x_72))
		(mulacc_0 x_74 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_83 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_80 Nat_0) (x_81 Nat_0) (x_82 Nat_0))
	(=>	(and (= x_83 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_82)
			(= x_5 zero_0)
			(diseqNat_1 x_6 zero_0)
			(mulacc_0 x_75 x_5 x_6 x_7)
			(mulacc_0 x_76 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_77 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_78 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_79 x_76 x_77 x_78)
			(addacc_0 x_80 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_81 x_75 x_79 x_80)
			(plus_0 x_82 (succ_0 zero_0) x_81))
		(mulacc_0 x_83 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_92 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0) (x_89 Nat_0) (x_90 Nat_0) (x_91 Nat_0))
	(=>	(and (= x_92 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_91)
			(diseqNat_1 x_5 zero_0)
			(mulacc_0 x_84 x_5 x_6 x_7)
			(mulacc_0 x_85 (succ_0 zero_0) x_6 x_7)
			(mulacc_0 x_86 x_5 (succ_0 zero_0) x_7)
			(mulacc_0 x_87 x_5 x_6 (succ_0 zero_0))
			(addacc_0 x_88 x_85 x_86 x_87)
			(addacc_0 x_89 (succ_0 x_5) (succ_0 x_6) (succ_0 x_7))
			(addacc_0 x_90 x_84 x_88 x_89)
			(plus_0 x_91 (succ_0 zero_0) x_90))
		(mulacc_0 x_92 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_93 Nat_0))
	(=>	(and (= x_93 zero_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 zero_0))
		(mulacc_0 x_93 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_94 Nat_0))
	(=>	(and (= x_94 zero_0)
			(= x_4 (succ_0 x_5))
			(= y_2 zero_0))
		(mulacc_0 x_94 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_95 Nat_0))
	(=>	(and (= x_95 zero_0)
			(= x_4 zero_0))
		(mulacc_0 x_95 x_4 y_2 z_2))))
(assert (forall ((x_8 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_96 Nat_0) (x_97 Nat_0))
	(=>	(and (diseqNat_1 x_96 x_97)
			(mulacc_0 x_96 x_8 y_3 z_3)
			(mulacc_0 x_97 z_3 y_3 x_8))
		false)))
(assert (forall ((x_9 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_98 Nat_0) (x_99 Nat_0) (x_100 Nat_0) (x_101 Nat_0))
	(=>	(and (diseqNat_1 x_99 x_101)
			(plus_0 x_98 y_4 z_4)
			(plus_0 x_99 x_9 x_98)
			(plus_0 x_100 x_9 y_4)
			(plus_0 x_101 x_100 z_4))
		false)))
(assert (forall ((x_10 Nat_0) (y_5 Nat_0) (x_102 Nat_0) (x_103 Nat_0))
	(=>	(and (diseqNat_1 x_102 x_103)
			(plus_0 x_102 x_10 y_5)
			(plus_0 x_103 y_5 x_10))
		false)))
(assert (forall ((x_11 Nat_0) (x_104 Nat_0))
	(=>	(and (diseqNat_1 x_104 x_11)
			(plus_0 x_104 x_11 zero_0))
		false)))
(assert (forall ((x_12 Nat_0) (x_105 Nat_0))
	(=>	(and (diseqNat_1 x_105 x_12)
			(plus_0 x_105 zero_0 x_12))
		false)))
(check-sat)
