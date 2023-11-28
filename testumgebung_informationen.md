# Informationen zu Konfiguration und Zugängen der von QGS3 auf der Testumgebung

## WMS-Zugänge:

QGIS-Server &quot;blank&quot; ohne OGC-Service: [http://qgis-server-test.apps.ocp.so.ch/ows/somap](http://qgis-server-test.apps.ocp.so.ch/ows/somap)

QGIS-Server via OGC-Service: [http://geo-t.so.ch/api/wms](http://geo-t.so.ch/api/wms)

Parameter für GetCapabilities: service=WMS&amp;request=GetCapabilities&amp;version=1.3.0

## Pipeline-Ausführung:

Ausführen in Test-Jenkins: [https://jenkins-agi-apps-test.apps.ocp.so.ch/job/WebGISClient/](https://jenkins-agi-apps-test.apps.ocp.so.ch/job/WebGISClient/)

Branch: qgis-server-3

## SoLocator auf Testumgebung konfigurieren

Mittels Menu Einstellungen -> Optionen -> Suche -> Solocator

Zahnrad-Button, dann Reiter "Testen".

### Konfiguration

| |Prod|Test|
|---|---|---|
|Service URL|https://geo.so.ch/api|https://geo-t.so.ch/api|
|PG Service|pub|pub|
|PG Host|geodb.rootso.org|geodb-t.rootso.org|

## SIMI-Branch der aktualisierten Trafo-Views:

unique\_dsv\_ident (In Repo sogis/simi)