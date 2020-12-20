(defrule tipo-regla
(initial-fact)
=>
(printout t "QUE TIPO ES (planta/hojas/raiz/bordes-hojas)?" crlf)
(assert (tipo (read)))
)
(defrule sintoma-regla
(or (tipo planta) (tipo hojas) (tipo raiz) (tipo bordes-hojas))
=>
(printout t "Ingrese el sintoma(crece-muy-poco/color-amarillo-palido/color-pardo-rojizo/poco-crecimiento/tallo-fusiforme/color-purpura/retraso-madurez/aparecen-chamuscados/tallos-debilitados/semillas-o-frutas-marchitas)?" crlf)
(assert (sintoma (read)))
)
(defrule deficiencia-nitrogeno-regla
(or (tipo planta) (tipo hojas))
(or (sintoma crece-muy-poco) (sintoma color-amarillo-palido) (sintoma color-pardo-rojizo))
=>
(printout t "La deficiencia es de nitrogeno" crlf)
)
(defrule deficiencia-fosforo-regla
(or (tipo raiz) (tipo planta))
(or (sintoma poco-crecimiento) (sintoma tallo-fusiforme) (sintoma color-purpura) (sintoma retraso-madurez))
=>
(printout t "La deficiencia es de fosforo" crlf)
)
(defrule deficiencia-potasio-regla
(or (tipo bordes-hojas) (tipo planta))
(or (sintoma aparecen-chamuscados) (sintoma tallos-debilitados) (sintoma semillas-o-frutas-marchitas))
=>
(printout t "La deficiencia es de potasio" crlf)
)