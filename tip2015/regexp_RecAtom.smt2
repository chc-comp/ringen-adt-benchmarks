(set-logic HORN)
(declare-datatypes ((Bool_0 0)) (((false_0 ) (true_0 ))))
(declare-fun diseqBool_0 (Bool_0 Bool_0) Bool)
(declare-fun and_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-fun or_0 (Bool_0 Bool_0 Bool_0) Bool)
(declare-datatypes ((A_0 0)) (((X_0 ) (Y_0 ))))
(declare-datatypes ((R_0 0)) (((Nil_0 ) (Eps_0 ) (Atom_0 (projAtom_0 A_0)) (Plus_0 (projPlus_0 R_0) (projPlus_1 R_0)) (Seq_0 (projSeq_0 R_0) (projSeq_1 R_0)) (Star_0 (projStar_0 R_0)))))
(declare-datatypes ((list_0 0)) (((nil_1 ) (cons_0 (head_0 A_0) (tail_0 list_0)))))
(declare-fun seq_1 (R_0 R_0 R_0) Bool)
(declare-fun plus_1 (R_0 R_0 R_0) Bool)
(declare-fun eqA_0 (Bool_0 A_0 A_0) Bool)
(declare-fun eqList_0 (Bool_0 list_0 list_0) Bool)
(declare-fun eps_1 (Bool_0 R_0) Bool)
(declare-fun epsR_0 (R_0 R_0) Bool)
(declare-fun step_0 (R_0 R_0 A_0) Bool)
(declare-fun recognise_0 (Bool_0 R_0 list_0) Bool)
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
(assert (forall ((y_1 R_0))
	(seq_1 Nil_0 Nil_0 y_1)))
(assert (forall ((x_2 R_0) (x_247 A_0))
	(seq_1 Nil_0 (Atom_0 x_247) Nil_0)))
(assert (forall ((x_2 R_0))
	(seq_1 Nil_0 Eps_0 Nil_0)))
(assert (forall ((x_2 R_0) (x_248 R_0) (x_249 R_0))
	(seq_1 Nil_0 (Plus_0 x_248 x_249) Nil_0)))
(assert (forall ((x_2 R_0) (x_250 R_0) (x_251 R_0))
	(seq_1 Nil_0 (Seq_0 x_250 x_251) Nil_0)))
(assert (forall ((x_2 R_0) (x_252 R_0))
	(seq_1 Nil_0 (Star_0 x_252) Nil_0)))
(assert (forall ((x_3 R_0) (x_61 A_0) (x_2 R_0))
	(seq_1 (Atom_0 x_61) Eps_0 (Atom_0 x_61))))
(assert (forall ((x_3 R_0) (x_2 R_0))
	(seq_1 Eps_0 Eps_0 Eps_0)))
(assert (forall ((x_3 R_0) (x_62 R_0) (x_63 R_0) (x_2 R_0))
	(seq_1 (Plus_0 x_62 x_63) Eps_0 (Plus_0 x_62 x_63))))
(assert (forall ((x_3 R_0) (x_64 R_0) (x_65 R_0) (x_2 R_0))
	(seq_1 (Seq_0 x_64 x_65) Eps_0 (Seq_0 x_64 x_65))))
(assert (forall ((x_3 R_0) (x_66 R_0) (x_2 R_0))
	(seq_1 (Star_0 x_66) Eps_0 (Star_0 x_66))))
