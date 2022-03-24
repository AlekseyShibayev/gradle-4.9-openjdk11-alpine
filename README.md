# gradle_4.9-openjdk_11-alpine

Задача: 

Cоздать образ и загрузить его на докер хаб.

1. Устанавливаю докер:

sudo apt install docker.io

2. Создаю Dockerfile и cобираю image:

sudo docker build --tag "dev:v1" .

3. Создаю аккаунт и репозиторий на docker.hub

https://hub.docker.com/repository/docker/alekseyshibayev/gradle_4.9-openjdk_11-alpine

4. Заливаю image на докер хаб:

docker login

docker tag dev:v1 alekseyshibayev/gradle_4.9-openjdk_11-alpine

docker push alekseyshibayev/gradle_4.9-openjdk_11-alpine
