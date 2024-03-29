(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_25 ) (Z_26 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Bool_0)))))
(declare-datatypes ((pair_2 0)) (((pair_3 (projpair_2 Nat_0) (projpair_3 Nat_0)))))
(declare-datatypes ((Maybe_0 0)) (((Nothing_0 ) (Just_0 (projJust_0 Nat_0)))))
(declare-fun diseqMaybe_0 (Maybe_0 Maybe_0) Bool)
(declare-datatypes ((pair_4 0)) (((pair_5 (projpair_4 Nat_0) (projpair_5 Maybe_0)))))
(declare-datatypes ((Map_0 0)) (((Rest_0 (projRest_0 Nat_0)) (Slot_0 (projSlot_0 Nat_0) (projSlot_1 Map_0)))))
(declare-datatypes ((Reach_0 0)) (((Init_0 (projInit_0 Map_0)) (CheckIn_0 (projCheckIn_0 Nat_0) (projCheckIn_1 Nat_0) (projCheckIn_2 Nat_0) (projCheckIn_3 Reach_0)) (EnterRoom_0 (projEnterRoom_0 Nat_0) (projEnterRoom_1 Nat_0) (projEnterRoom_2 pair_2) (projEnterRoom_3 Reach_0)) (ExitRoom_0 (projExitRoom_0 Nat_0) (projExitRoom_1 Nat_0) (projExitRoom_2 Reach_0)))))
(declare-datatypes ((Map_1 0)) (((Rest_1 (projRest_1 Maybe_0)) (Slot_1 (projSlot_2 Maybe_0) (projSlot_3 Map_1)))))
(declare-datatypes ((Map_2 0)) (((Rest_2 (projRest_2 Bool_0)) (Slot_2 (projSlot_4 Bool_0) (projSlot_5 Map_2)))))
(declare-datatypes ((pair_6 0)) (((pair_7 (projpair_6 Nat_0) (projpair_7 Map_2)))))
(declare-datatypes ((Map_3 0)) (((Rest_3 (projRest_3 Map_2)) (Slot_3 (projSlot_6 Map_2) (projSlot_7 Map_3)))))
(declare-datatypes ((Map_4 0)) (((Rest_4 (projRest_4 Map_3)) (Slot_4 (projSlot_8 Map_3) (projSlot_9 Map_4)))))
(declare-datatypes ((State_0 0)) (((State_1 (projState_0 Map_1) (projState_1 Map_0) (projState_2 Map_2) (projState_3 Map_4) (projState_4 Map_0) (projState_5 Map_3) (projState_6 Map_2)))))
(declare-datatypes ((Maybe_1 0)) (((Nothing_1 ) (Just_1 (projJust_1 State_0)))))
(declare-datatypes ((pair_8 0)) (((pair_9 (projpair_8 Nat_0) (projpair_9 Map_3)))))
(declare-fun safe_0 (Map_2 State_0) Bool)
(declare-fun roomk_0 (Map_0 State_0) Bool)
(declare-fun owns_0 (Map_1 State_0) Bool)
(declare-fun issued_0 (Map_2 State_0) Bool)
(declare-fun isin_0 (Map_3 State_0) Bool)
(declare-fun injupto_0 (Bool_0 Nat_0 Nat_0 Map_0) Bool)
(declare-fun inj_0 (Bool_0 Nat_0 Map_0) Bool)
(declare-fun empty_0 (Map_3) Bool)
(declare-fun empty_1 (Map_2) Bool)
(declare-fun cards_0 (Map_4 State_0) Bool)
(declare-fun x_45 (Bool_0 Map_2 Map_2) Bool)
(declare-fun x_48 (Map_2 Map_2 pair_0) Bool)
(declare-fun add_0 (Map_2 Nat_0 Map_2) Bool)
(declare-fun range_0 (Map_2 Map_0) Bool)
(declare-fun rem_0 (Map_2 Nat_0 Map_2) Bool)
(declare-fun x_56 (Map_0 Map_0 pair_2) Bool)
(declare-fun x_61 (Map_3 Map_3 pair_6) Bool)
(declare-fun x_66 (Map_4 Map_4 pair_8) Bool)
(declare-fun x_71 (Map_1 Map_1 pair_4) Bool)
(declare-fun x_76 (Bool_0 Map_2 Nat_0) Bool)
(declare-fun x_79 (Nat_0 Map_0 Nat_0) Bool)
(declare-fun x_82 (Map_2 Map_3 Nat_0) Bool)
(declare-fun add_1 (Map_3 pair_2 Map_3) Bool)
(declare-fun x_86 (Map_3 Map_4 Nat_0) Bool)
(declare-fun x_89 (Maybe_0 Map_1 Nat_0) Bool)
(declare-fun reach_1 (Maybe_1 Nat_0 Reach_0) Bool)
(declare-fun psafe_0 (Bool_0 Nat_0 Nat_0 Nat_0 Reach_0) Bool)
(assert (forall ((x_611 Nat_0))
	(diseqNat_0 Z_25 (Z_26 x_611))))
(assert (forall ((x_612 Nat_0))
	(diseqNat_0 (Z_26 x_612) Z_25)))
(assert (forall ((x_613 Nat_0) (x_614 Nat_0))
	(=> (diseqNat_0 x_613 x_614) (diseqNat_0 (Z_26 x_613) (Z_26 x_614)))))
(assert (forall ((y_45 Nat_0))
	(minus_0 Z_25 Z_25 y_45)))
(assert (forall ((r_4 Nat_0) (x_589 Nat_0) (y_45 Nat_0))
	(=> (minus_0 r_4 x_589 y_45) (minus_0 (Z_26 r_4) (Z_26 x_589) y_45))))
(assert (forall ((y_45 Nat_0))
	(le_0 Z_25 y_45)))
(assert (forall ((x_589 Nat_0) (y_45 Nat_0))
	(=> (le_0 x_589 y_45) (le_0 (Z_26 x_589) (Z_26 y_45)))))
(assert (forall ((y_45 Nat_0))
	(gt_0 (Z_26 y_45) Z_25)))
(assert (forall ((x_589 Nat_0) (y_45 Nat_0))
	(=> (gt_0 x_589 y_45) (gt_0 (Z_26 x_589) (Z_26 y_45)))))
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
(assert (forall ((x_639 Nat_0))
	(diseqMaybe_0 Nothing_0 (Just_0 x_639))))
