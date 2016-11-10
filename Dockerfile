#FROM test/gradle:2.14
FROM java:8

ADD src /usr/local/docker-fun/src
ADD gradle /usr/local/docker-fun/gradle
ADD build.gradle /usr/local/docker-fun/build.gradle
ADD gradlew /usr/local/docker-fun/gradlew

RUN cd /usr/local/docker-fun \
 && ./gradlew

RUN cd /usr/local/docker-fun \
 && ./gradlew build

RUN cp /usr/local/code/build/libs/docker-fun.jar /app.jar

# RUN cd /usr/local/code \
#  && ./gradlew build \
#  && cp build/libs/docker-fun.jar /app.jar

 # && cp build/libs/docker-fun.jar /app.jar

# RUN cd /usr/local/code \
#  && ls -la

#  RUN cd /usr/local/code/build \
#  && ls -la

# RUN cp /usr/local/code/build/libs/code.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]