# docker-sonarqube-9.4

Requirements: download sonarqube and change the name to sonarqube-9.4.0.54424.zip and leave it in the root folder beside of Dockerfile

## Build

docker build -t skuarch/sonarqube:9.4 .

## Container

docker run --name sonar -i -t -d -p 9000:9000 skuarch/sonarqube:9.4
