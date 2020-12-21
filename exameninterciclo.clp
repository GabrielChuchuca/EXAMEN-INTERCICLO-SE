(defrule tipo-regla
(initial-fact)
=>
(printout t "QUE TIPO ES (planta/hojas/raiz/bordes-hojas)?" crlf)
(assert (tipo (read)))
)
(defrule sintoma-regla
(or (tipo planta) (tipo hojas) (tipo raiz))
=>
(printout t "Ingrese el sintoma (crece-muy-poco/color-amarillo-palido/color-pardo-rojizo/poco-crecimiento/tallo-fusiforme/color-purpura/retraso-madurez/aparecen-chamuscados/tallos-debilitados/semillas-o-frutas-marchitas)?" crlf)
(assert (sintoma (read)))
)
(defrule general-regla
(tipo ?tipo) 
(sintoma ?sintoma)
=>
(if (or (and (eq ?tipo planta) (eq ?sintoma crece-muy-poco)) (and (eq ?tipo planta) (eq ?sintoma color-amarillo-palido)) (and (eq ?tipo hojas) (eq ?sintoma color-pardo-rojizo)))
then
(printout t "La deficiencia es de nitrogeno" crlf)
)
(if (or (and (eq ?tipo raiz) (eq ?sintoma poco-crecimiento)) (and (eq ?tipo planta) (eq ?sintoma tallo-fusiforme)) (and (eq ?tipo planta) (eq ?sintoma color-purpura)) (and (eq ?tipo planta) (eq ?sintoma retraso-madurez)))
then
(printout t "La deficiencia es de fosforo" crlf)
)
(if (or (and (eq ?tipo bordes-hojas) (eq ?sintoma aparecen-chamuscados)) (and (eq ?tipo planta) (eq ?sintoma tallos-debilitados)) (and (eq ?tipo planta) (eq ?sintoma semillas-o-frutas-marchitas)))
then
(printout t "La deficiencia es de potasio" crlf)
)
)
