(deffacts apilar
;(bloques A B C D E)
(pila 1 C B A)
(pila 2 D E)
(brazo 0 0);bloque llevando
(pedido1 D B E A)
(pedido2 C) 
)

(defrule recoger_bloque_A
(declare (salience 25))
    (brazo ?b ?l)
    (pedido1 $?x ?bp $?y)
    (pila ?n $?px ?pb $?py)
    (test (eq A ?bp))
    (test (eq ?pb ?bp))
    =>
    (assert(brazo ?pb (+ ?l 1)))
    (assert(pila ?n $?px ?pb $?py))
    (printout t "Recojo el bloque A" crlf)
)

(defrule dejar_bloque
(declare (salience 50))
    (brazo ?b ?l)
    (pedido1 $?x ?bp $?y)
    (pila ?n $?px ?pb $?py)
    (test (= ?l 1))
    (test (eq ?pb ?bp))
    (test (eq ?b ?bp))
    =>
    (assert(pila ?n $?px $?py))
    (assert(brazo 0 0))
    (printout t "Bloque dejado" crlf)
)