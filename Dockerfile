FROM melservice/ubuntu-batch-basis:latest

LABEL version="1.0" \
	description="Java-Anwendung auf Ubuntu-Basis" \
	maintainer="develop@melsaesser.de"

# Die bereitgestellten Skripte und Einstellungen kopieren
COPY rootfs /

# Die aktuellen Paketlisten laden, Updates holen und Initialisierung laufen lassen,
# danach wird wieder aufgeräumt
#RUN /docker/init/create-ubuntu-java-app.sh

# Dies ist das Start-Kommando
CMD ["bash", "/batch/bin/start.sh"]
