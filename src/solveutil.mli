(* Some utility functions for the solver *)

val subtype: t1:Cil.typ -> q1:Ptrnode.opointerkind -> 
             t2:Cil.typ -> q2:Ptrnode.opointerkind -> bool


(* are the given two types congurent? see infer.tex 
 * also remember that two wild pointers are always considered congruent *)
val type_congruent: t1:Cil.typ -> q1:Ptrnode.opointerkind ->
                    t2:Cil.typ -> q2:Ptrnode.opointerkind -> bool


(* a predicate to determine if a polymorphic function call is involved *)
val is_p: n:Ptrnode.node -> other_n:Ptrnode.node -> bool 



(* This "solver" turns almost all nodes WILD *)
val wild_solve: node_ht:(int,Ptrnode.node) Hashtbl.t -> unit


(* table all the interface nodes in the graph *)
val table_interface: node_ht:(int,Ptrnode.node) Hashtbl.t -> unit

(* table every node in the graph *)
val table_it_all: node_ht:(int,Ptrnode.node) Hashtbl.t -> unit
