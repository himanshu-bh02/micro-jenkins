FROM openjdk:17
ADD target/micro-jenkins.jar micro-jenkins.jar
ENTRYPOINT ["java", "-jar","micro-jenkins.jar"]