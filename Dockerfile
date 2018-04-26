FROM openjdk:8
MAINTAINER Nick;

RUN apt-get update -y

EXPOSE 8443
RUN apt-get -y install maven

ADD kurento-tutorial-java/ kurento-tutorial-java/

WORKDIR kurento-tutorial-java/kurento-group-call




# run push service
CMD mvn clean compile exec:java -Dkms.url=ws://ec2-18-219-24-122.us-east-2.compute.amazonaws.com:8888/kurento