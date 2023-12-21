     
### Attribute vom Typ Boolean: Aus `t` wird `true` und aus `f` wird `false`

Bei Attributen vom Typ Boolean gelten neu im QML-File und im simi die Werte `true` und `false` (Alt/QGIS2 `t` und `f`).

Im QML-File betrifft das die Ausdrücke beim Filtern. Im simi betrifft das die WMS-Formatierung (in der Tabelle) und das Jinja-Template.

Damit das QML-File Rückwärtskompatibel ist, haben wir alle Filterausdrücke auf `xx='t' OR xx='true'` oder `xx='f' OR xx='false'` geändert.  

Bei neuen Filterausdrücken oder Aenderung bestehender: Auf `xx IS TRUE` oder `xx IS FALSE` umstellen.

### Verändertes Verhalten WGC Massstabsgrenzen in den QML-Files

Neu darf die Massstabsgrenze im QML-File nicht gleich sein wie die Massstabsgrenzen im Web GIS Client.   
Die Massstabsgrenze im QML-File sollte mindestens **+1** zur Massstabsgrenzen im Web GIS Client sein.

Betrifft: `minimumScale`, `maximumScale`, `scalemaxdenom` und `scalemindenom`

Beispiel: Ein Layer soll nur im Massstab 1:1 bis 1:20'000 im Web GIS Client sichtbar sein.   
Im QML-File muss `maximumScale='200001'` definiert werden.

### Verändertes Verhalten von NULL (fehlende Werte) bei Jinja-Templates

Bei Attributen vom Typ Varchar wird der Wert `NULL` nicht mehr leer sondern als `-` zurück gegeben. Das hat Einfluss auf Abfragen in den Jinja-Templates.<br>
Neu muss man ein Attribut folgendermassen auf 'NULL'-Value abfragen:   
`{% if feature.dokumente == '-' %}`

### Symboldefinitionen mit Karteneinheiten => neu "Meter im Massstab"

Bei einigen Layern wird die Strichdicke von bspw. Umrandungslinien in Karteneinheiten anstatt in mm definiert. Dies führt in gradbasierten Koordinatensystemen zu Problemen. 
Dort werden die Linien sehr schnell sehr dick gerendert.

In QGIS Server 3 gibt es neu die Auswahlmöglichkeit ***"Meter im Massstab"***. Anstelle von *"Karteneinheiten"* muss man neu *"Meter im Massstab"* verwenden.