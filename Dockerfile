FROM registry.cn-qingdao.aliyuncs.com/mylin95/jdk:1.8.0
ARG app
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
