La API esta desplegada en AWS y puede ser consultada en http://54.85.253.46:8080/api/nave

# Instalación en local
## Requerimientos
- JDK 17

## Instalación
- Descargar el JAR atraves de [https://github.com/YoanSinH/eesofka-Backend/releases/tag/build](https://github.com/YoanSinH/eesofka-Backend/releases)

## Configuración
- Descargar la base de datos https://github.com/YoanSinH/eesofka-Backend/blob/main/eesofka.sql e importarla. (No es necesario ya que se crea automaticamente)
- Iniciar el servicio de MySQL en el puerto por defecto 3306. (phpmyadmin fue el usado)


## Ejecutar
- Abrir la consola en la ruta del JAR descargado y ejecutarlo:
`java -jar .\eesofka-0.0.1-SNAPSHOT.jar`

## Consultar
`http://localhost:8080/api/nave`