(assert (forall ((x_4 R_0) (x_25 A_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Atom_0 x_25) (Atom_0 x_25) Eps_0)))
(assert (forall ((x_4 R_0) (x_26 R_0) (x_27 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Plus_0 x_26 x_27) (Plus_0 x_26 x_27) Eps_0)))
(assert (forall ((x_4 R_0) (x_28 R_0) (x_29 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 x_28 x_29) (Seq_0 x_28 x_29) Eps_0)))
(assert (forall ((x_4 R_0) (x_30 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Star_0 x_30) (Star_0 x_30) Eps_0)))
(assert (forall ((x_5 R_0) (x_19 A_0) (x_4 R_0) (x_31 A_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_31) (Atom_0 x_19)) (Atom_0 x_31) (Atom_0 x_19))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_32 R_0) (x_33 R_0) (x_3 R_0) (x_109 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_32 x_33) (Atom_0 x_109)) (Plus_0 x_32 x_33) (Atom_0 x_109))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_34 R_0) (x_35 R_0) (x_3 R_0) (x_115 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_34 x_35) (Atom_0 x_115)) (Seq_0 x_34 x_35) (Atom_0 x_115))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_36 R_0) (x_3 R_0) (x_121 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Star_0 x_36) (Atom_0 x_121)) (Star_0 x_36) (Atom_0 x_121))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_43 A_0) (x_3 R_0) (x_158 R_0) (x_159 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_43) (Plus_0 x_158 x_159)) (Atom_0 x_43) (Plus_0 x_158 x_159))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_44 R_0) (x_45 R_0) (x_3 R_0) (x_170 R_0) (x_171 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_44 x_45) (Plus_0 x_170 x_171)) (Plus_0 x_44 x_45) (Plus_0 x_170 x_171))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_46 R_0) (x_47 R_0) (x_3 R_0) (x_176 R_0) (x_177 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_46 x_47) (Plus_0 x_176 x_177)) (Seq_0 x_46 x_47) (Plus_0 x_176 x_177))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_48 R_0) (x_3 R_0) (x_182 R_0) (x_183 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Star_0 x_48) (Plus_0 x_182 x_183)) (Star_0 x_48) (Plus_0 x_182 x_183))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_49 A_0) (x_3 R_0) (x_190 R_0) (x_191 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_49) (Seq_0 x_190 x_191)) (Atom_0 x_49) (Seq_0 x_190 x_191))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_50 R_0) (x_51 R_0) (x_3 R_0) (x_202 R_0) (x_203 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_50 x_51) (Seq_0 x_202 x_203)) (Plus_0 x_50 x_51) (Seq_0 x_202 x_203))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_52 R_0) (x_53 R_0) (x_3 R_0) (x_208 R_0) (x_209 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_52 x_53) (Seq_0 x_208 x_209)) (Seq_0 x_52 x_53) (Seq_0 x_208 x_209))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_3 R_0) (x_214 R_0) (x_215 R_0) (x_2 R_0) (x_1026 R_0))
	(seq_1 (Seq_0 (Star_0 x_1026) (Seq_0 x_214 x_215)) (Star_0 x_1026) (Seq_0 x_214 x_215))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_3 R_0) (x_222 R_0) (x_2 R_0) (x_1057 A_0))
	(seq_1 (Seq_0 (Atom_0 x_1057) (Star_0 x_222)) (Atom_0 x_1057) (Star_0 x_222))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_3 R_0) (x_234 R_0) (x_2 R_0) (x_1118 R_0) (x_1119 R_0))
	(seq_1 (Seq_0 (Plus_0 x_1118 x_1119) (Star_0 x_234)) (Plus_0 x_1118 x_1119) (Star_0 x_234))))
(assert (forall ((x_5 R_0) (x_24 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1150 R_0) (x_1151 R_0))
	(seq_1 (Seq_0 (Seq_0 x_1150 x_1151) (Star_0 x_24)) (Seq_0 x_1150 x_1151) (Star_0 x_24))))
(assert (forall ((x_5 R_0) (x_24 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1182 R_0))
	(seq_1 (Seq_0 (Star_0 x_1182) (Star_0 x_24)) (Star_0 x_1182) (Star_0 x_24))))
(assert (forall ((x_2007 R_0))
	(plus_1 x_2007 Nil_0 x_2007)))
(assert (forall ((x_7 R_0) (x_1189 A_0))
	(plus_1 (Atom_0 x_1189) (Atom_0 x_1189) Nil_0)))
