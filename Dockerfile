FROM openjdk:17-slim

WORKDIR /app

COPY . .

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
