# Queremos Dulces – Proyecto Final

Preparado por Queremos Dulces, integrantes:
- Jorge Enrique Gatica Fernández
- José Francisco Altamirano Zevallos
- Luis Gerardo Godfrey Castañeda

Creado el 23 de noviembre del 2019

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
   
   Req-1: Pantalla de recuperación de contraseña. Habrá 1 Text Box a rellenar, con su correspondiente etiqueta de nombre de usuario o correo electrónico.
   
   Req-2: Pop up de nombre de usuario o de correo electrónico inexistente.
   
   Req-3: Pop up para introducción de código.

   Req-4: Mensaje de código incorrecto.


   ### Creación de nueva contraseña

   **Descripción y prioridad**
   - Prioridad Magikarp.
   - El usuario tiene acceso a su correo electrónico y desea restablecer su contraseña.

   **Secuencia de respuesta**
   - El usuario introduce una contraseña que no cumple con los requerimientos especificados --> Se despliega un mensaje que diga “Tu contraseña no cumple con los requerimientos especificados, esta debe de contener una mayúscula, un número y ser de 8 caracteres de longitud”.
   - El usuario introduce una contraseña que ya había utilizado previamente --> Se despliega un mensaje que diga “Tu contraseña no puede ser una que ya hayas utilizado previamente”.
   - El usuario introduce una contraseña diferente en el campo de nueva contraseña y confirmación de nueva contraseña --> Se despliega un mensaje que diga “Las contraseñas que introdujiste en ambos campos no coinciden”.
   - El usuario introduce la misma contraseña en el campo de nueva contraseña y confirmación de nueva contraseña --> Se despliega un mensaje que diga “Se ha cambiado tu contraseña de manera exitosa” y se redirige al usuario a la página principal.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de restablecimiento de contraseña. Habrá 2 Text Box a rellenar, con sus correspondientes etiquetas de nueva contraseña y confirmación de nueva contraseña.
   
   Req-2: Mensaje de error requerimientos de contraseña.
   
   Req-3: Mensaje de error diferencia de contraseñas.

   Req-4: Mensaje de éxito.


   ### Iniciar sesión

   **Descripción y prioridad**

   - Prioridad Charizard.
   - El usuario desea ingresar con su nombre de usuario o correo electrónico y contraseña a la aplicación para poder hacer uso de esta.

   **Secuencia de respuesta**
   - Se hace clic en el botón de confirmar y el nombre de usuario o correo electrónico no esta registrado en la base de datos --> Se mostrará un pop up que diga: “No hay ninguna cuenta con este nombre de usuario / correo ¿deseas crear una nueva cuenta?” y tenga en la parte de debajo un botón que redirija a la pantalla de creación de cuenta, que diga “Crear cuenta”.
   - Se hace clic en el botón de confirmar y el nombre de usuario o correo electrónico existe, pero la contraseña es incorrecta --> Se mostrará un pop up que diga: “La contraseña es incorrecta” y en la parte de debajo un botón que redirija a la pantalla de recuperación de contraseña, que diga “Olvidé mi contraseña”.
      - Se hace clic en el botón de confirmar y el nombre de usuario o correo electrónico existe y la contraseña es correcta --> Se redirigirá al usuario a la pantalla principal correspondiente a su tipo de usuario.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de inicio de sesión. Habrá 2 Text Box a rellenar, con sus correspondientes etiquetas de nombre de usuario o correo electrónico, y contraseña. Al final de la pantalla habrá un botón que diga “confirmar”.
   
   Req-2: Pop up de nombre de usuario o de correo electrónico inexistente.
   
   Req-3: Pop up de contraseña incorrecta.


   ### Crear cuenta

**Descripción y prioridad**
   - Prioridad Mewtwo.
   - El usuario desea crear una cuenta para poder acceder a los servicios de la aplicación.

   **Secuencia de respuesta**
   - Se hace clic en el botón de crear y los campos no están rellenados de manera correcta --> Se mostrará un mensaje que especifique cuál es el error y en que parte se encuentra de la siguiente manera: “Hay un error en el campo x debido a y”
   - Se hace clic en el botón de crear y los campos son rellenados de manera correcta y el usuario no existe en la base de datos --> Se registra en la base de datos como un nuevo usuario, se despliega un mensaje que diga “Se ha creado tu usuario de manera correcta” y se le manda un correo de confirmación al correo introducido por el usuario en el campo correspondiente.
   - Se hace clic en el botón de crear y el usuario existe en la base de datos --> Se mostrará un pop up que diga "Este usuario ya está registrado" y redirigirá al usuario a la pantalla de inicio de sesión.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de creación de cuenta. Contará con los siguientes campos: nombre de usuario, correo electrónico, contraseña, numero de tarjeta, fecha de vencimiento, código de seguridad y nombre del titular. Cada uno de los campos contendrá su explicación correspondiente; como, por ejemplo, en el caso de las contraseñas las características que esta deberá de tener (1 mayúscula, un número y 8 caracteres de longitud). Al final de la pantalla habrá un botón que diga “crear”.
   
   Req-2: Mensaje de error rellenado de campos.
   
   Req-3: Mensaje de creación exitosa de cuenta.

   Req-4: Mensaje de error de usuario duplicado.


   ### Perfil del usuario
