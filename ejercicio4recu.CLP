(deffacts apilar
;(bloques A B C D E)
(pila1 C B A)
(pila2 D E)
(brazo 0 0);bloque llevando
(pedido1 D B E A)
(pedido2 C) 
)

(defrule recoger_bloque_A
(declare (salience 25))
    (brazo ?b ?l)
    (pedido1 $?x ?bp $?y)

    =>
    (assert(brazo A (+ ?l 1)))
    (assert(pila ))
    (printout t "Recojo el bloque A" crlf)
)