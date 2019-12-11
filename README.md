# PROSOZ Dashboard - Mock Server

Dieses Projekt dient der Weiterentwicklung des `PROSOZ Dashboard` Projektes.

## Inbetriebnahme

### Abhängigkeiten installieren

Nach dem erfolgreichen Checkout des Projektes müssen die Abhängigkeiten via

`bundle install`

auf dem Rechner installiert werden. Hierzu wird das Gem `bundler` benötigt.

### Server starten

Der Server lässt sich via

`ruby root.rb`

starten.

### Einfügen/Verändern der gelieferten Mock-Daten

Im Unterordner `mocks` befinden sich json-Dateien die ungefiltert je nach Route ausgegeben werden.

Welche JSON-Datei bei welcher Route ausgegeben werden, entnehmt am besten direkt der `root.rb`.

## Konfigurieren des PROSOZ Dashboards

Stellt in eurer `config.rb` die Endpunkte anhand der URL zu diesem Sinatra Server ein (wird nach Serverstart in der Konsole angezeigt als `localhost:portnummer`, bspw. `localhost:4567`):

````yaml
jira:
  endpoint: http://mock:server:port/jira
gitlab:
  api_endpoint: http://mock_server:port/gitlab
````