**Descripción y prioridad**
   - Prioridad Togepi.
   - El usuario desea consultar los datos correspondientes a su cuenta, como su historial de pedidos, correo registrado, etc.

   **Secuencia de respuesta**
   - Se hace clic sobre el botón de contacto --> Se redirigirá al usuario a la pantalla de información de contacto

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de información del usuario. Desplegará la siguiente información: estatus del usuario (repartidor o cliente), saldo actual, historial de pedidos, correo vinculado a la cuenta, nombre de usuario y número de tarjeta registrado. Al final de la pantalla habrá un cuadro de texto que diga “si tiene algún problema, no dude en ponerse en contacto con nosotros” y debajo habrá un botón que diga “Contacto”.


   ### Información de contacto

   - Prioridad Magikarp.
   - El usuario tiene algún problema con la aplicación, con un pedido o desea dar feedback.

   **Secuencia de respuesta**
   - Se hace clic sobre el drop down list --> Se desplegarán las siguientes opciones: problema con un pedido, problema con la aplicación, feedback y otro.
   - Se hace clic sobre el botón de enviar y los campos no son rellenados de manera correcta --> Se mostrará un mensaje que especifique cuál es el error y en que parte se encuentra de la siguiente manera: “Hay un error en el campo x debido a y”
   - Se hace clic sobre el botón de enviar y los campos son rellenados de manera correcta --> Se mostrará un mensaje que diga “Gracias por ponerse en contacto con nosotros, le responderemos a la brevedad”

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de contacto. Desplegará el número de teléfono de atención al cliente, un cuadro de texto que diga “Si prefiere contactarse con nosotros por correo, agregue su correo, escoja la categoría y describa su problemática en el recuadro de abajo”, un TextBox con la etiqueta correo, un Drop Down List con la etiqueta categoría y un Text Box muy grande con la etiqueta recomendaciones.


   ## Requerimientos del cliente


   ### Pantalla principal

**Descripción y prioridad**
   - Prioridad Mewtwo.
   - El usuario de tipo cliente accede a la aplicación, y en la pantalla principal se despliegan recomendaciones personalizadas, opciones populares del día, una barra de búsqueda y una barra de categorías, así como la opción de entrar a su perfil.

   **Secuencia de respuesta**
   - Se hace clic en la barra de búsqueda --> Se aplica un efecto de blur a toda la pantalla excepto a la barra de búsqueda y se activa la capacidad de escribir en la barra de búsqueda
      - Se hace clic en el botón de búsqueda (la lupa) o se confirma con enter después de haber escrito algo --> Se redirige al usuario a la pantalla de resultados, e internamente, se manda la información de lo escrito.
      - Se hace clic en el botón de búsqueda (la lupa), se confirma con enter sin haber escrito algo, se presiona el botón de atrás propio del teléfono o se hace clic en la sección borrosa --> Se quita el efecto de blur y se regresa la pantalla de inicio a la normalidad.

   - Se hace clic en la barra de categorías --> Se redirige al usuario a la pantalla de resultados, e internamente, se manda la información de la categoría seleccionada.
   - Se hace clic en el botón del perfil de usuario --> Se redirige al usuario a la pantalla de perfil del usuario
   - Se hace clic en alguna imagen de los comercios --> Se redirige al usuario a la pantalla de comercio correspondiente.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de Inicio. Estará distribuida de la siguiente manera. Ícono de usuario en la parte superior izquierda, barra de búsqueda a lado del ícono de usuario ocupando el resto de la parte superior, barra de categorías debajo de la barra de búsqueda, del espacio restante, en la mitad superior estarán las recomendaciones personalizadas de comercios y en la mitad inferior recomendaciones del día de comercios.
   
   Req-2: Barra de búsqueda. Se activará la funcionalidad de escribir al hacer clic en ella y se desactivará al confirmar la búsqueda o cancelarla.

   Req-3: Carrousel de comercios. Se podrán ver los diferentes comercios y hacer un scroll horizontal para poder visualizar más opciones.

   
   ### Resultados

**Descripción y prioridad**
   - Prioridad Togepi.
   - El usuario de tipo cliente tiene una idea general sobre lo que desea pedir, por lo que escoge una categoría o realiza una búsqueda y entonces, la aplicación despliega opciones que concuerden con lo buscado.

   **Secuencia de respuesta**
   - Se hace clic en el botón de filtros --> Se despliega el menú de filtros.
   - Se hace clic en el botón de confirmar en el menú de filtros -->Se redespliega la pantalla de resultados aplicando los filtros correspondientes.
   - Se hace clic en alguna imagen de los comercios --> Se redirige al usuario a la pantalla de comercio correspondiente.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de resultados. Tendrá en la parte superior un botón que diga “filtros” y debajo de ella habrá un listado en forma de columna de los comercios que concuerden con los filtros especificados; se deberá de poder hacer scroll down en esta pantalla.
   
   Req-2: Menú de filtros. Tendrá como opciones de filtro un deslizador de precios, de distancia, de calificación y de palabras; se deberán de poder activar o desactivar haciendo clic sobre ellos y se notará que están activados si son de color verde o grises si se encuentran desactivados. Además, tendrá un botón de confirmar que aplicará los filtros de búsqueda a la pantalla de resultados, refrescándola para que muestre lo deseado.


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


