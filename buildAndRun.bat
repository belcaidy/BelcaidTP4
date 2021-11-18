@echo off
call mvn clean package
call docker build -t fr.grin/BelcaidTP4 .
call docker rm -f BelcaidTP4
call docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP4 fr.grin/BelcaidTP4