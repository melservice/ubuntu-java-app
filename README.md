# Das Image ubuntu-java-app

Dies sind die Quellen für eine Java basierte Anwendung auf Ubuntu-Basis.

## Organisation der Daten im Image

Im Image wird unter /usr/lib/jvm/ die aktuelle Version des OpenJDK von Adoptium bzw. IBM Semeru abgelegt. Es gibt daher verschiedene Fassungen des Images, für jede LTS-Version von OpenJDK eines sowie jeweils für die Hotspot-Varianta und die OpenJ9-Variante.

## Skripte

Der im Container laufende Dienst wird über ein Skript hochgefahren und auch beendet. Das Skript kopiert die Eingangsdateien aus dem Eingangsvolume an den korrekten Platz für den DNS-Service. Die vom Service geschriebenen Dateien - die Verwaltung der Leases - werden beim Beenden in das Ausgabeverzeichnis kopiert.
