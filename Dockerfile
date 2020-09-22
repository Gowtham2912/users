FROM maven as build
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN mvn clean install
FROM openjdk:8
COPY --from=build /app/target/GowthamUserCrudExample-0.0.1-SNAPSHOT.war /app/target/GowthamUserCrudExample-0.0.1-SNAPSHOT.war
EXPOSE 8009
ENTRYPOINT ["java", "-jar", "/app/target/GowthamUserCrudExample-0.0.1-SNAPSHOT.war"]