(assert (forall ((x_640 Nat_0))
	(diseqMaybe_0 (Just_0 x_640) Nothing_0)))
(assert (forall ((x_641 Nat_0) (x_642 Nat_0))
	(=> (diseqNat_0 x_641 x_642) (diseqMaybe_0 (Just_0 x_641) (Just_0 x_642)))))
(assert (forall ((x_118 Map_2) (y_0 Map_1) (z_0 Map_0) (x_1 Map_2) (x_2 Map_4) (x_3 Map_0) (x_4 Map_3))
	(safe_0 x_118 (State_1 y_0 z_0 x_1 x_2 x_3 x_4 x_118))))
(assert (forall ((x_119 Map_0) (y_1 Map_1) (z_1 Map_0) (x_7 Map_2) (x_8 Map_4) (x_10 Map_3) (x_11 Map_2))
	(roomk_0 x_119 (State_1 y_1 z_1 x_7 x_8 x_119 x_10 x_11))))
(assert (forall ((x_120 Map_1) (z_2 Map_0) (x_13 Map_2) (x_14 Map_4) (x_15 Map_0) (x_16 Map_3) (x_17 Map_2))
	(owns_0 x_120 (State_1 x_120 z_2 x_13 x_14 x_15 x_16 x_17))))
(assert (forall ((x_121 Map_2) (y_3 Map_1) (z_3 Map_0) (x_20 Map_4) (x_21 Map_0) (x_22 Map_3) (x_23 Map_2))
	(issued_0 x_121 (State_1 y_3 z_3 x_121 x_20 x_21 x_22 x_23))))
(assert (forall ((x_122 Map_3) (y_4 Map_1) (z_4 Map_0) (x_25 Map_2) (x_26 Map_4) (x_27 Map_0) (x_29 Map_2))
	(isin_0 x_122 (State_1 y_4 z_4 x_25 x_26 x_27 x_122 x_29))))
(assert (forall ((y_5 Nat_0) (z_5 Map_0))
	(injupto_0 true_0 Z_25 y_5 z_5)))
(assert (forall ((m_0 Map_0) (x_30 Nat_0) (y_5 Nat_0))
	(=> (diseqNat_0 x_30 Z_25) (injupto_0 false_0 x_30 y_5 (Slot_0 y_5 m_0)))))
(assert (forall ((x_590 Nat_0) (x_125 Bool_0) (y_7 Nat_0) (m_0 Map_0) (x_30 Nat_0) (y_5 Nat_0))
	(=> (and (diseqNat_0 y_5 y_7) (diseqNat_0 x_30 Z_25) (injupto_0 x_125 x_590 y_5 m_0) (minus_0 x_590 x_30 (Z_26 Z_25))) (injupto_0 x_125 x_30 y_5 (Slot_0 y_7 m_0)))))
(assert (forall ((y_5 Nat_0) (z_5 Map_0))
	(injupto_0 true_0 Z_25 y_5 z_5)))
(assert (forall ((x_30 Nat_0) (y_5 Nat_0))
	(=> (diseqNat_0 x_30 Z_25) (injupto_0 false_0 x_30 y_5 (Rest_0 y_5)))))
(assert (forall ((y_6 Nat_0) (x_30 Nat_0) (y_5 Nat_0))
	(=> (and (diseqNat_0 y_5 y_6) (diseqNat_0 x_30 Z_25)) (injupto_0 true_0 x_30 y_5 (Rest_0 y_6)))))
(assert (forall ((y_8 Map_0))
	(inj_0 true_0 Z_25 y_8)))
(assert (forall ((x_591 Nat_0) (x_131 Bool_0) (x_132 Bool_0) (x_133 Bool_0) (x_32 Nat_0) (m_1 Map_0) (x_31 Nat_0))
	(=> (and (diseqNat_0 x_31 Z_25) (inj_0 x_132 x_591 m_1) (injupto_0 x_133 x_31 x_32 m_1) (and_0 x_131 x_132 x_133) (minus_0 x_591 x_31 (Z_26 Z_25))) (inj_0 x_131 x_31 (Slot_0 x_32 m_1)))))
(assert (forall ((y_8 Map_0))
	(inj_0 true_0 Z_25 y_8)))
(assert (forall ((z_6 Nat_0) (x_31 Nat_0))
	(=> (diseqNat_0 x_31 Z_25) (inj_0 false_0 x_31 (Rest_0 z_6)))))
(assert (empty_0 (Rest_3 (Rest_2 false_0))))
(assert (empty_1 (Rest_2 false_0)))
(assert (forall ((x_139 Map_4) (y_10 Map_1) (z_8 Map_0) (x_40 Map_2) (x_42 Map_0) (x_43 Map_3) (x_44 Map_2))
	(cards_0 x_139 (State_1 y_10 z_8 x_40 x_139 x_42 x_43 x_44))))
(assert (forall ((x_140 Bool_0) (r_0 Map_2) (x_47 Bool_0) (p_0 Map_2))
	(=> (x_45 x_140 p_0 r_0) (x_45 x_140 (Slot_2 x_47 p_0) (Slot_2 x_47 r_0)))))
(assert (forall ((y_15 Bool_0) (r_0 Map_2) (x_47 Bool_0) (p_0 Map_2))
	(=> (diseqBool_0 x_47 y_15) (x_45 false_0 (Slot_2 x_47 p_0) (Slot_2 y_15 r_0)))))
(assert (forall ((x_143 Bool_0) (x_47 Bool_0) (p_0 Map_2))
	(=> (x_45 x_143 p_0 (Rest_2 x_47)) (x_45 x_143 (Slot_2 x_47 p_0) (Rest_2 x_47)))))
(assert (forall ((y_14 Bool_0) (x_47 Bool_0) (p_0 Map_2))
	(=> (diseqBool_0 x_47 y_14) (x_45 false_0 (Slot_2 x_47 p_0) (Rest_2 y_14)))))
(assert (forall ((x_146 Bool_0) (y_13 Bool_0) (q_0 Map_2))
	(=> (x_45 x_146 (Rest_2 y_13) q_0) (x_45 x_146 (Rest_2 y_13) (Slot_2 y_13 q_0)))))
(assert (forall ((y_13 Bool_0) (q_0 Map_2) (z_9 Bool_0))
	(=> (diseqBool_0 z_9 y_13) (x_45 false_0 (Rest_2 z_9) (Slot_2 y_13 q_0)))))
(assert (forall ((y_12 Bool_0))
	(x_45 true_0 (Rest_2 y_12) (Rest_2 y_12))))
