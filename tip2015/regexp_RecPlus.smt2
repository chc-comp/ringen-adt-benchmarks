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
(assert (forall ((x_2 R_0) (x_244 A_0))
	(seq_1 Nil_0 (Atom_0 x_244) Nil_0)))
(assert (forall ((x_2 R_0))
	(seq_1 Nil_0 Eps_0 Nil_0)))
(assert (forall ((x_2 R_0) (x_245 R_0) (x_246 R_0))
	(seq_1 Nil_0 (Plus_0 x_245 x_246) Nil_0)))
(assert (forall ((x_2 R_0) (x_247 R_0) (x_248 R_0))
	(seq_1 Nil_0 (Seq_0 x_247 x_248) Nil_0)))
(assert (forall ((x_2 R_0) (x_249 R_0))
	(seq_1 Nil_0 (Star_0 x_249) Nil_0)))
(assert (forall ((x_3 R_0) (x_58 A_0) (x_2 R_0))
	(seq_1 (Atom_0 x_58) Eps_0 (Atom_0 x_58))))
(assert (forall ((x_3 R_0) (x_2 R_0))
	(seq_1 Eps_0 Eps_0 Eps_0)))
(assert (forall ((x_3 R_0) (x_59 R_0) (x_60 R_0) (x_2 R_0))
	(seq_1 (Plus_0 x_59 x_60) Eps_0 (Plus_0 x_59 x_60))))
(assert (forall ((x_3 R_0) (x_61 R_0) (x_62 R_0) (x_2 R_0))
	(seq_1 (Seq_0 x_61 x_62) Eps_0 (Seq_0 x_61 x_62))))
(assert (forall ((x_3 R_0) (x_63 R_0) (x_2 R_0))
	(seq_1 (Star_0 x_63) Eps_0 (Star_0 x_63))))
(assert (forall ((x_4 R_0) (x_22 A_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Atom_0 x_22) (Atom_0 x_22) Eps_0)))
(assert (forall ((x_4 R_0) (x_23 R_0) (x_24 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Plus_0 x_23 x_24) (Plus_0 x_23 x_24) Eps_0)))
(assert (forall ((x_4 R_0) (x_25 R_0) (x_26 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 x_25 x_26) (Seq_0 x_25 x_26) Eps_0)))
(assert (forall ((x_4 R_0) (x_27 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Star_0 x_27) (Star_0 x_27) Eps_0)))
(assert (forall ((x_5 R_0) (x_16 A_0) (x_4 R_0) (x_28 A_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_28) (Atom_0 x_16)) (Atom_0 x_28) (Atom_0 x_16))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_29 R_0) (x_30 R_0) (x_3 R_0) (x_106 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_29 x_30) (Atom_0 x_106)) (Plus_0 x_29 x_30) (Atom_0 x_106))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_31 R_0) (x_32 R_0) (x_3 R_0) (x_112 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_31 x_32) (Atom_0 x_112)) (Seq_0 x_31 x_32) (Atom_0 x_112))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_33 R_0) (x_3 R_0) (x_118 A_0) (x_2 R_0))
	(seq_1 (Seq_0 (Star_0 x_33) (Atom_0 x_118)) (Star_0 x_33) (Atom_0 x_118))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_40 A_0) (x_3 R_0) (x_155 R_0) (x_156 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_40) (Plus_0 x_155 x_156)) (Atom_0 x_40) (Plus_0 x_155 x_156))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_41 R_0) (x_42 R_0) (x_3 R_0) (x_167 R_0) (x_168 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_41 x_42) (Plus_0 x_167 x_168)) (Plus_0 x_41 x_42) (Plus_0 x_167 x_168))))
(assert (forall ((x_5 R_0) (x_17 R_0) (x_4 R_0) (x_43 R_0) (x_44 R_0) (x_3 R_0) (x_174 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_43 x_44) (Plus_0 x_17 x_174)) (Seq_0 x_43 x_44) (Plus_0 x_17 x_174))))
(assert (forall ((x_5 R_0) (x_17 R_0) (x_18 R_0) (x_4 R_0) (x_45 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Star_0 x_45) (Plus_0 x_17 x_18)) (Star_0 x_45) (Plus_0 x_17 x_18))))
(assert (forall ((x_5 R_0) (x_4 R_0) (x_46 A_0) (x_3 R_0) (x_187 R_0) (x_188 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Atom_0 x_46) (Seq_0 x_187 x_188)) (Atom_0 x_46) (Seq_0 x_187 x_188))))
(assert (forall ((x_5 R_0) (x_19 R_0) (x_20 R_0) (x_4 R_0) (x_47 R_0) (x_48 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Plus_0 x_47 x_48) (Seq_0 x_19 x_20)) (Plus_0 x_47 x_48) (Seq_0 x_19 x_20))))
(assert (forall ((x_5 R_0) (x_19 R_0) (x_20 R_0) (x_4 R_0) (x_49 R_0) (x_50 R_0) (x_3 R_0) (x_2 R_0))
	(seq_1 (Seq_0 (Seq_0 x_49 x_50) (Seq_0 x_19 x_20)) (Seq_0 x_49 x_50) (Seq_0 x_19 x_20))))
