# docker-image-1
Centos, Apache,  PHP, SSL

## Linea para crear certificados autofirmados:

```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt
```

Reemplazar por que se encuentran el el proyecto
