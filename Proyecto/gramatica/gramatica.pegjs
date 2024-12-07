gramatica
  = regla (saltoLinea regla)*

regla "regla"
  = identificador saltoLinea "=" _ tipoRegla saltoLinea ";"
  
tipoRegla
  = concatenacion (saltoLinea "/" saltoLinea concatenacion)*

concatenacion
  = expresion (_ expresion)*

expresion "expresion"
  = parsingExpression [?+*]?

parsingExpression
  = identificador
  / cadena
  / rango
  / subexpresion

cadena "cadena de texto"
	= ["] [^"]* ["]
    / ['] [^']* [']
    
rango "rango" = "[" contenidoRango+ "]"

subexpresion "sub-expresion" = "(" saltoLinea expresion saltoLinea (saltoLinea expresion saltoLinea)* ")"

contenidoRango "contenido del rango" = [^[\]-] "-" [^[\]-]
			/ [^[\]]+

identificador "identificador"
  = [_a-z]i[_a-z0-9]i*

_ "espacios en blanco"
  = [ \t]*

saltoLinea "nueva linea"
  = [ \t\n\r]*