(assert (forall ((y_12 Bool_0) (z_9 Bool_0))
	(=> (diseqBool_0 z_9 y_12) (x_45 false_0 (Rest_2 z_9) (Rest_2 y_12)))))
(assert (forall ((y_18 Bool_0) (x_51 Bool_0) (m_2 Map_2))
	(x_48 (Slot_2 y_18 m_2) (Slot_2 x_51 m_2) (pair_1 Z_25 y_18))))
(assert (forall ((x_592 Nat_0) (x_153 Map_2) (x_52 Nat_0) (y_18 Bool_0) (x_51 Bool_0) (m_2 Map_2))
	(=> (and (diseqNat_0 x_52 Z_25) (x_48 x_153 m_2 (pair_1 x_592 y_18)) (minus_0 x_592 x_52 (Z_26 Z_25))) (x_48 (Slot_2 x_51 x_153) (Slot_2 x_51 m_2) (pair_1 x_52 y_18)))))
(assert (forall ((y_17 Bool_0) (z_10 Bool_0))
	(x_48 (Slot_2 y_17 (Rest_2 z_10)) (Rest_2 z_10) (pair_1 Z_25 y_17))))
(assert (forall ((x_593 Nat_0) (x_156 Map_2) (x_50 Nat_0) (y_17 Bool_0) (z_10 Bool_0))
	(=> (and (diseqNat_0 x_50 Z_25) (x_48 x_156 (Rest_2 z_10) (pair_1 x_593 y_17)) (minus_0 x_593 x_50 (Z_26 Z_25))) (x_48 (Slot_2 z_10 x_156) (Rest_2 z_10) (pair_1 x_50 y_17)))))
(assert (forall ((x_157 Map_2) (x_53 Nat_0) (y_19 Map_2))
	(=> (x_48 x_157 y_19 (pair_1 x_53 true_0)) (add_0 x_157 x_53 y_19))))
(assert (forall ((x_159 Map_2) (x_160 Map_2) (z_11 Nat_0) (m_3 Map_0))
	(=> (and (range_0 x_160 m_3) (add_0 x_159 z_11 x_160)) (range_0 x_159 (Slot_0 z_11 m_3)))))
(assert (forall ((x_162 Map_2) (x_163 Map_2) (y_20 Nat_0))
	(=> (and (empty_1 x_163) (add_0 x_162 y_20 x_163)) (range_0 x_162 (Rest_0 y_20)))))
(assert (forall ((x_165 Map_2) (x_55 Nat_0) (y_21 Map_2))
	(=> (x_48 x_165 y_21 (pair_1 x_55 false_0)) (rem_0 x_165 x_55 y_21))))
(assert (forall ((y_24 Nat_0) (x_59 Nat_0) (m_4 Map_0))
	(x_56 (Slot_0 y_24 m_4) (Slot_0 x_59 m_4) (pair_3 Z_25 y_24))))
(assert (forall ((x_594 Nat_0) (x_169 Map_0) (x_60 Nat_0) (y_24 Nat_0) (x_59 Nat_0) (m_4 Map_0))
	(=> (and (diseqNat_0 x_60 Z_25) (x_56 x_169 m_4 (pair_3 x_594 y_24)) (minus_0 x_594 x_60 (Z_26 Z_25))) (x_56 (Slot_0 x_59 x_169) (Slot_0 x_59 m_4) (pair_3 x_60 y_24)))))
(assert (forall ((y_23 Nat_0) (z_12 Nat_0))
	(x_56 (Slot_0 y_23 (Rest_0 z_12)) (Rest_0 z_12) (pair_3 Z_25 y_23))))
(assert (forall ((x_595 Nat_0) (x_172 Map_0) (x_58 Nat_0) (y_23 Nat_0) (z_12 Nat_0))
	(=> (and (diseqNat_0 x_58 Z_25) (x_56 x_172 (Rest_0 z_12) (pair_3 x_595 y_23)) (minus_0 x_595 x_58 (Z_26 Z_25))) (x_56 (Slot_0 z_12 x_172) (Rest_0 z_12) (pair_3 x_58 y_23)))))
(assert (forall ((y_27 Map_2) (x_64 Map_2) (m_5 Map_3))
	(x_61 (Slot_3 y_27 m_5) (Slot_3 x_64 m_5) (pair_7 Z_25 y_27))))
(assert (forall ((x_596 Nat_0) (x_175 Map_3) (x_65 Nat_0) (y_27 Map_2) (x_64 Map_2) (m_5 Map_3))
	(=> (and (diseqNat_0 x_65 Z_25) (x_61 x_175 m_5 (pair_7 x_596 y_27)) (minus_0 x_596 x_65 (Z_26 Z_25))) (x_61 (Slot_3 x_64 x_175) (Slot_3 x_64 m_5) (pair_7 x_65 y_27)))))
(assert (forall ((y_26 Map_2) (z_13 Map_2))
	(x_61 (Slot_3 y_26 (Rest_3 z_13)) (Rest_3 z_13) (pair_7 Z_25 y_26))))
(assert (forall ((x_597 Nat_0) (x_178 Map_3) (x_63 Nat_0) (y_26 Map_2) (z_13 Map_2))
	(=> (and (diseqNat_0 x_63 Z_25) (x_61 x_178 (Rest_3 z_13) (pair_7 x_597 y_26)) (minus_0 x_597 x_63 (Z_26 Z_25))) (x_61 (Slot_3 z_13 x_178) (Rest_3 z_13) (pair_7 x_63 y_26)))))
(assert (forall ((y_30 Map_3) (x_69 Map_3) (m_6 Map_4))
	(x_66 (Slot_4 y_30 m_6) (Slot_4 x_69 m_6) (pair_9 Z_25 y_30))))
(assert (forall ((x_598 Nat_0) (x_181 Map_4) (x_70 Nat_0) (y_30 Map_3) (x_69 Map_3) (m_6 Map_4))
	(=> (and (diseqNat_0 x_70 Z_25) (x_66 x_181 m_6 (pair_9 x_598 y_30)) (minus_0 x_598 x_70 (Z_26 Z_25))) (x_66 (Slot_4 x_69 x_181) (Slot_4 x_69 m_6) (pair_9 x_70 y_30)))))
(assert (forall ((y_29 Map_3) (z_14 Map_3))
	(x_66 (Slot_4 y_29 (Rest_4 z_14)) (Rest_4 z_14) (pair_9 Z_25 y_29))))
