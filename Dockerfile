FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

RUN ls
RUN ls /usr
#RUN ls /usr/src
RUN mkdir -p /usr/src/app
RUN ls /usr/src
ENV APP_HOME=/usr/src/app

COPY app/bankapp-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
