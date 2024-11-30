% Relación de padres
padre(gamaliel_escobedo_mitre, adrian_escobedo_aguilera).
padre(gamaliel_escobedo_mitre, andrea_escobedo_aguilera).
padre(gamaliel_escobedo_mitre, jose_escobedo_aguilera).
madre(elizabeth_aguilera_chavarria, adrian_escobedo_aguilera).
madre(elizabeth_aguilera_chavarria, andrea_escobedo_aguilera).
madre(elizabeth_aguilera_chavarria, jose_escobedo_aguilera).

padre(rogelio_escobedo_sanchez, gamaliel_escobedo_mitre).
padre(rogelio_escobedo_sanchez, rogelio_escobedo_mitre).
padre(rogelio_escobedo_sanchez, daniel_escobedo_mitre).
padre(rogelio_escobedo_sanchez, hector_manuel_escobedo_mitre).
padre(rogelio_escobedo_sanchez, sara_violeta_escobedo_mitre).
padre(rogelio_escobedo_sanchez, cesareo_escobedo_mitre).
padre(rogelio_escobedo_sanchez, edelmira_escobedo_mitre).
padre(rogelio_escobedo_sanchez, jose_antonio_escobdo_mitre).
padre(rogelio_escobedo_sanchez, jose_alfredo_escobedo_mitre).
padre(rogelio_escobedo_sanchez, alejandro_escobedo_mitre).
padre(rogelio_escobedo_sanchez, engracia_escobedo_mitre).
madre(micaela_mitre_rosales, gamaliel_escobedo_mitre).
madre(micaela_mitre_rosales, rogelio_escobedo_mitre).
madre(micaela_mitre_rosales, daniel_escobedo_mitre).
madre(micaela_mitre_rosales, hector_manuel_escobedo_mitre).
madre(micaela_mitre_rosales, sara_violeta_escobedo_mitre).
madre(micaela_mitre_rosales, cesareo_escobedo_mitre).
madre(micaela_mitre_rosales, edelmira_escobedo_mitre).
madre(micaela_mitre_rosales, jose_antonio_escobdo_mitre).
madre(micaela_mitre_rosales, jose_alfredo_escobedo_mitre).
madre(micaela_mitre_rosales, alejandro_escobedo_mitre).
madre(micaela_mitre_rosales, engracia_escobedo_mitre).

% Relaciones de género
mujer(andrea_escobedo_aguilera).
mujer(edelmira_escobedo_mitre).
mujer(sara_violeta_escobedo_mitre).
mujer(engracia_escobedo_mitre).
mujer(micaela_mitre_rosales).
mujer(elizabeth_aguilera_chavarria).

hombre(adrian_escobedo_aguilera).
hombre(gamaliel_escobedo_mitre).
hombre(jose_escobedo_aguilera).
hombre(jose_alfredo_escobedo_mitre).
hombre(jose_antonio_escobdo_mitre).
hombre(daniel_escobedo_mitre).
hombre(rogelio_escobedo_mitre).
hombre(rogelio_escobedo_sanchez).
hombre(alejandro_escobedo_mitre).
hombre(hector_manuel_escobedo_mitre).
hombre(cesareo_escobedo_mitre).

% Relaciones familiares adicionales
hermana(X, Y) :- madre(M, X), madre(M, Y), X \= Y.
hermano(X, Y) :- padre(P, X), padre(P, Y), X \= Y.

% Relaciones de tío y tía
tio(X, Y) :- hermano(X, Z), padre(Z, Y).
tio(X, Y) :- hermana(X, Z), padre(Z, Y).
tia(X, Y) :- hermana(X, Z), madre(Z, Y).
tia(X, Y) :- hermano(X, Z), madre(Z, Y).

% Consultas
tio(daniel_escobedo_mitre, adrian_escobedo_aguilera).
tio(rogelio_escobedo_mitre, adrian_escobedo_aguilera).
tio(cesareo_escobedo_mitre, adrian_escobedo_aguilera).
tio(alejandro_escobedo_mitre, adrian_escobedo_aguilera).
tio(jose_alfredo_escobedo_mitre, adrian_escobedo_aguilera).
tio(jose_antonio_escobdo_mitre, adrian_escobedo_aguilera).
tio(hector_manuel_escobedo_mitre, adrian_escobedo_aguilera).
tia(sara_violeta_escobedo_mitre, adrian_escobedo_aguilera).
tia(engracia_escobedo_mitre, adrian_escobedo_aguilera).
tia(edelmira_escobedo_mitre, adrian_escobedo_aguilera).
