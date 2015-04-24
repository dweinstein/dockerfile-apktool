FROM seansummers/alpine-java:latest

WORKDIR /opt
ADD https://github.com/dweinstein/analysis-runner/archive/master.zip /tmp/analysis-runner.zip
RUN unzip /tmp/analysis-runner.zip && \
    mv analysis-runner-master runner && \
    rm -f /tmp/runner.zip

WORKDIR /opt/apktool/
ADD https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.0.jar /opt/apktool/apktool.jar

ADD ./run.sh /opt/apktool/run.sh

ENV JAVA java
ENV TOOL ${JAVA} -jar apktool.jar d -o /tmp
ENV CONTENT_TYPE text

