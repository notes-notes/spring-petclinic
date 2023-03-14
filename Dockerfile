FROM eclipse-temurin:17-jdk-jammy
LABEL author="aarkay gummadi"
LABEL organization="quality thought"
ADD https://github.com/qtrajkumarmarch23/spring-petclinic.git /spring-petclinic.jar
EXPOSE 8080
CMD [ "java", "-jar", "/spring-petclinic.jar" ]