(assert (forall ((x_5 R_0) (x_19 R_0) (x_20 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1023 R_0))
	(seq_1 (Seq_0 (Star_0 x_1023) (Seq_0 x_19 x_20)) (Star_0 x_1023) (Seq_0 x_19 x_20))))
(assert (forall ((x_5 R_0) (x_21 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1054 A_0))
	(seq_1 (Seq_0 (Atom_0 x_1054) (Star_0 x_21)) (Atom_0 x_1054) (Star_0 x_21))))
(assert (forall ((x_5 R_0) (x_21 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1115 R_0) (x_1116 R_0))
	(seq_1 (Seq_0 (Plus_0 x_1115 x_1116) (Star_0 x_21)) (Plus_0 x_1115 x_1116) (Star_0 x_21))))
(assert (forall ((x_5 R_0) (x_21 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1147 R_0) (x_1148 R_0))
	(seq_1 (Seq_0 (Seq_0 x_1147 x_1148) (Star_0 x_21)) (Seq_0 x_1147 x_1148) (Star_0 x_21))))
(assert (forall ((x_5 R_0) (x_21 R_0) (x_4 R_0) (x_3 R_0) (x_2 R_0) (x_1179 R_0))
	(seq_1 (Seq_0 (Star_0 x_1179) (Star_0 x_21)) (Star_0 x_1179) (Star_0 x_21))))
(assert (forall ((x_2004 R_0))
	(plus_1 x_2004 Nil_0 x_2004)))
(assert (forall ((x_7 R_0) (x_1186 A_0))
	(plus_1 (Atom_0 x_1186) (Atom_0 x_1186) Nil_0)))
(assert (forall ((x_7 R_0))
	(plus_1 Eps_0 Eps_0 Nil_0)))
(assert (forall ((x_7 R_0) (x_1187 R_0) (x_1188 R_0))
	(plus_1 (Plus_0 x_1187 x_1188) (Plus_0 x_1187 x_1188) Nil_0)))
(assert (forall ((x_7 R_0) (x_1189 R_0) (x_1190 R_0))
	(plus_1 (Seq_0 x_1189 x_1190) (Seq_0 x_1189 x_1190) Nil_0)))
(assert (forall ((x_7 R_0) (x_1191 R_0))
	(plus_1 (Star_0 x_1191) (Star_0 x_1191) Nil_0)))
(assert (forall ((x_8 R_0) (x_1180 A_0) (x_7 R_0) (x_1192 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1192) (Atom_0 x_1180)) (Atom_0 x_1192) (Atom_0 x_1180))))
(assert (forall ((x_8 R_0) (x_1180 A_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Atom_0 x_1180)) Eps_0 (Atom_0 x_1180))))
(assert (forall ((x_8 R_0) (x_1180 A_0) (x_7 R_0) (x_1193 R_0) (x_1194 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1193 x_1194) (Atom_0 x_1180)) (Plus_0 x_1193 x_1194) (Atom_0 x_1180))))
(assert (forall ((x_8 R_0) (x_1180 A_0) (x_7 R_0) (x_1195 R_0) (x_1196 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1195 x_1196) (Atom_0 x_1180)) (Seq_0 x_1195 x_1196) (Atom_0 x_1180))))
(assert (forall ((x_8 R_0) (x_1180 A_0) (x_7 R_0) (x_1197 R_0))
	(plus_1 (Plus_0 (Star_0 x_1197) (Atom_0 x_1180)) (Star_0 x_1197) (Atom_0 x_1180))))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1198 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1198) Eps_0) (Atom_0 x_1198) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 Eps_0) Eps_0 Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1199 R_0) (x_1200 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1199 x_1200) Eps_0) (Plus_0 x_1199 x_1200) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1201 R_0) (x_1202 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1201 x_1202) Eps_0) (Seq_0 x_1201 x_1202) Eps_0)))
(assert (forall ((x_8 R_0) (x_7 R_0) (x_1203 R_0))
	(plus_1 (Plus_0 (Star_0 x_1203) Eps_0) (Star_0 x_1203) Eps_0)))
