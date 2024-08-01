FROM FROM openjdk:17-jdk
RUN apt update -y
WORKDIR /app
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java","-jar","/app/app.war"]