(assert (forall ((x_7 R_0))
	(plus_1 Eps_0 Eps_0 Nil_0)))
(assert (forall ((x_7 R_0) (x_1190 R_0) (x_1191 R_0))
	(plus_1 (Plus_0 x_1190 x_1191) (Plus_0 x_1190 x_1191) Nil_0)))
(assert (forall ((x_7 R_0) (x_1192 R_0) (x_1193 R_0))
	(plus_1 (Seq_0 x_1192 x_1193) (Seq_0 x_1192 x_1193) Nil_0)))
(assert (forall ((x_7 R_0) (x_1194 R_0))
	(plus_1 (Star_0 x_1194) (Star_0 x_1194) Nil_0)))
(assert (forall ((x_8 R_0) (x_1183 A_0) (x_7 R_0) (x_1195 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1195) (Atom_0 x_1183)) (Atom_0 x_1195) (Atom_0 x_1183))))
(assert (forall ((x_8 R_0) (x_1183 A_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Atom_0 x_1183)) Eps_0 (Atom_0 x_1183))))
(assert (forall ((x_8 R_0) (x_1183 A_0) (x_7 R_0) (x_1196 R_0) (x_1197 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1196 x_1197) (Atom_0 x_1183)) (Plus_0 x_1196 x_1197) (Atom_0 x_1183))))
(assert (forall ((x_8 R_0) (x_1183 A_0) (x_7 R_0) (x_1198 R_0) (x_1199 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1198 x_1199) (Atom_0 x_1183)) (Seq_0 x_1198 x_1199) (Atom_0 x_1183))))
(assert (forall ((x_8 R_0) (x_1183 A_0) (x_7 R_0) (x_1200 R_0))
	(plus_1 (Plus_0 (Star_0 x_1200) (Atom_0 x_1183)) (Star_0 x_1200) (Atom_0 x_1183))))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1201 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1201) Eps_0) (Atom_0 x_1201) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 Eps_0) Eps_0 Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1202 R_0) (x_1203 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1202 x_1203) Eps_0) (Plus_0 x_1202 x_1203) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1204 R_0) (x_1205 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1204 x_1205) Eps_0) (Seq_0 x_1204 x_1205) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1206 R_0))
	(plus_1 (Plus_0 (Star_0 x_1206) Eps_0) (Star_0 x_1206) Eps_0)))
(assert (forall ((x_8 R_0) (x_1184 R_0) (x_1185 R_0) (x_7 R_0) (x_1207 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1207) (Plus_0 x_1184 x_1185)) (Atom_0 x_1207) (Plus_0 x_1184 x_1185))))
(assert (forall ((x_8 R_0) (x_1184 R_0) (x_1185 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Plus_0 x_1184 x_1185)) Eps_0 (Plus_0 x_1184 x_1185))))
(assert (forall ((x_8 R_0) (x_1184 R_0) (x_1185 R_0) (x_7 R_0) (x_1208 R_0) (x_1209 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1208 x_1209) (Plus_0 x_1184 x_1185)) (Plus_0 x_1208 x_1209) (Plus_0 x_1184 x_1185))))
(assert (forall ((x_8 R_0) (x_1184 R_0) (x_1185 R_0) (x_7 R_0) (x_1210 R_0) (x_1211 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1210 x_1211) (Plus_0 x_1184 x_1185)) (Seq_0 x_1210 x_1211) (Plus_0 x_1184 x_1185))))
(assert (forall ((x_8 R_0) (x_1184 R_0) (x_1185 R_0) (x_7 R_0) (x_1212 R_0))
	(plus_1 (Plus_0 (Star_0 x_1212) (Plus_0 x_1184 x_1185)) (Star_0 x_1212) (Plus_0 x_1184 x_1185))))