(assert (forall ((x_599 Nat_0) (x_184 Map_4) (x_68 Nat_0) (y_29 Map_3) (z_14 Map_3))
	(=> (and (diseqNat_0 x_68 Z_25) (x_66 x_184 (Rest_4 z_14) (pair_9 x_599 y_29)) (minus_0 x_599 x_68 (Z_26 Z_25))) (x_66 (Slot_4 z_14 x_184) (Rest_4 z_14) (pair_9 x_68 y_29)))))
(assert (forall ((y_33 Maybe_0) (x_74 Maybe_0) (m_7 Map_1))
	(x_71 (Slot_1 y_33 m_7) (Slot_1 x_74 m_7) (pair_5 Z_25 y_33))))
(assert (forall ((x_600 Nat_0) (x_187 Map_1) (x_75 Nat_0) (y_33 Maybe_0) (x_74 Maybe_0) (m_7 Map_1))
	(=> (and (diseqNat_0 x_75 Z_25) (x_71 x_187 m_7 (pair_5 x_600 y_33)) (minus_0 x_600 x_75 (Z_26 Z_25))) (x_71 (Slot_1 x_74 x_187) (Slot_1 x_74 m_7) (pair_5 x_75 y_33)))))
(assert (forall ((y_32 Maybe_0) (z_15 Maybe_0))
	(x_71 (Slot_1 y_32 (Rest_1 z_15)) (Rest_1 z_15) (pair_5 Z_25 y_32))))
(assert (forall ((x_601 Nat_0) (x_190 Map_1) (x_73 Nat_0) (y_32 Maybe_0) (z_15 Maybe_0))
	(=> (and (diseqNat_0 x_73 Z_25) (x_71 x_190 (Rest_1 z_15) (pair_5 x_601 y_32)) (minus_0 x_601 x_73 (Z_26 Z_25))) (x_71 (Slot_1 z_15 x_190) (Rest_1 z_15) (pair_5 x_73 y_32)))))
(assert (forall ((x_191 Bool_0) (m_8 Map_2))
	(x_76 x_191 (Slot_2 x_191 m_8) Z_25)))
(assert (forall ((x_602 Nat_0) (x_192 Bool_0) (x_78 Bool_0) (m_8 Map_2) (y_34 Nat_0))
	(=> (and (diseqNat_0 y_34 Z_25) (x_76 x_192 m_8 x_602) (minus_0 x_602 y_34 (Z_26 Z_25))) (x_76 x_192 (Slot_2 x_78 m_8) y_34))))
(assert (forall ((x_194 Bool_0) (y_34 Nat_0))
	(x_76 x_194 (Rest_2 x_194) y_34)))
(assert (forall ((x_195 Nat_0) (m_9 Map_0))
	(x_79 x_195 (Slot_0 x_195 m_9) Z_25)))
(assert (forall ((x_603 Nat_0) (x_196 Nat_0) (x_81 Nat_0) (m_9 Map_0) (y_35 Nat_0))
	(=> (and (diseqNat_0 y_35 Z_25) (x_79 x_196 m_9 x_603) (minus_0 x_603 y_35 (Z_26 Z_25))) (x_79 x_196 (Slot_0 x_81 m_9) y_35))))
(assert (forall ((x_198 Nat_0) (y_35 Nat_0))
	(x_79 x_198 (Rest_0 x_198) y_35)))
(assert (forall ((x_199 Map_2) (m_10 Map_3))
	(x_82 x_199 (Slot_3 x_199 m_10) Z_25)))
(assert (forall ((x_604 Nat_0) (x_200 Map_2) (x_84 Map_2) (m_10 Map_3) (y_36 Nat_0))
	(=> (and (diseqNat_0 y_36 Z_25) (x_82 x_200 m_10 x_604) (minus_0 x_604 y_36 (Z_26 Z_25))) (x_82 x_200 (Slot_3 x_84 m_10) y_36))))
(assert (forall ((x_202 Map_2) (y_36 Nat_0))
	(x_82 x_202 (Rest_3 x_202) y_36)))
(assert (forall ((x_203 Map_3) (x_204 Map_2) (x_205 Map_2) (z_19 Nat_0) (y_38 Nat_0) (y_37 Map_3))
	(=> (and (x_82 x_204 y_37 z_19) (add_0 x_205 y_38 x_204) (x_61 x_203 y_37 (pair_7 z_19 x_205))) (add_1 x_203 (pair_3 z_19 y_38) y_37))))
(assert (forall ((x_207 Map_3) (m_11 Map_4))
	(x_86 x_207 (Slot_4 x_207 m_11) Z_25)))
(assert (forall ((x_605 Nat_0) (x_208 Map_3) (x_88 Map_3) (m_11 Map_4) (y_39 Nat_0))
	(=> (and (diseqNat_0 y_39 Z_25) (x_86 x_208 m_11 x_605) (minus_0 x_605 y_39 (Z_26 Z_25))) (x_86 x_208 (Slot_4 x_88 m_11) y_39))))
(assert (forall ((x_210 Map_3) (y_39 Nat_0))
	(x_86 x_210 (Rest_4 x_210) y_39)))
(assert (forall ((x_211 Maybe_0) (m_12 Map_1))
	(x_89 x_211 (Slot_1 x_211 m_12) Z_25)))
(assert (forall ((x_606 Nat_0) (x_212 Maybe_0) (x_91 Maybe_0) (m_12 Map_1) (y_40 Nat_0))
	(=> (and (diseqNat_0 y_40 Z_25) (x_89 x_212 m_12 x_606) (minus_0 x_606 y_40 (Z_26 Z_25))) (x_89 x_212 (Slot_1 x_91 m_12) y_40))))
(assert (forall ((x_214 Maybe_0) (y_40 Nat_0))
	(x_89 x_214 (Rest_1 x_214) y_40)))
