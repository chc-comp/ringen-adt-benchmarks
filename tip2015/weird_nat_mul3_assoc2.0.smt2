(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_117 Nat_1) (x_116 Nat_1))
	(=> (= x_117 (S_0 x_116))
	    (unS_1 x_116 x_117))))
(assert (isZ_0 Z_0))
(assert (forall ((x_118 Nat_1))
	(isS_0 (S_0 x_118))))
(assert (forall ((x_119 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_119))))
(assert (forall ((x_120 Nat_1))
	(diseqNat_0 (S_0 x_120) Z_0)))
(assert (forall ((x_121 Nat_1) (x_122 Nat_1))
	(=> (diseqNat_0 x_121 x_122)
	    (diseqNat_0 (S_0 x_121) (S_0 x_122)))))
(declare-fun add_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_5 Nat_1))
	(add_1 y_5 Z_0 y_5)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_1 r_0 x_114 y_5)
	    (add_1 (S_0 r_0) (S_0 x_114) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_0 Z_0 y_5)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_114 y_5)
	    (minus_0 (S_0 r_0) (S_0 x_114) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_0 y_5)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_114 y_5)
	    (le_0 (S_0 x_114) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_0)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_114 y_5)
	    (ge_0 (S_0 x_114) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_0 (S_0 y_5))))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_114 y_5)
	    (lt_0 (S_0 x_114) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_0 y_5) Z_0)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_114 y_5)
	    (gt_0 (S_0 x_114) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_0 Z_0 y_5)))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_114 y_5)
			(add_1 z_4 r_0 y_5))
		(mult_0 z_4 (S_0 x_114) y_5))))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_114 y_5)
	    (div_0 Z_0 x_114 y_5))))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_114 y_5)
			(minus_0 z_4 x_114 y_5)
			(div_0 r_0 z_4 y_5))
		(div_0 (S_0 r_0) x_114 y_5))))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_114 y_5)
	    (mod_0 x_114 x_114 y_5))))
(assert (forall ((x_114 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_114 y_5)
			(minus_0 z_4 x_114 y_5)
			(mod_0 r_0 z_4 y_5))
		(mod_0 r_0 x_114 y_5))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_125 Nat_0) (x_124 Nat_0))
	(=> (= x_125 (succ_0 x_124))
	    (p_1 x_124 x_125))))
(assert (iszero_0 zero_0))
(assert (forall ((x_126 Nat_0))
	(issucc_0 (succ_0 x_126))))
(assert (forall ((x_127 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_127))))
(assert (forall ((x_128 Nat_0))
	(diseqNat_1 (succ_0 x_128) zero_0)))
