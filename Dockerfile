FROM eclipse-temurin:17-jre

WORKDIR /app

# Download Lavalink jar
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Copy config
COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
