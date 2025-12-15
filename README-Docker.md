# Docker - Serveur Web Novialoom

Ce projet inclut une configuration Docker pour simuler un serveur web et servir les fichiers statiques du site.

## Utilisation

### Option 1 : Avec Docker Compose (recommandé)

```bash
# Construire et démarrer le conteneur
docker-compose up --build

# Démarrer en arrière-plan
docker-compose up -d --build

# Arrêter le conteneur
docker-compose down
```

Le site sera accessible sur : http://localhost:8080

### Option 2 : Avec Docker directement

```bash
# Construire l'image
docker build -t novialoom-web .

# Lancer le conteneur
docker run -d -p 8080:80 --name novialoom-web novialoom-web

# Arrêter le conteneur
docker stop novialoom-web

# Supprimer le conteneur
docker rm novialoom-web
```

## Configuration

- **Port par défaut** : Le site est accessible sur le port 8080 de votre machine
- **Port interne** : Le conteneur utilise le port 80 (nginx)
- **Image de base** : nginx:alpine (légère et optimisée)

## Personnalisation

Pour changer le port d'accès, modifiez la ligne `ports` dans `docker-compose.yml` :
```yaml
ports:
  - "VOTRE_PORT:80"  # Par exemple "3000:80"
```



