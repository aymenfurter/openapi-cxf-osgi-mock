FROM reg.x0r.sh/tos-beta:latest
MAINTAINER Aymen Furter <aymen.furter@gmail.com>

ENV USER trun
ENV APPUID 8181
ENV JAVA_XMX 256m
ENV EXEC exec

COPY org.apache.karaf.features.cfg /opt/trun/etc/org.apache.karaf.features.cfg

ADD target/camel-example-mock-1.0.0-SNAPSHOT.jar /opt/trun/deploy/camel-example-mock-1.0.0-SNAPSHOT.jar

ENTRYPOINT ["/opt/trun/bin/trun"] 