(assert (forall ((x_220 Map_2) (x_221 Map_2) (x_222 Map_3) (x_216 Map_3) (x_217 Map_2) (x_107 Map_1) (x_108 Map_0) (x_109 Map_2) (x_110 Map_4) (x_111 Map_0) (x_112 Map_3) (x_113 Map_2) (h_0 Nat_0) (r_2 Nat_0) (q_3 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 r_2 x_92) (x_82 x_220 x_112 r_2) (rem_0 x_221 h_0 x_220) (x_61 x_222 x_112 (pair_7 r_2 x_221)) (isin_0 x_216 (State_1 x_107 x_108 x_109 x_110 x_111 x_112 x_113)) (x_82 x_217 x_216 r_2) (x_76 true_0 x_217 h_0) (reach_1 (Just_1 (State_1 x_107 x_108 x_109 x_110 x_111 x_112 x_113)) x_92 q_3)) (reach_1 (Just_1 (State_1 x_107 x_108 x_109 x_110 x_111 x_222 x_113)) x_92 (ExitRoom_0 h_0 r_2 q_3)))))
(assert (forall ((s_1 State_0) (h_0 Nat_0) (r_2 Nat_0) (q_3 Reach_0) (x_92 Nat_0))
	(=> (and (gt_0 r_2 x_92) (reach_1 (Just_1 s_1) x_92 q_3)) (reach_1 Nothing_1 x_92 (ExitRoom_0 h_0 r_2 q_3)))))
(assert (forall ((x_230 Map_2) (x_231 Map_2) (x_232 Map_3) (x_226 Map_3) (x_227 Map_2) (x_107 Map_1) (x_108 Map_0) (x_109 Map_2) (x_110 Map_4) (x_111 Map_0) (x_112 Map_3) (x_113 Map_2) (h_0 Nat_0) (r_2 Nat_0) (q_3 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 r_2 x_92) (x_82 x_230 x_112 r_2) (rem_0 x_231 h_0 x_230) (x_61 x_232 x_112 (pair_7 r_2 x_231)) (isin_0 x_226 (State_1 x_107 x_108 x_109 x_110 x_111 x_112 x_113)) (x_82 x_227 x_226 r_2) (x_76 true_0 x_227 h_0) (reach_1 (Just_1 (State_1 x_107 x_108 x_109 x_110 x_111 x_112 x_113)) x_92 q_3)) (reach_1 (Just_1 (State_1 x_107 x_108 x_109 x_110 x_111 x_232 x_113)) x_92 (ExitRoom_0 h_0 r_2 q_3)))))
(assert (forall ((x_234 Map_3) (x_235 Map_2) (x_236 Bool_0) (s_1 State_0) (h_0 Nat_0) (r_2 Nat_0) (q_3 Reach_0) (x_92 Nat_0))
	(=> (and (diseqBool_0 x_236 true_0) (isin_0 x_234 s_1) (x_82 x_235 x_234 r_2) (x_76 x_236 x_235 h_0) (reach_1 (Just_1 s_1) x_92 q_3)) (reach_1 Nothing_1 x_92 (ExitRoom_0 h_0 r_2 q_3)))))
(assert (forall ((h_0 Nat_0) (r_2 Nat_0) (q_3 Reach_0) (x_92 Nat_0))
	(=> (reach_1 Nothing_1 x_92 q_3) (reach_1 Nothing_1 x_92 (ExitRoom_0 h_0 r_2 q_3)))))
