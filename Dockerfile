FROM tomcat:9.0.97-jdk11
RUN apt update
RUN apt install git -y
RUN apt install maven -y
WORKDIR /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/hello-1.0.war /var/lib/tomct9/webapps/
EXPOSE 80 

CMD ["catalina.sh", "run"] 