FROM openjdk:11.0.03-jre-slim-stretch
VOLUME /tmp
ADD target/spring-petclinic-*.jar /petclinic.jar
EXPOSE 8080
Run bash -c 'touch /petclinic.jar'
ENTRYPOINT ["java","-jar", "/petclinic.jar"]
