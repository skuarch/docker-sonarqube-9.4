FROM ubuntu:22.04

ENV WORKDIR=/sonarqube

WORKDIR ${WORKDIR}

# ADD https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip $WORKDIR

RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube && \
  apt-get update && \
  apt-get install sudo unzip apt default-jdk -y -f && \
  usermod -aG sudo sonarqube && \
  chown sonarqube /sonarqube && \
  su sonarqube

COPY --chown=sonarqube:sonarqube sonarqube-9.4.0.54424.zip $WORKDIR
COPY --chown=sonarqube:sonarqube entrypoint.sh $WORKDIR

USER sonarqube

RUN unzip sonarqube-9.4.0.54424.zip && \
  cd ./sonarqube-9.4.0.54424/bin/linux-x86-64 && \
  rm -rf sonarqube-9.4.0.54424.zip

EXPOSE 9000

ENTRYPOINT bash $WORKDIR/entrypoint.sh