(assert (forall ((x_8 R_0) (x_1186 R_0) (x_1187 R_0) (x_7 R_0) (x_1213 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1213) (Seq_0 x_1186 x_1187)) (Atom_0 x_1213) (Seq_0 x_1186 x_1187))))
(assert (forall ((x_8 R_0) (x_1186 R_0) (x_1187 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Seq_0 x_1186 x_1187)) Eps_0 (Seq_0 x_1186 x_1187))))
(assert (forall ((x_8 R_0) (x_1186 R_0) (x_1187 R_0) (x_7 R_0) (x_1214 R_0) (x_1215 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1214 x_1215) (Seq_0 x_1186 x_1187)) (Plus_0 x_1214 x_1215) (Seq_0 x_1186 x_1187))))
(assert (forall ((x_8 R_0) (x_1186 R_0) (x_1187 R_0) (x_7 R_0) (x_1216 R_0) (x_1217 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1216 x_1217) (Seq_0 x_1186 x_1187)) (Seq_0 x_1216 x_1217) (Seq_0 x_1186 x_1187))))
(assert (forall ((x_8 R_0) (x_1186 R_0) (x_1187 R_0) (x_7 R_0) (x_1218 R_0))
	(plus_1 (Plus_0 (Star_0 x_1218) (Seq_0 x_1186 x_1187)) (Star_0 x_1218) (Seq_0 x_1186 x_1187))))
(assert (forall ((x_8 R_0) (x_1188 R_0) (x_7 R_0) (x_1219 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1219) (Star_0 x_1188)) (Atom_0 x_1219) (Star_0 x_1188))))
(assert (forall ((x_8 R_0) (x_1188 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Star_0 x_1188)) Eps_0 (Star_0 x_1188))))
(assert (forall ((x_8 R_0) (x_1188 R_0) (x_7 R_0) (x_1220 R_0) (x_1221 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1220 x_1221) (Star_0 x_1188)) (Plus_0 x_1220 x_1221) (Star_0 x_1188))))
(assert (forall ((x_8 R_0) (x_1188 R_0) (x_7 R_0) (x_1222 R_0) (x_1223 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1222 x_1223) (Star_0 x_1188)) (Seq_0 x_1222 x_1223) (Star_0 x_1188))))
(assert (forall ((x_8 R_0) (x_1188 R_0) (x_7 R_0) (x_1224 R_0))
	(plus_1 (Plus_0 (Star_0 x_1224) (Star_0 x_1188)) (Star_0 x_1224) (Star_0 x_1188))))
(assert (eqA_0 true_0 Y_0 Y_0))
(assert (eqA_0 false_0 Y_0 X_0))
(assert (eqA_0 false_0 X_0 Y_0))
(assert (eqA_0 true_0 X_0 X_0))
(assert (forall ((x_2042 Bool_0) (x_2043 Bool_0) (x_2044 Bool_0) (y_5 A_0) (ys_0 list_0) (x_12 A_0) (xs_0 list_0))
	(=> (and (eqA_0 x_2043 x_12 y_5) (eqList_0 x_2044 xs_0 ys_0) (and_0 x_2042 x_2043 x_2044)) (eqList_0 x_2042 (cons_0 x_12 xs_0) (cons_0 y_5 ys_0)))))
(assert (forall ((x_12 A_0) (xs_0 list_0))
	(eqList_0 false_0 (cons_0 x_12 xs_0) nil_1)))
(assert (forall ((z_0 A_0) (x_11 list_0))
	(eqList_0 false_0 nil_1 (cons_0 z_0 x_11))))
(assert (eqList_0 true_0 nil_1 nil_1))
(assert (forall ((y_6 R_0))
	(eps_1 true_0 (Star_0 y_6))))
(assert (forall ((x_2049 Bool_0) (x_2050 Bool_0) (x_2051 Bool_0) (r_1 R_0) (q_1 R_0))
	(=> (and (eps_1 x_2050 r_1) (eps_1 x_2051 q_1) (and_0 x_2049 x_2050 x_2051)) (eps_1 x_2049 (Seq_0 r_1 q_1)))))