(assert (forall ((x_583 Bool_0) (x_249 Map_0) (x_250 Map_2) (x_251 Map_2) (x_252 Map_3) (x_253 Map_2) (x_254 Map_2) (x_255 Bool_0) (x_256 Bool_0) (x_257 Map_2) (x_244 Map_4) (x_245 Map_3) (x_246 Map_2) (x_242 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_249 x_104 (pair_3 p_1 k_1)) (x_82 x_250 x_105 p_1) (add_0 x_251 f_0 x_250) (x_61 x_252 x_105 (pair_7 p_1 x_251)) (x_82 x_253 x_105 p_1) (empty_1 x_254) (x_45 x_255 x_253 x_254) (x_76 x_256 x_106 p_1) (x_48 x_257 x_106 (pair_1 p_1 x_583)) (cards_0 x_244 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_245 x_244 f_0) (x_82 x_246 x_245 i_0) (x_76 true_0 x_246 k_1) (roomk_0 x_242 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_242 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_583 x_255 x_256)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_249 x_252 x_257)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_267 Map_0) (x_268 Map_2) (x_269 Map_2) (x_270 Map_3) (x_271 Bool_0) (x_272 Map_2) (x_262 Map_4) (x_263 Map_3) (x_264 Map_2) (x_260 Map_0) (x_258 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_258 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_267 x_104 (pair_3 p_1 k_1)) (x_82 x_268 x_105 p_1) (add_0 x_269 f_0 x_268) (x_61 x_270 x_105 (pair_7 p_1 x_269)) (x_76 x_271 x_106 p_1) (x_48 x_272 x_106 (pair_1 p_1 x_271)) (cards_0 x_262 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_263 x_262 f_0) (x_82 x_264 x_263 i_0) (x_76 true_0 x_264 k_1) (roomk_0 x_260 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_260 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_258 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_267 x_270 x_272)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_274 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (gt_0 p_1 x_92) (roomk_0 x_274 t_0) (x_79 rk_0 x_274 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_584 Bool_0) (x_286 Map_0) (x_287 Map_2) (x_288 Map_2) (x_289 Map_3) (x_290 Map_2) (x_291 Map_2) (x_292 Bool_0) (x_293 Bool_0) (x_294 Map_2) (x_281 Map_4) (x_282 Map_3) (x_283 Map_2) (x_279 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_286 x_104 (pair_3 p_1 k_1)) (x_82 x_287 x_105 p_1) (add_0 x_288 f_0 x_287) (x_61 x_289 x_105 (pair_7 p_1 x_288)) (x_82 x_290 x_105 p_1) (empty_1 x_291) (x_45 x_292 x_290 x_291) (x_76 x_293 x_106 p_1) (x_48 x_294 x_106 (pair_1 p_1 x_584)) (cards_0 x_281 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_282 x_281 f_0) (x_82 x_283 x_282 i_0) (x_76 true_0 x_283 k_1) (roomk_0 x_279 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_279 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_584 x_292 x_293)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_286 x_289 x_294)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_304 Map_0) (x_305 Map_2) (x_306 Map_2) (x_307 Map_3) (x_308 Bool_0) (x_309 Map_2) (x_299 Map_4) (x_300 Map_3) (x_301 Map_2) (x_297 Map_0) (x_295 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_295 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_304 x_104 (pair_3 p_1 k_1)) (x_82 x_305 x_105 p_1) (add_0 x_306 f_0 x_305) (x_61 x_307 x_105 (pair_7 p_1 x_306)) (x_76 x_308 x_106 p_1) (x_48 x_309 x_106 (pair_1 p_1 x_308)) (cards_0 x_299 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_300 x_299 f_0) (x_82 x_301 x_300 i_0) (x_76 true_0 x_301 k_1) (roomk_0 x_297 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_297 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_295 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_304 x_307 x_309)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_313 Map_4) (x_314 Map_3) (x_315 Map_2) (x_316 Bool_0) (x_311 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqBool_0 x_316 true_0) (cards_0 x_313 t_0) (x_86 x_314 x_313 f_0) (x_82 x_315 x_314 i_0) (x_76 x_316 x_315 k_1) (roomk_0 x_311 t_0) (x_79 rk_0 x_311 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_585 Bool_0) (x_327 Map_0) (x_328 Map_2) (x_329 Map_2) (x_330 Map_3) (x_331 Map_2) (x_332 Map_2) (x_333 Bool_0) (x_334 Bool_0) (x_335 Map_2) (x_322 Map_4) (x_323 Map_3) (x_324 Map_2) (x_320 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_327 x_104 (pair_3 p_1 k_1)) (x_82 x_328 x_105 p_1) (add_0 x_329 f_0 x_328) (x_61 x_330 x_105 (pair_7 p_1 x_329)) (x_82 x_331 x_105 p_1) (empty_1 x_332) (x_45 x_333 x_331 x_332) (x_76 x_334 x_106 p_1) (x_48 x_335 x_106 (pair_1 p_1 x_585)) (cards_0 x_322 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_323 x_322 f_0) (x_82 x_324 x_323 i_0) (x_76 true_0 x_324 k_1) (roomk_0 x_320 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_320 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_585 x_333 x_334)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_327 x_330 x_335)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_345 Map_0) (x_346 Map_2) (x_347 Map_2) (x_348 Map_3) (x_349 Bool_0) (x_350 Map_2) (x_340 Map_4) (x_341 Map_3) (x_342 Map_2) (x_338 Map_0) (x_336 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_336 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_345 x_104 (pair_3 p_1 k_1)) (x_82 x_346 x_105 p_1) (add_0 x_347 f_0 x_346) (x_61 x_348 x_105 (pair_7 p_1 x_347)) (x_76 x_349 x_106 p_1) (x_48 x_350 x_106 (pair_1 p_1 x_349)) (cards_0 x_340 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_341 x_340 f_0) (x_82 x_342 x_341 i_0) (x_76 true_0 x_342 k_1) (roomk_0 x_338 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 i_0 x_338 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_336 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_345 x_348 x_350)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_352 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqNat_0 rk_0 i_0) (diseqNat_0 rk_0 k_1) (roomk_0 x_352 t_0) (x_79 rk_0 x_352 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_586 Bool_0) (x_364 Map_0) (x_365 Map_2) (x_366 Map_2) (x_367 Map_3) (x_368 Map_2) (x_369 Map_2) (x_370 Bool_0) (x_371 Bool_0) (x_372 Map_2) (x_359 Map_4) (x_360 Map_3) (x_361 Map_2) (x_357 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_364 x_104 (pair_3 p_1 k_1)) (x_82 x_365 x_105 p_1) (add_0 x_366 f_0 x_365) (x_61 x_367 x_105 (pair_7 p_1 x_366)) (x_82 x_368 x_105 p_1) (empty_1 x_369) (x_45 x_370 x_368 x_369) (x_76 x_371 x_106 p_1) (x_48 x_372 x_106 (pair_1 p_1 x_586)) (cards_0 x_359 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_360 x_359 f_0) (x_82 x_361 x_360 i_0) (x_76 true_0 x_361 k_1) (roomk_0 x_357 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_357 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_586 x_370 x_371)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_364 x_367 x_372)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_382 Map_0) (x_383 Map_2) (x_384 Map_2) (x_385 Map_3) (x_386 Bool_0) (x_387 Map_2) (x_377 Map_4) (x_378 Map_3) (x_379 Map_2) (x_375 Map_0) (x_373 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_373 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_382 x_104 (pair_3 p_1 k_1)) (x_82 x_383 x_105 p_1) (add_0 x_384 f_0 x_383) (x_61 x_385 x_105 (pair_7 p_1 x_384)) (x_76 x_386 x_106 p_1) (x_48 x_387 x_106 (pair_1 p_1 x_386)) (cards_0 x_377 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_378 x_377 f_0) (x_82 x_379 x_378 i_0) (x_76 true_0 x_379 k_1) (roomk_0 x_375 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_375 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_373 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_382 x_385 x_387)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_389 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (gt_0 p_1 x_92) (roomk_0 x_389 t_0) (x_79 rk_0 x_389 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_587 Bool_0) (x_401 Map_0) (x_402 Map_2) (x_403 Map_2) (x_404 Map_3) (x_405 Map_2) (x_406 Map_2) (x_407 Bool_0) (x_408 Bool_0) (x_409 Map_2) (x_396 Map_4) (x_397 Map_3) (x_398 Map_2) (x_394 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_401 x_104 (pair_3 p_1 k_1)) (x_82 x_402 x_105 p_1) (add_0 x_403 f_0 x_402) (x_61 x_404 x_105 (pair_7 p_1 x_403)) (x_82 x_405 x_105 p_1) (empty_1 x_406) (x_45 x_407 x_405 x_406) (x_76 x_408 x_106 p_1) (x_48 x_409 x_106 (pair_1 p_1 x_587)) (cards_0 x_396 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_397 x_396 f_0) (x_82 x_398 x_397 i_0) (x_76 true_0 x_398 k_1) (roomk_0 x_394 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_394 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_587 x_407 x_408)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_401 x_404 x_409)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_419 Map_0) (x_420 Map_2) (x_421 Map_2) (x_422 Map_3) (x_423 Bool_0) (x_424 Map_2) (x_414 Map_4) (x_415 Map_3) (x_416 Map_2) (x_412 Map_0) (x_410 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_410 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_419 x_104 (pair_3 p_1 k_1)) (x_82 x_420 x_105 p_1) (add_0 x_421 f_0 x_420) (x_61 x_422 x_105 (pair_7 p_1 x_421)) (x_76 x_423 x_106 p_1) (x_48 x_424 x_106 (pair_1 p_1 x_423)) (cards_0 x_414 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_415 x_414 f_0) (x_82 x_416 x_415 i_0) (x_76 true_0 x_416 k_1) (roomk_0 x_412 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_412 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_410 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_419 x_422 x_424)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_428 Map_4) (x_429 Map_3) (x_430 Map_2) (x_431 Bool_0) (x_426 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqBool_0 x_431 true_0) (cards_0 x_428 t_0) (x_86 x_429 x_428 f_0) (x_82 x_430 x_429 i_0) (x_76 x_431 x_430 k_1) (roomk_0 x_426 t_0) (x_79 rk_0 x_426 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_588 Bool_0) (x_442 Map_0) (x_443 Map_2) (x_444 Map_2) (x_445 Map_3) (x_446 Map_2) (x_447 Map_2) (x_448 Bool_0) (x_449 Bool_0) (x_450 Map_2) (x_437 Map_4) (x_438 Map_3) (x_439 Map_2) (x_435 Map_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 p_1 x_92) (x_56 x_442 x_104 (pair_3 p_1 k_1)) (x_82 x_443 x_105 p_1) (add_0 x_444 f_0 x_443) (x_61 x_445 x_105 (pair_7 p_1 x_444)) (x_82 x_446 x_105 p_1) (empty_1 x_447) (x_45 x_448 x_446 x_447) (x_76 x_449 x_106 p_1) (x_48 x_450 x_106 (pair_1 p_1 x_588)) (cards_0 x_437 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_438 x_437 f_0) (x_82 x_439 x_438 i_0) (x_76 true_0 x_439 k_1) (roomk_0 x_435 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_435 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 (Just_0 f_0) x_100 p_1) (or_0 x_588 x_448 x_449)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_442 x_445 x_450)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_460 Map_0) (x_461 Map_2) (x_462 Map_2) (x_463 Map_3) (x_464 Bool_0) (x_465 Map_2) (x_455 Map_4) (x_456 Map_3) (x_457 Map_2) (x_453 Map_0) (x_451 Maybe_0) (x_100 Map_1) (x_101 Map_0) (x_102 Map_2) (x_103 Map_4) (x_104 Map_0) (x_105 Map_3) (x_106 Map_2) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqMaybe_0 x_451 (Just_0 f_0)) (le_0 p_1 x_92) (x_56 x_460 x_104 (pair_3 p_1 k_1)) (x_82 x_461 x_105 p_1) (add_0 x_462 f_0 x_461) (x_61 x_463 x_105 (pair_7 p_1 x_462)) (x_76 x_464 x_106 p_1) (x_48 x_465 x_106 (pair_1 p_1 x_464)) (cards_0 x_455 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_86 x_456 x_455 f_0) (x_82 x_457 x_456 i_0) (x_76 true_0 x_457 k_1) (roomk_0 x_453 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) (x_79 k_1 x_453 p_1) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_104 x_105 x_106)) x_92 q_2) (x_89 x_451 x_100 p_1)) (reach_1 (Just_1 (State_1 x_100 x_101 x_102 x_103 x_460 x_463 x_465)) x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_467 Map_0) (rk_0 Nat_0) (t_0 State_0) (i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (and (diseqNat_0 rk_0 i_0) (diseqNat_0 rk_0 k_1) (roomk_0 x_467 t_0) (x_79 rk_0 x_467 p_1) (reach_1 (Just_1 t_0) x_92 q_2)) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((i_0 Nat_0) (k_1 Nat_0) (f_0 Nat_0) (p_1 Nat_0) (q_2 Reach_0) (x_92 Nat_0))
	(=> (reach_1 Nothing_1 x_92 q_2) (reach_1 Nothing_1 x_92 (EnterRoom_0 f_0 p_1 (pair_3 i_0 k_1) q_2)))))
