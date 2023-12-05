# Known Issues aufgrund Versionsupdate auf 3.28

        Hier unterhalb werden die "known issues" dokumentiert, welche mit dem Versionsupdate zusammenhängen

## Ausschnitt- und Massstabsunabhängige Legende

In den neueren WMS-Versionen gibt es den GetLegendGraphic request nur noch für "SLD-WMS". 

Für minimale WMS ohne SLD wird dem Client statisch über die Eigenschaft LegendUrl im GetCapabilities eine massstabsunabhängige Legende übermittelt.

### Konsequenz für QGIS-Server als "SLD-WMS"

Die Reduktion der Legende auf das aktuell im Kartenbild sichtbare ist nicht möglich, da der GetLegendGraphic Request keinen Parameter "bbox" umfasst.

### Unschöne "Extrembeispiele" bei Nutzung der statischen LegendUrl (Ohne GetLegendGraphic Request)

[AV Grundstücke](https://geo-t.so.ch/api/v1/legend/somap?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetLegendGraphic&LAYER=ch.so.agi.av.grundstuecke&FORMAT=image%2Fpng&STYLE=default&SLD_VERSION=1.1.0)

[AV Bodenbedeckung und Einzelobjekte](https://geo-t.so.ch/api/v1/legend/somap?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetLegendGraphic&LAYER=ch.so.agi.av.bodenbedeckung_einzelobjekte&FORMAT=image%2Fpng&STYLE=default&SLD_VERSION=1.1.0)

[(NPL Grundnutzung)](https://geo-t.so.ch/api/v1/legend/somap?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetLegendGraphic&LAYER=ch.so.arp.nutzungsplanung.grundnutzung&FORMAT=image%2Fpng&STYLE=default&SLD_VERSION=1.1.0)

## Veränderte Darstellung von NULL (fehlende Werte)

## Veränderte Darstellung von Numeric 0

## Verändertes Verhalten des Transparenz-Rendering innerhalb Layer

## Verändertes Verhalten der Legende bei Rasterbilder mit dem Interpolationstyp `Linear`

QGIS Server 2: Die Legende wird im Web GIS Client Horizontal gemäss Wertebereichsdefinition im QGIS dargestellt. Beispiel Siehe https://geo.so.ch/map/?k=5ca4b0779 
QGIS Server 3: Die Legende wird Linear im Web GIS Client dargestellt. Beispiel Siehe https://geo-t.so.ch/map/?k=d0562630f

# Known Issues mit QGIS 2.16

         Hier unterhalb werden die "known issues" dokumentiert, welche NICHT mit dem Versionsupdate zusammenhängen. Sprich komische Verhalten, welche heute auch auf der Produktion bestehen. 
