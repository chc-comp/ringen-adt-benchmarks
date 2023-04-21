(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_2 ) (Z_3 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-datatypes ((pair_2 0)) (((pair_3 (projpair_2 Nat_0) (projpair_3 Nat_0)))))
(declare-fun diseqpair_1 (pair_2 pair_2) Bool)
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_2) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-datatypes ((list_3 0)) (((nil_3 ) (cons_3 (head_3 Nat_0) (tail_3 list_3)))))
(declare-fun zip_1 (list_2 list_3 list_0) Bool)
(assert (forall ((x_96 Nat_0))
	(diseqNat_0 Z_2 (Z_3 x_96))))
(assert (forall ((x_97 Nat_0))
	(diseqNat_0 (Z_3 x_97) Z_2)))
(assert (forall ((x_98 Nat_0) (x_99 Nat_0))
	(=> (diseqNat_0 x_98 x_99) (diseqNat_0 (Z_3 x_98) (Z_3 x_99)))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0))
	(=> (diseqNat_0 x_32 x_34) (diseqpair_1 (pair_3 x_32 x_33) (pair_3 x_34 x_35)))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0))
	(=> (diseqNat_0 x_33 x_35) (diseqpair_1 (pair_3 x_32 x_33) (pair_3 x_34 x_35)))))
(assert (forall ((x_70 pair_2) (x_71 list_2))
	(diseqlist_2 nil_2 (cons_2 x_70 x_71))))
(assert (forall ((x_72 pair_2) (x_73 list_2))
	(diseqlist_2 (cons_2 x_72 x_73) nil_2)))
(assert (forall ((x_74 pair_2) (x_75 list_2) (x_76 pair_2) (x_77 list_2))
	(=> (diseqpair_1 x_74 x_76) (diseqlist_2 (cons_2 x_74 x_75) (cons_2 x_76 x_77)))))
(assert (forall ((x_74 pair_2) (x_75 list_2) (x_76 pair_2) (x_77 list_2))
	(=> (diseqlist_2 x_75 x_77) (diseqlist_2 (cons_2 x_74 x_75) (cons_2 x_76 x_77)))))
(assert (forall ((x_13 list_2) (x_6 Nat_0) (x_7 list_0) (z_1 Nat_0) (x_5 list_3))
	(=> (zip_1 x_13 x_5 x_7) (zip_1 (cons_2 (pair_3 z_1 x_6) x_13) (cons_3 z_1 x_5) (cons_0 x_6 x_7)))))
(assert (forall ((z_1 Nat_0) (x_5 list_3))
	(zip_1 nil_2 (cons_3 z_1 x_5) nil_0)))
(assert (forall ((y_1 list_0))
	(zip_1 nil_2 nil_3 y_1)))
(assert (forall ((x_16 list_2) (xs_0 list_0))
	(=> (and (diseqlist_2 x_16 nil_2) (zip_1 x_16 nil_3 xs_0)) false)))
(check-sat)
(get-model)