(assert (forall ((x_476 Map_1) (x_477 Map_0) (x_478 Map_2) (x_479 Nat_0) (x_480 Map_3) (x_481 Map_3) (x_482 Map_4) (x_483 Map_2) (x_473 Map_2) (x_474 Bool_0) (z_22 Map_1) (x_93 Map_0) (x_94 Map_2) (x_95 Map_4) (x_96 Map_0) (x_97 Map_3) (x_98 Map_2) (g_0 Nat_0) (r_1 Nat_0) (k_0 Nat_0) (q_1 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 r_1 x_92) (diseqBool_0 x_474 true_0) (x_71 x_476 z_22 (pair_5 r_1 (Just_0 g_0))) (x_56 x_477 x_93 (pair_3 r_1 k_0)) (add_0 x_478 k_0 x_94) (x_79 x_479 x_93 r_1) (x_86 x_480 x_95 g_0) (add_1 x_481 (pair_3 x_479 k_0) x_480) (x_66 x_482 x_95 (pair_9 g_0 x_481)) (x_48 x_483 x_98 (pair_1 r_1 false_0)) (issued_0 x_473 (State_1 z_22 x_93 x_94 x_95 x_96 x_97 x_98)) (x_76 x_474 x_473 k_0) (reach_1 (Just_1 (State_1 z_22 x_93 x_94 x_95 x_96 x_97 x_98)) x_92 q_1)) (reach_1 (Just_1 (State_1 x_476 x_477 x_478 x_482 x_96 x_97 x_483)) x_92 (CheckIn_0 g_0 r_1 k_0 q_1)))))
(assert (forall ((s_0 State_0) (g_0 Nat_0) (r_1 Nat_0) (k_0 Nat_0) (q_1 Reach_0) (x_92 Nat_0))
	(=> (and (gt_0 r_1 x_92) (reach_1 (Just_1 s_0) x_92 q_1)) (reach_1 Nothing_1 x_92 (CheckIn_0 g_0 r_1 k_0 q_1)))))
(assert (forall ((x_490 Map_1) (x_491 Map_0) (x_492 Map_2) (x_493 Nat_0) (x_494 Map_3) (x_495 Map_3) (x_496 Map_4) (x_497 Map_2) (x_487 Map_2) (x_488 Bool_0) (z_22 Map_1) (x_93 Map_0) (x_94 Map_2) (x_95 Map_4) (x_96 Map_0) (x_97 Map_3) (x_98 Map_2) (g_0 Nat_0) (r_1 Nat_0) (k_0 Nat_0) (q_1 Reach_0) (x_92 Nat_0))
	(=> (and (le_0 r_1 x_92) (diseqBool_0 x_488 true_0) (x_71 x_490 z_22 (pair_5 r_1 (Just_0 g_0))) (x_56 x_491 x_93 (pair_3 r_1 k_0)) (add_0 x_492 k_0 x_94) (x_79 x_493 x_93 r_1) (x_86 x_494 x_95 g_0) (add_1 x_495 (pair_3 x_493 k_0) x_494) (x_66 x_496 x_95 (pair_9 g_0 x_495)) (x_48 x_497 x_98 (pair_1 r_1 false_0)) (issued_0 x_487 (State_1 z_22 x_93 x_94 x_95 x_96 x_97 x_98)) (x_76 x_488 x_487 k_0) (reach_1 (Just_1 (State_1 z_22 x_93 x_94 x_95 x_96 x_97 x_98)) x_92 q_1)) (reach_1 (Just_1 (State_1 x_490 x_491 x_492 x_496 x_96 x_97 x_497)) x_92 (CheckIn_0 g_0 r_1 k_0 q_1)))))
