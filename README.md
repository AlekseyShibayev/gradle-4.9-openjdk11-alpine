# gradle_4.9-openjdk_11-alpine

Мне надо создать образ и загрузить его на докер хаб.

Устанавливаю докер: sudo apt install docker.io

Собираю image: sudo docker build --tag "dev:v1" .

Теперь необходимо залить на докер хаб.

Создаю аккаунт и репозиторий на docker.hub

https://hub.docker.com/repository/docker/alekseyshibayev/gradle_4.9-openjdk_11-alpine

Заливаю image на докер хаб:

docker login

docker tag dev:v1 alekseyshibayev/gradle_4.9-openjdk_11-alpine

docker push alekseyshibayev/gradle_4.9-openjdk_11-alpine