(assert (forall ((x_2052 Bool_0) (x_2053 Bool_0) (x_2054 Bool_0) (p_0 R_0) (q_0 R_0))
	(=> (and (eps_1 x_2053 p_0) (eps_1 x_2054 q_0) (or_0 x_2052 x_2053 x_2054)) (eps_1 x_2052 (Plus_0 p_0 q_0)))))
(assert (eps_1 true_0 Eps_0))
(assert (forall ((x_14 R_0) (x_1225 A_0))
	(eps_1 false_0 (Atom_0 x_1225))))
(assert (forall ((x_14 R_0))
	(eps_1 false_0 Nil_0)))
(assert (forall ((x_15 R_0))
	(=> (eps_1 true_0 x_15) (epsR_0 Eps_0 x_15))))
(assert (forall ((x_2060 Bool_0) (x_15 R_0))
	(=> (and (diseqBool_0 x_2060 true_0) (eps_1 x_2060 x_15)) (epsR_0 Nil_0 x_15))))
(assert (forall ((x_2062 R_0) (x_2063 R_0) (p_2 R_0) (y_7 A_0))
	(=> (and (step_0 x_2063 p_2 y_7) (seq_1 x_2062 x_2063 (Star_0 p_2))) (step_0 x_2062 (Star_0 p_2) y_7))))
(assert (forall ((x_2065 R_0) (x_2066 R_0) (x_2067 R_0) (x_2068 R_0) (x_2069 R_0) (x_2070 R_0) (r_2 R_0) (q_3 R_0) (y_7 A_0))
	(=> (and (step_0 x_2066 r_2 y_7) (seq_1 x_2067 x_2066 q_3) (epsR_0 x_2068 r_2) (step_0 x_2069 q_3 y_7) (seq_1 x_2070 x_2068 x_2069) (plus_1 x_2065 x_2067 x_2070)) (step_0 x_2065 (Seq_0 r_2 q_3) y_7))))
(assert (forall ((x_2072 R_0) (x_2073 R_0) (x_2074 R_0) (p_1 R_0) (q_2 R_0) (y_7 A_0))
	(=> (and (step_0 x_2073 p_1 y_7) (step_0 x_2074 q_2 y_7) (plus_1 x_2072 x_2073 x_2074)) (step_0 x_2072 (Plus_0 p_1 q_2) y_7))))
(assert (forall ((a_1 A_0) (y_7 A_0))
	(=> (eqA_0 true_0 a_1 y_7) (step_0 Eps_0 (Atom_0 a_1) y_7))))
(assert (forall ((x_2078 Bool_0) (a_1 A_0) (y_7 A_0))
	(=> (and (diseqBool_0 x_2078 true_0) (eqA_0 x_2078 a_1 y_7)) (step_0 Nil_0 (Atom_0 a_1) y_7))))
(assert (forall ((x_17 R_0) (y_7 A_0))
	(step_0 Nil_0 Eps_0 y_7)))
(assert (forall ((x_17 R_0) (y_7 A_0))
	(step_0 Nil_0 Nil_0 y_7)))
(assert (forall ((x_2082 Bool_0) (x_2083 R_0) (z_1 A_0) (xs_1 list_0) (x_18 R_0))
	(=> (and (step_0 x_2083 x_18 z_1) (recognise_0 x_2082 x_2083 xs_1)) (recognise_0 x_2082 x_18 (cons_0 z_1 xs_1)))))
(assert (forall ((x_2085 Bool_0) (x_18 R_0))
	(=> (eps_1 x_2085 x_18) (recognise_0 x_2085 x_18 nil_1))))
(assert (forall ((x_2087 Bool_0) (x_2088 Bool_0) (a_2 A_0) (s_0 list_0))
	(=> (and (diseqBool_0 x_2087 x_2088) (recognise_0 x_2087 (Atom_0 a_2) s_0) (eqList_0 x_2088 s_0 (cons_0 a_2 nil_1))) false)))
(check-sat)
(get-model)
