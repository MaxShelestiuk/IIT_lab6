FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/telegram-bot.jar
ARG JAR_LIB_FILE=target/lib/

WORKDIR pipeline/

COPY ${JAR_FILE} App.jar

ADD ${JAR_LIB_FILE} lib/

ENTRYPOINT [ "java", "-jar", "app.jar"]