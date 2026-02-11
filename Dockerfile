# ---- 1. Aşama: Derleme (Build) ----
FROM maven:3.8.8-eclipse-temurin-17 AS build
WORKDIR /app

# Sadece pom.xml'i kopyalayıp bağımlılıkları indiriyoruz (Cache avantajı)
COPY pom.xml .
RUN mvn dependency:go-offline

# Kaynak kodları kopyalayıp paketi oluşturuyoruz
COPY src ./src
RUN mvn clean package -Dmaven.test.skip=true

# ---- 2. Aşama: Çalıştırma (Run) ----
# HATALI OLAN 'FROM openjdk' YERİNE BUNU KULLANIYORUZ:
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Build aşamasında oluşan JAR dosyasını buraya alıyoruz
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]