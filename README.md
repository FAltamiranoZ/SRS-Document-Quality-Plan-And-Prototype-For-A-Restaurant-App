# QueremosDulces-ProyectoFinal

Preparado por QueremosDulces, integrantes:
- Jorge Enrique Gatica Fernández
- José Francisco Altamirano Zevallos
- Luis Gerardo Godfrey Castañeda

Creado el 23 de Noviembre del 2019

# Tabla de Contenidos

1. Software Requirements
   1. Requerimientos generales
   1. Requerimientos del cliente
   1. Requerimientos del repartidor
2. Plan de Calidad
3. Arquitectura y justificación
4. Metodología y justificación
5. Código del proyecto
6. Documentación para replicar


# Software requirements

Debido a la naturaleza de la aplicación, tendremos 2 tipos de usuarios; razón por la cual, nuestros requerimientos se dividirán en 3.
Esto para poder expresar de manera correcta los requerimientos que comparten y los exclusivos de cada usuario.

   ## Requerimientos generales

   ### Recuperación de contraseña

   **Descripción y prioridad**
   - Prioridad Magikarp.
   - El usuario es incapaz de recordar su contraseña, y necesitará recuperarla, utilizando su usuario o su correo electrónico.

   **Secuencia de respuesta**
   - El usuario introduce un nombre de usuario o correo electrónico no registrado en la base de datos --> Se mostrará un pop up que diga: “No hay ninguna cuenta con este nombre de usuario / correo ¿deseas crear una nueva cuenta?” y tenga en la parte de debajo un botón que redirija a la pantalla de creación de cuenta, que diga “Crear cuenta”.
   - El nombre de usuario o correo electrónico existe --> Se mostrará un pop up que diga “Revisa tu correo electrónico e introduce el código que se te mandó. Se paciente, el correo puede tardar algunos minutos en llegar” y en la parte de debajo habrá un espacio para introducir el código enviado por correo.
      - Si el código introducido es incorrecto --> Se muestra un mensaje que diga “Código incorrecto, vuelve a intentar”.
      -Si el código introducido es correcto --> Se redirige al usuario a la pantalla de creación de nueva contraseña.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de recuperación de contraseña. En esta habrá 1 Text Box a rellenar, con su correspondiente etiqueta de nombre de usuario o correo electrónico.
   
   Req-2: Pop up de nombre de usuario o de correo electrónico inexistente.
   
   Req-3: Pop up para introducción de código.

   Req-4: Mensaje de código incorrecto.


   ### Creación de nueva contraseña

   **Descripción y prioridad**
   - Prioridad Magikarp.
   - El usuario tiene acceso a su correo electrónico y desea restablecer su contraseña.

   **Secuencia de respuesta**
   - El usuario introduce una contraseña que no cumple con los requerimientos especificados --> Se despliega un mensaje que diga “Tu contraseña no cumple con los requerimientos especificados, esta debe de contener una mayúscula y un número”.
   - El usuario introduce una contraseña que ya había utilizado previamente --> Se despliega un mensaje que diga “Tu contraseña no puede ser una que ya hayas utilizado previamente”.
   - El usuario introduce una contraseña diferente en el campo de nueva contraseña y confirmación de nueva contraseña --> Se despliega un mensaje que diga “Las contraseñas que introdujiste en ambos campos no coinciden”.
   - El usuario introduce la misma contraseña en el campo de nueva contraseña y confirmación de nueva contraseña --> Se despliega un mensaje que diga “Se ha cambiado tu contraseña de manera exitosa” y se redirige al usuario a la página principal.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de restablecimiento de contraseña. En esta habrá 2 Text Box a rellenar, con sus correspondientes etiquetas de nueva contraseña y confirmación de nueva contraseña.
   
   Req-2: Mensaje de error requerimientos de contraseña.
   
   Req-3: Mensaje de error diferencia de contraseñas.

   Req-4: Mensaje de éxito.


   ### Iniciar sesión

   **Descripción y prioridad**

   - Prioridad Charizard.
   - El usuario desea ingresar con su nombre de usuario o correo electrónico y contraseña a la aplicación para poder hacer uso de esta.

   **Secuencia de respuesta**
   - El usuario introduce un nombre de usuario o correo electrónico no registrado en la base de datos --> Se mostrará un pop up que diga: “No hay ninguna cuenta con este nombre de usuario / correo ¿deseas crear una nueva cuenta?” y tenga en la parte de debajo un botón que redirija a la pantalla de creación de cuenta, que diga “Crear cuenta”.
   - El nombre de usuario o correo electrónico existe, pero la contraseña es incorrecta --> Se mostrará un pop up que diga: “La contraseña es incorrecta” y en la parte de debajo un botón que redirija a la pantalla de recuperación de contraseña, que diga “Olvidé mi contraseña”.
      - El nombre de usuario o correo electrónico existe y la contraseña es correcta --> Se redirigirá al usuario a la pantalla principal correspondiente a su tipo de usuario.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de inicio de sesión. En esta habrá 2 Text Box a rellenar, con sus correspondientes etiquetas de nombre de usuario o correo electrónico, y contraseña.
   
   Req-2: Pop up de nombre de usuario o de correo electrónico inexistente.
   
   Req-3: Pop up de contraseña incorrecta.


   ### Crear cuenta


   ### Perfil del usuario


   ### Información de contacto


   ## Requerimientos del cliente


   ### Pantalla principal


   ### Categorías


   ### Búsqueda


   ### Comercios


   ### Carrito


   ### Orden


   ### Reseña


   ## Requerimientos del repartidor


   ### Pantalla principal


   ### Pedido



# Plan de Calidad


# Arquitectura y justificación


# Metodología y justificación


# Código del proyecto


# Documentación para replicar

