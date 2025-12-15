# Utiliser l'image officielle nginx
FROM nginx:alpine

# Copier les fichiers du site dans le répertoire de nginx
COPY . /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Nginx démarre automatiquement, pas besoin de CMD explicite
# mais on peut le spécifier pour être explicite
CMD ["nginx", "-g", "daemon off;"]



