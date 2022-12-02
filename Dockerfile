FROM public.ecr.aws/j6b7p9b9/tekionjava:openjdk11

RUN   mkdir -p /etc/dms/roservice

WORKDIR /etc/dms/roservice

ADD build/libs/*.jar .

CMD java $JAVA_OPTS -Dserver.port=8080 -jar *.jar

EXPOSE 8080
