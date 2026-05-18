# Observatorio

Portal web del Observatorio de Buenas Practicas para el Aseguramiento de la Calidad en la Educacion Superior (OBPACES), vinculado a la Universidad Tecnica de Cotopaxi. El repositorio incluye el sitio publico, modulos de contenido institucional y un panel administrativo en PHP para gestionar publicaciones, proyectos, noticias, eventos, alianzas, evaluadores y otros recursos.

## Descripcion general

El proyecto esta construido con PHP y MySQL/MariaDB, sin framework moderno. Combina:

- Un frontend publico con paginas informativas y de consulta.
- Un backend administrativo en `sis_inventario/` con estructura tipo MVC.
- Un volcado SQL con datos iniciales en `basededatos/obsebarotio1.sql`.
- Formularios y modulos auxiliares para contacto y validaciones.

## Funcionalidades principales

- Gestion de noticias y banners.
- Gestion de publicaciones y documentos.
- Gestion de proyectos.
- Gestion de eventos.
- Gestion de alianzas institucionales.
- Gestion de evaluadores y hojas de vida.
- Galeria de imagenes.
- Panel administrativo con login y perfiles de usuario.
- Modulos auxiliares de contacto y pruebas.

## Tecnologias usadas

- PHP
- MySQL o MariaDB
- PDO, MySQLi e Idiorm
- HTML, CSS y JavaScript
- Bootstrap
- AdminLTE en el panel administrativo
- Librerias frontend incluidas dentro de `assets/` y `sis_inventario/vistas/`

## Estructura del proyecto

```text
Observatorio/
|- index.php                 Pagina principal del sitio
|- header.php                Encabezado comun
|- footer.php                Pie de pagina comun
|- connect.php               Conexion principal a la base de datos
|- basededatos/
|  |- obsebarotio1.sql       Estructura y datos iniciales
|- assets/                   CSS, JS, imagenes y librerias del frontend
|- forms/                    Formulario de contacto de la plantilla base
|- contacto2/                Formulario alternativo guardado en base de datos
|- validar/                  Ejemplos de validacion / pruebas auxiliares
|- sis_inventario/           Panel administrativo y modulos de gestion
|  |- index.php
|  |- controladores/
|  |- modelos/
|  |- vistas/
|  |- ajax/
|  |- extensiones/
|  |- xml/
```

## Requisitos

- PHP 7.4 o superior
- MySQL 5.7+ o MariaDB 10.4+
- Apache o Nginx con soporte para PHP
- Navegador moderno

Nota: el volcado SQL fue generado desde phpMyAdmin con MariaDB 10.4.32 y PHP 8.2.12.

## Instalacion local

### 1. Clonar o copiar el proyecto

```bash
git clone <tu-repositorio>
cd Observatorio
```

O bien copia la carpeta dentro de tu servidor local, por ejemplo `htdocs/Observatorio` en XAMPP.

### 2. Crear la base de datos

Crea una base con este nombre exacto:

```sql
CREATE DATABASE obsebarotio1 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

### 3. Importar el script SQL

Importa el archivo:

```text
basededatos/obsebarotio1.sql
```

Ejemplo desde consola:

```bash
mysql -u root -p obsebarotio1 < basededatos/obsebarotio1.sql
```

### 4. Revisar las conexiones a la base de datos

El proyecto usa conexiones hardcodeadas en varios archivos. Verifica al menos estos:

- `connect.php`
- `connect2.php`
- `sis_inventario/modelos/conexion.php`

Valores actuales encontrados en el repo:

```php
host: localhost
usuario: root
password: ""
base de datos: obsebarotio1
```

### 5. Dependencias adicionales

El panel incluye `sis_inventario/extensiones/vendor/`, por lo que la dependencia principal ya esta presente en el repo.

Si en algun momento eliminas `vendor/`, puedes reinstalar desde:

```bash
cd sis_inventario/extensiones
composer install
```

### 6. Abrir el proyecto

Frontend publico:

```text
http://localhost/Observatorio/
```

Panel administrativo:

```text
http://localhost/Observatorio/sis_inventario/
```

## Rutas utiles

- `/` Inicio del sitio
- `/noticias.php` Noticias
- `/proyectos.php` Proyectos
- `/publicacion.php` Publicaciones
- `/eventos.php` Eventos
- `/alianzas.php` Alianzas
- `/evaluadores.php` Evaluadores
- `/galeria.php` Galeria
- `/contacto.php` Contacto
- `/sis_inventario/` Administracion

## Base de datos y datos iniciales

El archivo SQL incluye datos de ejemplo y tablas para:

- noticias y banners
- proyectos
- publicaciones
- eventos
- evaluadores
- alianzas
- clientes
- usuarios
- configuraciones generales del sitio

Tambien existen tablas antiguas o auxiliares, por lo que conviene revisar la estructura antes de pasar a produccion.

## Credenciales y seguridad

El proyecto contiene configuraciones y datos de acceso sembrados en el SQL y en archivos PHP. Antes de usarlo en un entorno real, se recomienda:

- cambiar todas las credenciales de base de datos
- revisar los usuarios importados desde la tabla `usuarios`
- cambiar cualquier usuario demo o de prueba
- mover credenciales fuera del codigo fuente
- activar HTTPS en produccion
- validar y sanitizar entradas de formularios
- revisar permisos de subida de archivos

Nota: el SQL incluye al menos un acceso legado en `table_admin` con credenciales simples de ejemplo. No debe usarse en produccion sin cambios.

## Observaciones importantes

### 1. Formulario de `forms/`

El archivo `forms/contact.php` depende de la libreria propietaria `PHP Email Form` de la plantilla original y esa integracion no viene completa en este repositorio. Si quieres usar ese formulario, debes:

- integrar tu propio envio por correo
- o reemplazarlo por una solucion propia
- o usar el modulo alternativo dentro de `contacto2/`

### 2. Codificacion de caracteres

En varios archivos y datos SQL aparecen textos con problemas de codificacion. Se recomienda trabajar en UTF-8 y revisar:

- archivos PHP con textos visibles
- datos importados desde el SQL
- contenido que se edite desde el panel

### 3. Arquitectura mixta

El repositorio mezcla varios estilos de desarrollo:

- PHP procedural en el sitio publico
- conexiones directas con PDO y MySQLi
- un modulo administrativo con estructura MVC basica
- carpetas auxiliares de prueba o validacion

Eso significa que cualquier mantenimiento futuro conviene hacerlo con cuidado y por modulos.

## Desarrollo y mantenimiento

Si vas a continuar este proyecto, una ruta razonable de mejora seria:

1. centralizar la configuracion de base de datos
2. unificar la codificacion a UTF-8
3. retirar credenciales hardcodeadas
4. documentar usuarios y flujos del panel
5. separar modulos experimentales de los productivos
6. agregar validaciones y controles de seguridad mas robustos

## Estado actual

Este repositorio contiene una base funcional para administracion de contenido institucional, pero requiere ajuste de configuracion, revision de seguridad y limpieza tecnica antes de desplegarse en produccion.

## Licencia

No se encontro una licencia explicita en el repositorio. Si vas a publicarlo o reutilizarlo, agrega una licencia adecuada.