(assert (forall ((x_8 R_0) (x_1181 R_0) (x_1182 R_0) (x_7 R_0) (x_1204 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1204) (Plus_0 x_1181 x_1182)) (Atom_0 x_1204) (Plus_0 x_1181 x_1182))))
(assert (forall ((x_8 R_0) (x_1181 R_0) (x_1182 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Plus_0 x_1181 x_1182)) Eps_0 (Plus_0 x_1181 x_1182))))
(assert (forall ((x_8 R_0) (x_1181 R_0) (x_1182 R_0) (x_7 R_0) (x_1205 R_0) (x_1206 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1205 x_1206) (Plus_0 x_1181 x_1182)) (Plus_0 x_1205 x_1206) (Plus_0 x_1181 x_1182))))
(assert (forall ((x_8 R_0) (x_1181 R_0) (x_1182 R_0) (x_7 R_0) (x_1207 R_0) (x_1208 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1207 x_1208) (Plus_0 x_1181 x_1182)) (Seq_0 x_1207 x_1208) (Plus_0 x_1181 x_1182))))
(assert (forall ((x_8 R_0) (x_1181 R_0) (x_1182 R_0) (x_7 R_0) (x_1209 R_0))
	(plus_1 (Plus_0 (Star_0 x_1209) (Plus_0 x_1181 x_1182)) (Star_0 x_1209) (Plus_0 x_1181 x_1182))))
(assert (forall ((x_8 R_0) (x_1183 R_0) (x_1184 R_0) (x_7 R_0) (x_1210 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1210) (Seq_0 x_1183 x_1184)) (Atom_0 x_1210) (Seq_0 x_1183 x_1184))))
(assert (forall ((x_8 R_0) (x_1183 R_0) (x_1184 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Seq_0 x_1183 x_1184)) Eps_0 (Seq_0 x_1183 x_1184))))
(assert (forall ((x_8 R_0) (x_1183 R_0) (x_1184 R_0) (x_7 R_0) (x_1211 R_0) (x_1212 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1211 x_1212) (Seq_0 x_1183 x_1184)) (Plus_0 x_1211 x_1212) (Seq_0 x_1183 x_1184))))
(assert (forall ((x_8 R_0) (x_1183 R_0) (x_1184 R_0) (x_7 R_0) (x_1213 R_0) (x_1214 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1213 x_1214) (Seq_0 x_1183 x_1184)) (Seq_0 x_1213 x_1214) (Seq_0 x_1183 x_1184))))
(assert (forall ((x_8 R_0) (x_1183 R_0) (x_1184 R_0) (x_7 R_0) (x_1215 R_0))
	(plus_1 (Plus_0 (Star_0 x_1215) (Seq_0 x_1183 x_1184)) (Star_0 x_1215) (Seq_0 x_1183 x_1184))))
(assert (forall ((x_8 R_0) (x_1185 R_0) (x_7 R_0) (x_1216 A_0))
	(plus_1 (Plus_0 (Atom_0 x_1216) (Star_0 x_1185)) (Atom_0 x_1216) (Star_0 x_1185))))
(assert (forall ((x_8 R_0) (x_1185 R_0) (x_7 R_0))
	(plus_1 (Plus_0 Eps_0 (Star_0 x_1185)) Eps_0 (Star_0 x_1185))))
(assert (forall ((x_8 R_0) (x_1185 R_0) (x_7 R_0) (x_1217 R_0) (x_1218 R_0))
	(plus_1 (Plus_0 (Plus_0 x_1217 x_1218) (Star_0 x_1185)) (Plus_0 x_1217 x_1218) (Star_0 x_1185))))
(assert (forall ((x_8 R_0) (x_1185 R_0) (x_7 R_0) (x_1219 R_0) (x_1220 R_0))
	(plus_1 (Plus_0 (Seq_0 x_1219 x_1220) (Star_0 x_1185)) (Seq_0 x_1219 x_1220) (Star_0 x_1185))))
(assert (forall ((x_8 R_0) (x_1185 R_0) (x_7 R_0) (x_1221 R_0))
	(plus_1 (Plus_0 (Star_0 x_1221) (Star_0 x_1185)) (Star_0 x_1221) (Star_0 x_1185))))
(assert (eqA_0 true_0 Y_0 Y_0))
(assert (eqA_0 false_0 Y_0 X_0))
(assert (eqA_0 false_0 X_0 Y_0))
(assert (eqA_0 true_0 X_0 X_0))
(assert (forall ((y_4 R_0))
	(eps_1 true_0 (Star_0 y_4))))
