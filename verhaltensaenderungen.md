# Verhaltensänderungen mit QGIS Server Version 3.28

## Karte

### Transparenz wird auf Layer angewendet

QGIS Server 3 - Transparenz per Layer:
![Objektinfomation_0](./pictures/map/Transparenz_obj2.PNG)
![Objektinfomation_0](./pictures/map/Transparenz_obj4.PNG)

QGIS Server 2 - Transparenz per Feature:
![Objektinfomation_0](./pictures/map/Transparenz_obj1.PNG) 
![Objektinfomation_0](./pictures/map/Transparenz_obj3.PNG)

Konsequenz: Sich überlagernde Features werden nicht mehr transparent übereinander dargestellt.

## Legende

### Legende nicht mehr vom Kartenausschnitt abhängig

Mit QGIS-Server-2 wurde die Legende einer Kartenebene im Web GIS Client nur angezeigt, wenn im aktuellen Kartenausschnitt Objekte von dieser Kartenebenen vorkommen.

Neu wird die Legende von der Kartenebene für den entsprechenden Massstab immer **vollständig** angezeigt. Unabhängig davon ob im aktuellen Kartenausschnitt Objekte vorkommen oder nicht.

### Rasterbilder mit dem Interpolationstyp `Linear`

QGIS Server 3: Die Legende wird Linear im Web GIS Client dargestellt.

![Objektinfomation_0](./pictures/legend/Legende_Raster_Linear_neu.PNG)

QGIS Server 2: Die Legende wird im Web GIS Client Horizontal gemäss Wertebereichsdefinition im QGIS dargestellt.

![Objektinfomation_0](./pictures/legend/Legende_Raster_Linear_alt.PNG)

### Für Raster-Layer erscheint hinter der Layer-Überschrift "Band 1 Gray"

![Band1_Gray](pictures/legend/Band1_Gray.PNG)

### Darstellungsgruppen sind "text-bündig"

![Darstellungsgruppen](pictures/legend/Darstellungsgruppen.png)

In V2 waren die Gruppen linksbündig.

## Objektabfrage

### Veränderte Darstellung von 0-Values bei Attributen vom Typ Numeric

Bei Attributen vom Typ Numeric wird der Wert `0` neu nicht mehr als `0.00` sondern als `0` dargestellt.

![Objektinfomation_0](./pictures/finfo/Objektinfo_numeric.PNG)

### Verändertes Darstellung von NULL-Values bei Attributen vom Typ Varchar

Bei Attributen vom Typ Varchar wird der Wert `NULL` nicht mehr leer sondern mit `-` dargestellt.

![Objektinfomation_0](./pictures/finfo/Objektinfo_NULL.PNG)

# Weiterhin bestehende "Eigenheiten"

Die folgenden Verhalten sind während dem Testen aufgefallen, stehen aber nicht im Zusammenhang mit dem Versionswechsel von QGIS Server.

## Karte

### Layer Transparenz wird im WMS nicht transparent dargestellt

Beispiel: https://geo.so.ch/map/?k=8bb75fe88     