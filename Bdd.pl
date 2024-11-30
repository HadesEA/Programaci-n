% Hechos
tipo_negocio(restaurante).
tipo_negocio(tienda_en_linea).

% Ubicaciones para restaurantes
ubicacion(restaurante, centro_ciudad).
ubicacion(restaurante, barrio_residencial).

% Opciones de financiamiento
financiamiento(restaurante, prestamo_bancario).
financiamiento(restaurante, inversionistas).
financiamiento(tienda_en_linea, prestamo_bancario).
financiamiento(tienda_en_linea, inversionistas).

% Estrategias de marketing
marketing(restaurante, marketing_digital).
marketing(restaurante, publicidad_tradicional).
marketing(tienda_en_linea, marketing_digital).
marketing(tienda_en_linea, publicidad_tradicional).

% Reglas
% Combinaciones posibles de decisiones para restaurantes
decision_negocio(restaurante, Ubicacion, Financiacion, Estrategia) :-
    ubicacion(restaurante, Ubicacion),
    financiamiento(restaurante, Financiacion),
    marketing(restaurante, Estrategia).

% Combinaciones posibles de decisiones para tiendas en linea
decision_negocio(tienda_en_linea, no_aplica, Financiacion, Estrategia) :-
    financiamiento(tienda_en_linea, Financiacion),
    marketing(tienda_en_linea, Estrategia).

% Interfaz de usuario
inicio :-
    write('Bienvenido al asistente de decisiones de negocio.'), nl,
    write('Por favor, seleccione el tipo de negocio:'), nl,
    write('1. Restaurante'), nl,
    write('2. Tienda en linea'), nl,
    read(Opcion), procesar_opcion(Opcion).

procesar_opcion(1) :-
    write('¿En que ubicacion planea abrir el restaurante?'), nl,
    write('1. Centro de la ciudad'), nl,
    write('2. Barrio residencial'), nl,
    read(Ubicacion_Opcion),
    ubicacion_restaurante(Ubicacion_Opcion, Ubicacion),
    continuar_restaurante(Ubicacion).

continuar_restaurante(Ubicacion) :-
    write('Seleccione la opcion de financiamiento:'), nl,
    write('1. Prestamo bancario'), nl,
    write('2. Inversionistas'), nl,
    read(Financiacion_Opcion),
    financiamiento_restaurante(Financiacion_Opcion, Financiacion),
    write('Seleccione la estrategia de marketing:'), nl,
    write('1. Marketing digital'), nl,
    write('2. Publicidad tradicional'), nl,
    read(Estrategia_Opcion),
    marketing_restaurante(Estrategia_Opcion, Estrategia),
    decision_negocio(restaurante, Ubicacion, Financiacion, Estrategia),
    write('Segun las opciones seleccionadas, se recomienda abrir un restaurante en '), write(Ubicacion), write(', financiado por '), write(Financiacion), write(', y utilizar '), write(Estrategia), write(' como estrategia de marketing.'), nl.

procesar_opcion(2) :-
    write('Seleccione la opcion de financiamiento:'), nl,
    write('1. Prestamo bancario'), nl,
    write('2. Inversionistas'), nl,
    read(Financiacion_Opcion),
    financiamiento_tienda(Financiacion_Opcion, Financiacion),
    write('Seleccione la estrategia de marketing:'), nl,
    write('1. Marketing digital'), nl,
    write('2. Publicidad tradicional'), nl,
    read(Estrategia_Opcion),
    marketing_tienda(Estrategia_Opcion, Estrategia),
    decision_negocio(tienda_en_linea, no_aplica, Financiacion, Estrategia),
    write('Segun las opciones seleccionadas, se recomienda abrir una tienda en linea, financiada por '), write(Financiacion), write(', y utilizar '), write(Estrategia), write(' como estrategia de marketing.'), nl.

% Predicados auxiliares
ubicacion_restaurante(1, centro_ciudad).
ubicacion_restaurante(2, barrio_residencial).

financiamiento_restaurante(1, prestamo_bancario).
financiamiento_restaurante(2, inversionistas).

marketing_restaurante(1, marketing_digital).
marketing_restaurante(2, publicidad_tradicional).

financiamiento_tienda(1, prestamo_bancario).
financiamiento_tienda(2, inversionistas).

marketing_tienda(1, marketing_digital).
marketing_tienda(2, publicidad_tradicional).