(assert (forall ((x_499 Map_2) (s_0 State_0) (g_0 Nat_0) (r_1 Nat_0) (k_0 Nat_0) (q_1 Reach_0) (x_92 Nat_0))
	(=> (and (issued_0 x_499 s_0) (x_76 true_0 x_499 k_0) (reach_1 (Just_1 s_0) x_92 q_1)) (reach_1 Nothing_1 x_92 (CheckIn_0 g_0 r_1 k_0 q_1)))))
(assert (forall ((g_0 Nat_0) (r_1 Nat_0) (k_0 Nat_0) (q_1 Reach_0) (x_92 Nat_0))
	(=> (reach_1 Nothing_1 x_92 q_1) (reach_1 Nothing_1 x_92 (CheckIn_0 g_0 r_1 k_0 q_1)))))
(assert (forall ((x_506 Map_2) (x_507 Map_3) (x_508 Map_2) (initk_0 Map_0) (x_92 Nat_0))
	(=> (and (range_0 x_506 initk_0) (empty_0 x_507) (empty_1 x_508) (inj_0 true_0 x_92 initk_0)) (reach_1 (Just_1 (State_1 (Rest_1 Nothing_0) initk_0 x_506 (Rest_4 x_507) initk_0 (Rest_3 x_508) (Rest_2 true_0))) x_92 (Init_0 initk_0)))))
(assert (forall ((x_509 Bool_0) (initk_0 Map_0) (x_92 Nat_0))
	(=> (and (diseqBool_0 x_509 true_0) (inj_0 x_509 x_92 initk_0)) (reach_1 Nothing_1 x_92 (Init_0 initk_0)))))
(assert (forall ((x_516 Map_3) (x_517 Map_2) (x_514 Map_2) (x_511 Map_1) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (le_0 y_42 x_114) (isin_0 x_516 s_2) (x_82 x_517 x_516 y_42) (x_76 true_0 x_517 z_23) (safe_0 x_514 s_2) (x_76 true_0 x_514 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_511 s_2) (x_89 (Just_0 z_23) x_511 y_42)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_525 Map_3) (x_526 Map_2) (x_523 Map_2) (x_520 Map_1) (x_521 Maybe_0) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (diseqMaybe_0 x_521 (Just_0 z_23)) (le_0 y_42 x_114) (isin_0 x_525 s_2) (x_82 x_526 x_525 y_42) (x_76 true_0 x_526 z_23) (safe_0 x_523 s_2) (x_76 true_0 x_523 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_520 s_2) (x_89 x_521 x_520 y_42)) (psafe_0 false_0 x_114 y_42 z_23 x_115))))
(assert (forall ((s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (gt_0 y_42 x_114) (reach_1 (Just_1 s_2) x_114 x_115)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_536 Map_3) (x_537 Map_2) (x_534 Map_2) (x_531 Map_1) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (le_0 y_42 x_114) (isin_0 x_536 s_2) (x_82 x_537 x_536 y_42) (x_76 true_0 x_537 z_23) (safe_0 x_534 s_2) (x_76 true_0 x_534 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_531 s_2) (x_89 (Just_0 z_23) x_531 y_42)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_545 Map_3) (x_546 Map_2) (x_543 Map_2) (x_540 Map_1) (x_541 Maybe_0) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (diseqMaybe_0 x_541 (Just_0 z_23)) (le_0 y_42 x_114) (isin_0 x_545 s_2) (x_82 x_546 x_545 y_42) (x_76 true_0 x_546 z_23) (safe_0 x_543 s_2) (x_76 true_0 x_543 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_540 s_2) (x_89 x_541 x_540 y_42)) (psafe_0 false_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_550 Map_2) (x_551 Bool_0) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (diseqBool_0 x_551 true_0) (safe_0 x_550 s_2) (x_76 x_551 x_550 y_42) (reach_1 (Just_1 s_2) x_114 x_115)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_558 Map_3) (x_559 Map_2) (x_556 Map_2) (x_553 Map_1) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (le_0 y_42 x_114) (isin_0 x_558 s_2) (x_82 x_559 x_558 y_42) (x_76 true_0 x_559 z_23) (safe_0 x_556 s_2) (x_76 true_0 x_556 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_553 s_2) (x_89 (Just_0 z_23) x_553 y_42)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_567 Map_3) (x_568 Map_2) (x_565 Map_2) (x_562 Map_1) (x_563 Maybe_0) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (diseqMaybe_0 x_563 (Just_0 z_23)) (le_0 y_42 x_114) (isin_0 x_567 s_2) (x_82 x_568 x_567 y_42) (x_76 true_0 x_568 z_23) (safe_0 x_565 s_2) (x_76 true_0 x_565 y_42) (reach_1 (Just_1 s_2) x_114 x_115) (owns_0 x_562 s_2) (x_89 x_563 x_562 y_42)) (psafe_0 false_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_572 Map_3) (x_573 Map_2) (x_574 Bool_0) (s_2 State_0) (x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (and (diseqBool_0 x_574 true_0) (isin_0 x_572 s_2) (x_82 x_573 x_572 y_42) (x_76 x_574 x_573 z_23) (reach_1 (Just_1 s_2) x_114 x_115)) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_114 Nat_0) (y_42 Nat_0) (z_23 Nat_0) (x_115 Reach_0))
	(=> (reach_1 Nothing_1 x_114 x_115) (psafe_0 true_0 x_114 y_42 z_23 x_115))))
(assert (forall ((x_581 Bool_0) (dom_0 Nat_0) (r_3 Nat_0) (g_1 Nat_0) (q_4 Reach_0))
	(=> (and (diseqBool_0 x_581 true_0) (psafe_0 x_581 dom_0 r_3 g_1 q_4)) false)))
(check-sat)
(get-model)
