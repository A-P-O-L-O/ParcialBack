# Instrucciones de Despliegue

## Requisitos Previos
Antes de desplegar el proyecto, asegúrate de contar con los siguientes requisitos:

- **Java Development Kit (JDK):** Versión 8 o superior.
- **Apache Tomcat:** Versión 9 o superior.
- **Git:** Para clonar el repositorio (opcional si descargas el proyecto manualmente).

## Pasos para el Despliegue

### 1. Clonar el Proyecto
Si tienes Git instalado, puedes clonar el proyecto ejecutando el siguiente comando en la terminal o línea de comandos:

```sh
  git clone https://github.com/A-P-O-L-O/ParcialBack.git

  cd proyecto-reservas
```

Si no usas Git, puedes descargar el proyecto en formato ZIP desde el repositorio y extraerlo en tu máquina local.

### 2. Configurar Tomcat
1. Descarga e instala **Apache Tomcat** (si no lo tienes ya instalado).
2. Copia la carpeta del proyecto dentro del directorio `webapps` de Tomcat.
3. Asegúrate de que el archivo `web.xml` esté correctamente configurado en la carpeta `WEB-INF`.
4. Inicia Tomcat ejecutando el script correspondiente:
   
   - **En Windows:**
     ```sh
     C:\tomcat\bin\startup.bat
     ```
   - **En macOS/Linux:**
     ```sh
     ./tomcat/bin/startup.sh
     ```

### 3. Acceder a la Aplicación
Una vez que Tomcat esté en ejecución, puedes acceder a la aplicación a través del navegador usando la siguiente URL:

```
http://localhost:8080/Parcial1/index.html
```

Si estás desplegando en un servidor remoto o en la nube, la URL dependerá del dominio o IP asignado al servidor.

## Notas Adicionales
- Si el puerto **8080** está en uso, puedes cambiarlo en el archivo `server.xml` dentro de la carpeta `conf` de Tomcat.
- Verifica los logs en `logs/catalina.out` si surge algún problema durante el despliegue.

Si tienes dudas o errores, revisa la documentación de Tomcat o consulta con tu instructor. 🚀

