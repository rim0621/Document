# Docker

### 다운
* sudo apt-get install docker.io
* sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker

### 실행
* $ sudo docker run -i -t --name hello ubuntu /bin/bash

### 컨테이너 목록 출력
* sudo docker ps -a

### 컨테이너 시작
* sudo docker start hello

### 외부에서 실행??
* sudo docker exec -it webserver1 /bin/bash

### 컨테이너 접근
* sudo docker attach hello 후 엔터

### 마리아db
* sudo docker run --name mariadb -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mariadb:latest
* sudo docker exec -it mariadb bash

### web server
* sudo docker run --name server -d -p 8080:80 -v /home/webserver/docker-web/:/var/www/html emiller/aphace2

### 컨테이너 이미지로 뽑기
* sudo docker commit -a "Foo Bar <foo@bar.com>" -m "add hello.txt" hello-nginx hello:0.2
  * -a: 커밋사용자 -m: 로그메시지

### 컨테이너에서 호스트로 전송 (반대로하면 호스트->컨테)
* sudo docker cp getJOB:/opt/conda/lib/python3.6/site-packages(컨테) ~/anaconda3/lib/python3.6/site-packages/JPype1_py3-0.5.5.2.dist-info(로컬)

### nginx+php+fpm run
* sudo docker run -d -p 6116:22 -p 6117:80 -h jeremy.com --name webserver richarvey/nginx-php-fpm

### 배포
* sudo docker login 후
* sudo docker tag c915c7a35ef3 rim0621/docker:webserver
* sudo docker push rim0621/docker:webserver

### 링크연결
* sudo docker network create hello-network
* sudo docker run --name db -d --network hello-network mongo
* docker run --name web -d -p 80:80 --network hello-network nginx
* ping db 로 확인!!(apt-get install iputils-ping)
* ifconfig->apt-get install net-tools

### 백그라운드 유지하면서 나가기
* ctrl+p+q

----
