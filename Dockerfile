# Stage 1: Компиляция
FROM openjdk:11 AS builder

WORKDIR /app
COPY src/ .
RUN javac Main.java

# Stage 2: Запуск
FROM openjdk:11-jre
WORKDIR /app
COPY --from=builder /app/Main.class .

CMD ["java", "Main"]
