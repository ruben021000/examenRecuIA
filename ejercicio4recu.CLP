(deffacts apilar
;(bloques A B C D E)
(pila 1 C B A)
(pila 2 D E)
(brazo 0 0);bloque llevando
(pedido 1 D B E A)
(pedido 2 C)
(mesa 1 0 0 0 0 0 0)
(mesa 2 0 0 0 0 0 0) 
)

(defrule recoger_bloque_A
(declare (salience 25))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (pila ?n $?px ?bloque $?py)
    (test (eq A ?bloque_pedido))
    (test (eq ?bloque ?bloque_pedido))
    (test (= ?l 0))
    =>
    (assert(brazo ?bloque (+ ?l 1)))
    (assert(pila ?n $?px $?py))
    (printout t "Recojo el bloque A" crlf)
)

(defrule recoger_bloque_B
(declare (salience 25))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (pila ?n $?px ?bloque $?py)
    (test (eq B ?bloque_pedido))
    (test (eq ?bloque ?bloque_pedido))
    (test (= ?l 0))
    =>
    (assert(brazo ?bloque (+ ?l 1)))
    (assert(pila ?n $?px $?py))
    (printout t "Recojo el bloque B" crlf)
)

(defrule recoger_bloque_C
(declare (salience 25))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (pila ?n $?px ?bloque $?py)
    (test (eq C ?bloque_pedido))
    (test (eq ?bloque ?bloque_pedido))
    (test (= ?l 0))
    =>
    (assert(brazo ?bloque (+ ?l 1)))
    (assert(pila ?n $?px $?py))
    (printout t "Recojo el bloque C" crlf)
)

(defrule recoger_bloque_D
(declare (salience 25))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (pila ?n $?px ?bloque $?py)
    (test (eq D ?bloque_pedido))
    (test (eq ?bloque ?bloque_pedido))
    (test (= ?l 0))
    =>
    (assert(brazo ?bloque (+ ?l 1)))
    (assert(pila ?n $?px $?py))
    (printout t "Recojo el bloque D" crlf)
)

(defrule recoger_bloque_E
(declare (salience 25))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (pila ?n $?px ?bloque $?py)
    (test (eq E ?bloque_pedido))
    (test (eq ?bloque ?bloque_pedido))
    (test (= ?l 0))
    =>
    (assert(brazo ?bloque (+ ?l 1)))
    (assert(pila ?n $?px $?py))
    (printout t "Recojo el bloque E" crlf)
)

(defrule dejar_bloque
(declare (salience 50))
    (brazo ?b ?l)
    (pedido ?np $?x ?bloque_pedido $?y)
    (mesa ?nm ?c ?m1 ?m2 ?m3 ?m4 ?m5)
    (test (= ?l 1))
    (test (= ?np ?nm))
    =>
    (assert(mesa ?nm (+ ?c 1)  ?b))
    (assert(brazo 0 0))
    (printout t "Bloque dejado " $?m)
)

