# docker-sonarqube-9.4

## build

docker build -t skuarch/sonarqube:9.4 .

## container

docker run --name sonar -i -t -d -p 9000:9000 skuarch/sonarqube:9.4
