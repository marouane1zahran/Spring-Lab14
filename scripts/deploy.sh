#!/bin/bash

echo "[ÉTAPE 1] Nettoyage et compilation du livrable (tests ignorés)..."
mvn clean package -DskipTests

echo "[ÉTAPE 2] Déploiement du nouveau package JAR..."
mkdir -p logs
java -jar target/*.jar > logs/deploiement.log 2>&1 &

echo "[SUCCÈS] Mise en production terminée. Nouveau PID : $!"