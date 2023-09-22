This repo contains a script and minimal configuration to reproduce a bug in the
link interceptor in Grafana 10.1.2.

https://github.com/grafana/grafana/issues/75279

Essentially: Some links in Grafana Dashboards are mangled incorrectly when
intercepted by Javascript.

## Reproducing the bug

Prerequisites:
 - docker compose
 - jsonnet
 - bash

Run [`./run.sh`](./run.sh) and go to http://localhost:3000/grafana
