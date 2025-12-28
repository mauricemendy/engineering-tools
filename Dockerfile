# Dockerfile pour Coolify
FROM nginx:alpine

# Copie le HTML dans le dossier servi par Nginx
COPY index.html /usr/share/nginx/html/

# Nginx écoute sur le port 80 par défaut
EXPOSE 80

# Démarre Nginx
CMD ["nginx", "-g", "daemon off;"]