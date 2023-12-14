# Terminplan Einführung

## Anfang September auf der Testumgebung

Arbeiten:
* Andi Grundbuch-qgs mit V 3.28 QGIS. An einfaches Rollback denken. Beispielsweise mittels neuem separatem *.qgs für QGIS Server 3.
* Andi WMTS-Seeder QGIS-Server läuft neu nicht mehr als separaten Container. Falls terminlich knapp: Nicht auf Testbeginn fertigstellen.
* Andi Landeskarten-Zoomstufen Seeding WMTS auf neues Image heben (inkl entsprechendes *.qgs)
* Micha Testumgebung anpassen, damit diese 
    * auf Branch mit V3 json2qgs arbeitet
    * das neue Image von Sourcepole verwendet
    * Betriebskonfiguration definieren (Anzahl Prozesse / Pods)
* Sandra Testen
    * der Aspekte, welche lokal nur mit grossem Aufwand nachvollziehbar sind:
       * Facadelayer
       * Drucken
           * "Normales" Drucken
               * inkl. Drucken externer WMS Layer
               * Hintergrundkarte
               * "Hintergrundkarte Oereb"
       * Plan für das Grundbuch
   * Legende (Gruppe mit Facadelayer, Rule based rendering)
   * Stichproben der lokalen Tests (punktuelle Wiederholung zwecks Verifikation im Komponentenverbund (OGC-Service, ...))
   * Anfragen bei Doris, ob einige weitere Ebenen innerhalb der bis jetzt als problemlos resultierenden Testgruppen getestet werden können.

Scope und Zusammenhänge:
* Out of Scope: 
    * Oereb QGIS-Server. Wird im Nachgang auf die gleiche Version gebracht
    * Style Desktop (Separate qml für SoLocator)
* Zusammenhängendes
    * Update OGC-Service für Erweiterung Markeranzeige
        * Kommt im Anschluss der QGIS Server 3 Tests auf die Testumgebung (ca. letzte Septemberwoche)
        * Wird nach separatem Test gleichzeitig mit QGIS Server 3 auf Integration und Produktion genommen

## Produktiv Ende November

Ablauf:

* Anfang November auf Integration für "Spezial-Rollout". Dieser dauert
drei Wochen und umfasst ausschliesslich Änderungen, welche Aufgrund 
Versionsaktualisierung notwendig sind.
    * Aktualisierung der identifizierten Ebenentypen auf V3 qml.
    * Einwöchiges optionales Verifikationsfenster für die den Fachämtern "wichtigen" Ebenen.
* Ende November Rollout auf Produktion.

Arbeiten:

* Kommunikation
* Punktuelle Anpassungen an den identifizierten Ebenen. Betroffene Ebenen mit Anpassungsgrund in Excel führen und im Excel "abhaken", damit die Fachämter einfach informiert werden können.
    * Oder alternativ in diesem Repo, falls es öffentlich gemacht werden kann (Andi fragen)

## Aufräumen drei Wochen nach Produktiv-Gang

* Branches mergen
* V2 json2qgs aus Pipeline löschen
* Altes Image?
* ...?
