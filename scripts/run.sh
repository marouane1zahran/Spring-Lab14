#!/bin/bash

echo "[INFO] Initialisation du service Spring Boot en arrière-plan..."

# Sécurité
mkdir -p logs

# Lancement avec redirection des flux
nohup mvn spring-boot:run > logs/application.log 2>&1 &

echo "[SUCCÈS] Service démarré ! L'identifiant du processus (PID) est : $!"