FROM nginx:latest

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/share/nginx/html

RUN rm -rf /usr/share/nginx/html/*

RUN git clone https://github.com/Noraelm/Opdracht-Docker.git /usr/share/nginx/html

EXPOSE 80
