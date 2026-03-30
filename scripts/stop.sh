#!/bin/bash

echo "[INFO] Tentative d'interruption du service Spring Boot..."

# Recherche de l'identifiant du processus lié à Maven/Spring Boot
APP_PID=$(ps aux | grep 'spring-boot:run' | grep -v grep | awk '{print $2}')

if [ -z "$APP_PID" ]; then
  echo "[AVERTISSEMENT] Aucun service actif n'a été détecté en mémoire."
else
  kill -9 $APP_PID
  echo "[SUCCÈS] Le processus $APP_PID a été forcé à s'arrêter."
fi