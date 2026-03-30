# TP 14 : Automatisation et Déploiement Spring Boot avec Bash

Ce projet illustre l'automatisation du cycle de vie d'une application Spring Boot à l'aide de scripts Bash. Il démontre comment compiler, exécuter, superviser et arrêter un service dans un environnement de type Linux, en appliquant les pratiques standards du DevOps et du déploiement continu.

## 🛠️ Prérequis

Pour exécuter ce projet, votre environnement doit disposer des éléments suivants :
* **Java :** Version 17 ou supérieure.
* **Maven :** Installé et configuré dans le PATH.
* **Système d'exploitation :** Un environnement Bash (Linux, macOS, ou WSL / Git Bash sous Windows).

## 📁 Structure du Projet

```text
ens-springbash/
├── src/
│   ├── main/java/ma/ens/springbash/
│   └── main/resources/
│       └── application.properties
├── pom.xml
├── scripts/
│   ├── run.sh          # Démarrage en arrière-plan
│   ├── stop.sh         # Arrêt du processus (kill)
│   ├── deploy.sh       # Compilation (build) et déploiement
│   └── logs.sh         # Lecture des journaux système
└── README.md

```

1. Démarrer le service

Lance l'application Spring Boot en tâche de fond (via nohup) et redirige les flux de sortie vers logs/application.log.
Bash

<img width="1181" height="398" alt="image" src="https://github.com/user-attachments/assets/1bda9ecd-39bc-4a21-9e40-5da16f74fd39" />

2. Superviser l'application (Logs)

Affiche les 30 dernières lignes du journal pour vérifier que le démarrage s'est bien déroulé ou pour diagnostiquer une erreur.

<img width="978" height="754" alt="image" src="https://github.com/user-attachments/assets/07fcdd10-fb6d-4631-8e0e-e3674185b6e3" />
<img width="1100" height="770" alt="image" src="https://github.com/user-attachments/assets/27023651-1ff9-497a-bed5-6b75307ba0bb" />
3. Déployer une mise à jour

Recompile l'ensemble du projet Maven (en ignorant la phase de test pour gagner en rapidité), génère un nouveau .jar et relance le service automatiquement.
<img width="1165" height="636" alt="image" src="https://github.com/user-attachments/assets/486b59c0-ee88-4b40-ad45-9c27e29f5ad6" />
