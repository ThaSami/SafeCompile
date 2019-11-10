FROM java:8
MAINTAINER thasami97@gmail.com
WORKDIR /compile
ENV filename code.py
RUN git clone https://github.com/ThaSami/CompileCodesIsolate.git
RUN mv CompileCodesIsolate/Assignment.java .
RUN javac Assignment.java
RUN apt-get update -y; exit 0
RUN apt-get install -y libmysql-java
RUN apt-get install -y g++
ENV CLASSPATH $CLASSPATH:/usr/share/java/mysql-connector-java.jar
CMD ["sh","-c","java Assignment ${filename}"]

