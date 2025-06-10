# 基础镜像
FROM  openjdk:8-jre
# author
MAINTAINER wanyi

# 挂载目录
VOLUME /home/www
# 创建目录
RUN mkdir -p /home/www
# 指定路径
WORKDIR /home/www
# 复制jar文件到路径
COPY ./target/spring-boot-demo-1.0.jar /home/www/spring-boot-demo-1.0.jar


#设置jvm启动参数
ENV JAVA_OPTS="-Xmx512M -Xms256M -Xmn256M"

# 启动系统服务
ENTRYPOINT java ${JAVA_OPTS} -jar /home/www/spring-boot-demo-1.0.jar