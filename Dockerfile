# Usamos una imagen de Tomcat 10 con Java 17 (Compatible con Jakarta EE)
FROM tomcat:10.1-jdk21

# Borramos las aplicaciones por defecto de Tomcat para limpiar
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu proyecto (renombrado a ROOT.war) a la carpeta de despliegue
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto 8080 (el estándar de Tomcat)
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]