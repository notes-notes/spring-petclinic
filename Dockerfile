FROM openjdk-17-jdk
LABEL author="aarkay gummadi"
LABEL organization="quality thought"
ADD https://github.com/qtrajkumarmarch23/spring-petclinic.git
EXPOSE 8080
CMD [ "java", "-jar", "/spring-petclinic.jar" ]