(assert (forall ((x_2040 Bool_0) (x_2041 Bool_0) (x_2042 Bool_0) (r_1 R_0) (q_1 R_0))
	(=> (and (eps_1 x_2041 r_1) (eps_1 x_2042 q_1) (and_0 x_2040 x_2041 x_2042)) (eps_1 x_2040 (Seq_0 r_1 q_1)))))
(assert (forall ((x_2043 Bool_0) (x_2044 Bool_0) (x_2045 Bool_0) (p_0 R_0) (q_0 R_0))
	(=> (and (eps_1 x_2044 p_0) (eps_1 x_2045 q_0) (or_0 x_2043 x_2044 x_2045)) (eps_1 x_2043 (Plus_0 p_0 q_0)))))
(assert (eps_1 true_0 Eps_0))
(assert (forall ((x_11 R_0) (x_1222 A_0))
	(eps_1 false_0 (Atom_0 x_1222))))
(assert (forall ((x_11 R_0))
	(eps_1 false_0 Nil_0)))
(assert (forall ((x_12 R_0))
	(=> (eps_1 true_0 x_12) (epsR_0 Eps_0 x_12))))
(assert (forall ((x_2051 Bool_0) (x_12 R_0))
	(=> (and (diseqBool_0 x_2051 true_0) (eps_1 x_2051 x_12)) (epsR_0 Nil_0 x_12))))
(assert (forall ((x_2053 R_0) (x_2054 R_0) (p_2 R_0) (y_5 A_0))
	(=> (and (step_0 x_2054 p_2 y_5) (seq_1 x_2053 x_2054 (Star_0 p_2))) (step_0 x_2053 (Star_0 p_2) y_5))))
(assert (forall ((x_2056 R_0) (x_2057 R_0) (x_2058 R_0) (x_2059 R_0) (x_2060 R_0) (x_2061 R_0) (r_2 R_0) (q_3 R_0) (y_5 A_0))
	(=> (and (step_0 x_2057 r_2 y_5) (seq_1 x_2058 x_2057 q_3) (epsR_0 x_2059 r_2) (step_0 x_2060 q_3 y_5) (seq_1 x_2061 x_2059 x_2060) (plus_1 x_2056 x_2058 x_2061)) (step_0 x_2056 (Seq_0 r_2 q_3) y_5))))
(assert (forall ((x_2063 R_0) (x_2064 R_0) (x_2065 R_0) (p_1 R_0) (q_2 R_0) (y_5 A_0))
	(=> (and (step_0 x_2064 p_1 y_5) (step_0 x_2065 q_2 y_5) (plus_1 x_2063 x_2064 x_2065)) (step_0 x_2063 (Plus_0 p_1 q_2) y_5))))
(assert (forall ((a_1 A_0) (y_5 A_0))
	(=> (eqA_0 true_0 a_1 y_5) (step_0 Eps_0 (Atom_0 a_1) y_5))))
(assert (forall ((x_2069 Bool_0) (a_1 A_0) (y_5 A_0))
	(=> (and (diseqBool_0 x_2069 true_0) (eqA_0 x_2069 a_1 y_5)) (step_0 Nil_0 (Atom_0 a_1) y_5))))
(assert (forall ((x_14 R_0) (y_5 A_0))
	(step_0 Nil_0 Eps_0 y_5)))
(assert (forall ((x_14 R_0) (y_5 A_0))
	(step_0 Nil_0 Nil_0 y_5)))
(assert (forall ((x_2073 Bool_0) (x_2074 R_0) (z_0 A_0) (xs_0 list_0) (x_15 R_0))
	(=> (and (step_0 x_2074 x_15 z_0) (recognise_0 x_2073 x_2074 xs_0)) (recognise_0 x_2073 x_15 (cons_0 z_0 xs_0)))))
(assert (forall ((x_2076 Bool_0) (x_15 R_0))
	(=> (eps_1 x_2076 x_15) (recognise_0 x_2076 x_15 nil_1))))
(assert (forall ((x_2083 Bool_0) (x_2078 Bool_0) (x_2079 Bool_0) (x_2080 Bool_0) (p_3 R_0) (q_4 R_0) (s_0 list_0))
	(=> (and (diseqBool_0 x_2078 x_2083) (recognise_0 x_2078 (Plus_0 p_3 q_4) s_0) (recognise_0 x_2079 p_3 s_0) (recognise_0 x_2080 q_4 s_0) (or_0 x_2083 x_2079 x_2080)) false)))
(check-sat)
(get-model)
