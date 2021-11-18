#!/bin/sh
mvn clean package && docker build -t fr.grin/BelcaidTP4 .
docker rm -f BelcaidTP4 || true && docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP4 fr.grin/BelcaidTP4