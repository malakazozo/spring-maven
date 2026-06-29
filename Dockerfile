# Utilisez une image de base avec Java
FROM eclipse-temurin:17-jdk

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier jar généré dans le conteneur
COPY target/*.jar demo-github-0.0.1-SNAPSHOT.jar

# Exposer le port sur lequel Spring Boot écoute
EXPOSE 8080

# Commande pour lancer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/app/demo-github-0.0.1-SNAPSHOT.jar"]
