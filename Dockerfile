FROM openjdk:11-jre-slim
ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y libfreetype6 fontconfig
WORKDIR /app
COPY /var/jenkins_home/workspace/gitflow-project_master/target/gitflow-*.jar app.jar
ENTRYPOINT exec java \
$JAVA_OPTS \
-jar app.jar \
$APP_ARGS