(assert (forall ((x_129 Nat_0) (x_130 Nat_0))
	(=> (diseqNat_1 x_129 x_130)
	    (diseqNat_1 (succ_0 x_129) (succ_0 x_130)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_17 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_17 (succ_0 x_18))
			(plus_0 x_18 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_17 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_19 y_0)
			(= x_0 zero_0))
		(plus_0 x_19 x_0 y_0))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_20 x_22)
			(add_0 x_21 x_2 y_1 z_1)
			(plus_0 x_22 (succ_0 zero_0) x_21)
			(= x_1 (succ_0 x_2)))
		(add_0 x_20 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0))
	(=>	(and (= x_23 x_25)
			(add_0 x_24 zero_0 x_3 z_1)
			(plus_0 x_25 (succ_0 zero_0) x_24)
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(add_0 x_23 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_26 Nat_0))
	(=>	(and (= x_26 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(add_0 x_26 x_1 y_1 z_1))))
(declare-fun mul_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_35 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0))
	(=>	(and (= x_35 (succ_0 zero_0))
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_34)
			(= x_5 zero_0)
			(= x_6 zero_0)
			(= x_7 zero_0)
			(mul_0 x_27 x_5 x_6 x_7)
			(mul_0 x_28 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_29 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_30 x_5 x_6 (succ_0 zero_0))
			(add_0 x_31 x_28 x_29 x_30)
			(add_0 x_32 x_5 x_6 x_7)
			(add_0 x_33 x_27 x_31 x_32)
			(plus_0 x_34 (succ_0 zero_0) x_33))
		(mul_0 x_35 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_44 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_44 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_43)
			(diseqNat_1 x_5 zero_0)
			(mul_0 x_36 x_5 x_6 x_7)
			(mul_0 x_37 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_38 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_39 x_5 x_6 (succ_0 zero_0))
			(add_0 x_40 x_37 x_38 x_39)
			(add_0 x_41 x_5 x_6 x_7)
			(add_0 x_42 x_36 x_40 x_41)
			(plus_0 x_43 (succ_0 zero_0) x_42))
		(mul_0 x_44 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_53 Nat_0) (x_45 Nat_0) (x_46 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0))
	(=>	(and (= x_53 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_52)
			(= x_5 zero_0)
			(diseqNat_1 x_6 zero_0)
			(mul_0 x_45 x_5 x_6 x_7)
			(mul_0 x_46 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_47 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_48 x_5 x_6 (succ_0 zero_0))
			(add_0 x_49 x_46 x_47 x_48)
			(add_0 x_50 x_5 x_6 x_7)
			(add_0 x_51 x_45 x_49 x_50)
			(plus_0 x_52 (succ_0 zero_0) x_51))
		(mul_0 x_53 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_62 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0))
	(=>	(and (= x_62 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_61)
			(diseqNat_1 x_5 zero_0)
			(mul_0 x_54 x_5 x_6 x_7)
			(mul_0 x_55 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_56 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_57 x_5 x_6 (succ_0 zero_0))
			(add_0 x_58 x_55 x_56 x_57)
			(add_0 x_59 x_5 x_6 x_7)
			(add_0 x_60 x_54 x_58 x_59)
			(plus_0 x_61 (succ_0 zero_0) x_60))
		(mul_0 x_62 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_71 Nat_0) (x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0))
	(=>	(and (= x_71 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_70)
			(= x_5 zero_0)
			(= x_6 zero_0)
			(diseqNat_1 x_7 zero_0)
			(mul_0 x_63 x_5 x_6 x_7)
			(mul_0 x_64 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_65 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_66 x_5 x_6 (succ_0 zero_0))
			(add_0 x_67 x_64 x_65 x_66)
			(add_0 x_68 x_5 x_6 x_7)
			(add_0 x_69 x_63 x_67 x_68)
			(plus_0 x_70 (succ_0 zero_0) x_69))
		(mul_0 x_71 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_80 Nat_0) (x_72 Nat_0) (x_73 Nat_0) (x_74 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0))
	(=>	(and (= x_80 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_79)
			(diseqNat_1 x_5 zero_0)
			(mul_0 x_72 x_5 x_6 x_7)
			(mul_0 x_73 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_74 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_75 x_5 x_6 (succ_0 zero_0))
			(add_0 x_76 x_73 x_74 x_75)
			(add_0 x_77 x_5 x_6 x_7)
			(add_0 x_78 x_72 x_76 x_77)
			(plus_0 x_79 (succ_0 zero_0) x_78))
		(mul_0 x_80 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_89 Nat_0) (x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0))
	(=>	(and (= x_89 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_88)
			(= x_5 zero_0)
			(diseqNat_1 x_6 zero_0)
			(mul_0 x_81 x_5 x_6 x_7)
			(mul_0 x_82 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_83 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_84 x_5 x_6 (succ_0 zero_0))
			(add_0 x_85 x_82 x_83 x_84)
			(add_0 x_86 x_5 x_6 x_7)
			(add_0 x_87 x_81 x_85 x_86)
			(plus_0 x_88 (succ_0 zero_0) x_87))
		(mul_0 x_89 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (fail_0 Nat_0) (x_98 Nat_0) (x_90 Nat_0) (x_91 Nat_0) (x_92 Nat_0) (x_93 Nat_0) (x_94 Nat_0) (x_95 Nat_0) (x_96 Nat_0) (x_97 Nat_0))
	(=>	(and (= x_98 fail_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 (succ_0 x_7))
			(= fail_0 x_97)
			(diseqNat_1 x_5 zero_0)
			(mul_0 x_90 x_5 x_6 x_7)
			(mul_0 x_91 (succ_0 zero_0) x_6 x_7)
			(mul_0 x_92 x_5 (succ_0 zero_0) x_7)
			(mul_0 x_93 x_5 x_6 (succ_0 zero_0))
			(add_0 x_94 x_91 x_92 x_93)
			(add_0 x_95 x_5 x_6 x_7)
			(add_0 x_96 x_90 x_94 x_95)
			(plus_0 x_97 (succ_0 zero_0) x_96))
		(mul_0 x_98 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_99 Nat_0))
	(=>	(and (= x_99 zero_0)
			(= x_4 (succ_0 x_5))
			(= y_2 (succ_0 x_6))
			(= z_2 zero_0))
		(mul_0 x_99 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_5 Nat_0) (x_100 Nat_0))
	(=>	(and (= x_100 zero_0)
			(= x_4 (succ_0 x_5))
			(= y_2 zero_0))
		(mul_0 x_100 x_4 y_2 z_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_101 Nat_0))
	(=>	(and (= x_101 zero_0)
			(= x_4 zero_0))
		(mul_0 x_101 x_4 y_2 z_2))))
(assert (forall ((x_8 Nat_0) (x_9 Nat_0) (x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_102 Nat_0) (x_103 Nat_0) (x_104 Nat_0) (x_105 Nat_0))
	(=>	(and (diseqNat_1 x_103 x_105)
			(mul_0 x_102 x_8 x_9 x_10)
			(mul_0 x_103 x_102 x_11 x_12)
			(mul_0 x_104 x_9 x_10 x_11)
			(mul_0 x_105 x_8 x_104 x_12))
		false)))
(assert (forall ((x_13 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_106 Nat_0) (x_107 Nat_0) (x_108 Nat_0) (x_109 Nat_0))
	(=>	(and (diseqNat_1 x_107 x_109)
			(plus_0 x_106 y_3 z_3)
			(plus_0 x_107 x_13 x_106)
			(plus_0 x_108 x_13 y_3)
			(plus_0 x_109 x_108 z_3))
		false)))
(assert (forall ((x_14 Nat_0) (y_4 Nat_0) (x_110 Nat_0) (x_111 Nat_0))
	(=>	(and (diseqNat_1 x_110 x_111)
			(plus_0 x_110 x_14 y_4)
			(plus_0 x_111 y_4 x_14))
		false)))
(assert (forall ((x_15 Nat_0) (x_112 Nat_0))
	(=>	(and (diseqNat_1 x_112 x_15)
			(plus_0 x_112 x_15 zero_0))
		false)))
(assert (forall ((x_16 Nat_0) (x_113 Nat_0))
	(=>	(and (diseqNat_1 x_113 x_16)
			(plus_0 x_113 zero_0 x_16))
		false)))
(check-sat)
