FROM maven:3.6.0-jdk-8-alpine
EXPOSE 8080

VOLUME /tmp
ADD ./target/pd-singodox-1.0.0-SNAPSHOT.jar  /app.jar
ENV TIME_ZONE Asia/Shanghai
RUN bash -c 'touch /app.jar' \
    && echo "${TIME_ZONE}" > /etc/timezone \
    && ln -snf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
ENTRYPOINT ["java","-jar","/app.jar"]
