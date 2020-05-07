FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/telegram-bot.jar
ARG JAR_LIB_FILE=target/lib/

WORKDIR pipeline/

COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-jar", "app.jar"]