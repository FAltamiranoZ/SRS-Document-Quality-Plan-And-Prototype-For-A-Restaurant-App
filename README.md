# Queremos Dulces – Proyecto Final

Preparado por Queremos Dulces, integrantes:
- Jorge Enrique Gatica Fernández
- José Francisco Altamirano Zevallos
- Luis Gerardo Godfrey Castañeda

Creado el 23 de noviembre del 2019

# Tabla de Contenidos

1. Software Requirements Specification
   1. Introducción
      1. Propósito
      1. Convenciones del documento
      1. Audiencia y recomendaciones de lectura
      1. Objetivo
      1. Referencias
   1. Descripción
      1. Perspectiva del producto
      1. Funcionalidades del producto
      1. Clases y características del usuario
      1. Ambiente de operación
      1. Restricciones de diseño e implementación
      1. Documentación para el usuario
      1. Suposiciones y dependencias
   1. Requerimientos de interfaz externa
      1. Interfaces del usuario
      1. Interfaces del hardware
      1. Interfaces del software
      1. Interfaces de comunicación
   1. Funcionalidades del sistema
      1. Requerimientos generales
      1. Requerimientos del cliente
      1. Requerimientos del repartidor
   1. Otros requerimientos
      1. Requerimientos de desempeño
      1. Requerimientos de seguridad
      1. Atributos de calidad de software
      1. Reglas de negocio
2. Plan de Calidad
   1. Identificador del Plan de Calidad
   1. Referencias
   1. Introducción
   1. Items de Prueba
   1. Problemas o Riesgos del Software
   1. Funcionalidades a probar
   1. Funcionalidades que no serán probadas
   1. Criterios para aprobar o reprobar un elemento
   1. Criterios de suspensión y continuación de los requisitos
   1. Pruebas de requisitos pendientes
   1. Necesidades especiales para el proyecto
   1. Entrenamiento y necesidades del staff
   1. Planeación de Riesgos y eventualidades
   1. Estatus de aprobación
3. Arquitectura y justificación
4. Metodología y justificación
5. Código del proyecto
6. Documentación para replicar


# Software requirements specification

   ## Introducción


   ### Propósito

   El propósito de este proyecto es crear una aplicación que resuelva la necesidad de tener un acceso rápido y fácil a las distintas opciones de alimentos que se encuentran alrededor del campus ITAM.


   ### Convenciones del documento
   
   Para la parte de los requerimientos funcionales:
   - Se usará un mensaje cuando no haya interacción con el usuario y un pop up cuando la haya (botones, confirmación, cuadros a rellenar, etc).
   - Solo se registrará un requerimiento adicional si dicha funcionalidad no esta presente desde el inicio en la carga de la pantalla.
   - Para las prioridades se utilizó una clasificación basada en Pokemon, la cual va de menor a mayor de la siguiente manera: Magikarp, Togepi, Charizard y Mewtwo

   Generales:
   - Cuando este escrito comercio, se hace referencia a cada negocio registrado, como por ejemplo el globo, o chente.
   - En el caso del Software requirements specification, se eliminaron secciones sugeridas por el documento debido a que no aplicaban o no eran relevantes para este proyecto.

   Funcionamiento de la aplicación:
   - Todo comercio estará representado por una tarjeta, la cual cuenta con la imagen principal escogida, el nombre del lugar.
   - Se considera que para regresar a la página anterior, se usa el botón de atrás propio del teléfono.

   Para la sección de funcionalidades del sistema:
   - Debido a la naturaleza de la aplicación, tendremos 2 tipos de usuarios; razón por la cual, nuestros requerimientos se dividirán en 3. Esto para poder expresar de manera correcta los requerimientos que comparten y los exclusivos de cada usuario.


   ### Audiencia y recomendaciones de lectura

   Este documento fue escrito teniendo en mente que aquellos interesados en su lectura serían solamente miembros pertenecientes al grupo; tanto alumnos como la profesora.
   Razón por la cual, se espera que todos cuenten con el mismo nivel y no haya que introducir términos con los que ya todos estan familiarizados


   ### Alcance

   Se espera que este producto tenga un impacto en el alumnado de la comunidad ITAM y en la comunidad que estos generan, involucrando de esta manera a profesores, administrativos, miembros de la colonia, etc.


   ### Referencias

   La composición de este artículo hace referencia a la estructura sugerida por los siguientes documentos:
   - Software Requirements Specification by Karl E. Wiegers.
   - Test Plan Outline, the IEEE 829 format.


   ## Descripción


   ### Perspectiva del producto

   El producto especificado en este documento es independiente; no es parte de la familia de ningún otro producto que hayamos desarrollado previamente ni una funcionalidad. Es un producto completamente nuevo y autocontenido.


   ### Funcionalidades del producto

   - Recuperación de contraseña.
   - Creación de nueva contraseña.
   - Iniciar sesión.
   - Crear cuenta.
   - Perfil del usuario.
   - Información de contacto.
   - Pantalla principal del cliente.
   - Resultados.
   - Comercios.
   - Carrito.
   - Orden.
   - Reseña.
   - Pantalla principal del repartidor.
   - Pedido.


   ### Clases y características del usuario

   Principalmente, los usuarios de la aplicación se dividirán en 2, clientes y repartidores. Y en ambos casos, se tendrán pocas diferencias entre usuarios de la misma clase, debido a que la zona de trabajo que comprende la aplicación es muy reducida (solamente el ITAM).
   Por el lado de los clientes, se espera que haya 2 tipos de usuarios, profesores y alumnos. 
   - Se espera que los profesores tengan un menor uso de la aplicación debido a que podrían considerar incomodo que un alumno que conocen o al que le dan clase venga a darles comida. Como perfil, se espera que todos tengan un nivel suficiente de habilidad técnica para hacer uso de la aplicación sin problema alguno.
   - Se espera que los estudiantes tengan un uso extensivo de la aplicación debido a las largas estancias que estan en el ITAM y que no suelen ver un problema con que un conocido o compañero les traiga la comida. De la misma manera, se espera que todos tengan la suficiente habilidad para usar la aplicación sin problema.
   
   Por el lado de los repartidores, se espera que de igual manera haya 2 tipos de usuarios, alumnos y miembros de la comunidad Tizapan.
   - Se espera que los estudiantes no hagan tanto uso de esta funcionaliad, ya que podrían no sentirse comodos con ir a recogerle la comida a alguno de sus iguales o inclusive, alguno de sus compañeros; además, los horarios que manejan dificultarían la disponibilidad de los alumnos para poder sacar el mayor provecho de la aplicación.
   - Se espera que los miembros de la comunidad Tizapan sean los que un mayor uso hagan de esta aplicación, debido a su mayor flexibilidad de horarios y que en su mayor parte no tendrían ningun problema con llevarle comida a algún alumno; la única problemática es que podrían llegar a experimentar dificultades con la aplicación, considerando que tal vez no todos tengan la suficiente habilidad técnica (por simple que sea esta aplicación) para poder hacer uso de ella. 


   ### Ambiente de operación




   ### Restricciones de diseño e implementación

   El diseño de esta aplicación se realizó tomando en cuenta las siguientes restricciones.
   - La selección de productos es limitada
   - Una sola tarjeta de crédito por usuario(por el momento no se puede configurar)
   - No hay pantalla de configuración
   - El proveedor no puede cancelar el pedido, pero si puede rechazarlo.
   - No se califica ni se reporta a los proveedores
   - No hay comunicación entre cliente y proveedor
   

   ### Suposiciones y dependencias




   ### Documentación del usuario
   
   Tomando en cuenta que nuestro software es una aplicación para celulares, tenemos la seguridad de que no es necesario poder dar una guía de uso sin embargo, la ayuda la pueden buscar en las páginas oficiales de la empresa junto con los teléfonos marcados en la aplicación.



   ## Requerimientos de interfaz externa

   Nuestra interfaz gráfica es muy sencilla y consta de 4 menús diferentes por el momento.

   ![alt text](fotos/01.jpg =100x20 )


   ### Interfaces del usuario



   ### Interfaces del hardware



   ### Interfaces del software



   ### Interfaces de comunicación



   ## Funcionalidades del sistema

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
   - Se hace clic sobre el botón de órdenes y hay al menos una orden activa --> Se redirige al usuario a la pantalla de orden.
   - Se hace clic sobre el botón de órdenes y no hay una orden activa --> Se mostrará un mensaje que diga “No tienes ordenes activas por ahora”

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de información del usuario. Desplegará la siguiente información: estatus del usuario (repartidor o cliente), saldo actual, historial de pedidos, correo vinculado a la cuenta, nombre de usuario y número de tarjeta registrado. Después habrá un botón que diga “Consultar mis órdenes actuales” y al final de la pantalla habrá un cuadro de texto que diga “si tiene algún problema, no dude en ponerse en contacto con nosotros” y debajo habrá un botón que diga “Contacto”.

   Req-2: Mensaje de error de órdenes


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

**Descripción y prioridad**
   - Prioridad Mewtwo.
   - El usuario de tipo cliente seleccionó el comercio que le interesa, por lo que se despliega toda la información correspondiente al negocio y los productos que ofrece.

   **Secuencia de respuesta**
   - Se hace clic en el botón de “+” cuando el contador se encuentra en 0 --> Aumenta en uno el contador del producto y activa la opción de hacer clic en el “-”.
   - Se hace clic en el botón de “+” cuando el contador se encuentra en algo diferente a 0 --> Aumenta en uno el contador del producto.
   - Se hace clic en el botón de “-” cuando el contador se encuentra en 1 --> Disminuye en uno el contador del producto y se bloquea la opción de hacer clic en el “-”
   - Se hace clic en el botón de “-” cuando el contador se encuentra en algo diferente a 1 --> Disminuye en uno el contador del producto.
   - Se hace clic en el botón de agregar al carrito cuando todos los contadores de producto están en 0 --> Se despliega un mensaje que diga “Tu carrito está vacío”.
   - Se hace clic en el botón de agregar al carrito cuando al menos un contador está en algo diferente a 0 --> Se redirije al usuario a la pantalla de carrito.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de comercio. Tendrá en la parte superior la información del comercio; es decir, la imagen principal, el nombre del lugar, distancia de la ubicación actual y clasificación. En la parte inferior estarán listados todos los productos de la siguiente manera: imagen, nombre del producto, de que esta hecho y precio. Y a su derecha habrá un botón de “+”, un contador y un botón de “-” que serán la manera de pedir la cantidad deseada del producto. En la parte inferior de la pantalla estará un botón que diga “Agregar al carrito”. En esta pantalla se debe de poder hacer scroll down.

   Req-2: Mensaje de error de carrito.


   ### Carrito

**Descripción y prioridad**
   - Prioridad Mewtwo.
   - El usuario de tipo cliente escogió ciertos productos y ahora desea modificar su compra o finalizarla.

   **Secuencia de respuesta**
   - Se hace clic en el botón de quiero seguir comprando --> Se guarda el estado actual del carrito y se redirige al usuario a la pantalla principal.
   - Se hace clic en el botón de modificar mi orden --> Se despliega un pop up que permita modificar la cantidad que se tiene de cada producto.
   - Se hace clic en el botón de completar mi orden --> Se redirige al usuario a la pantalla de Orden.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de carrito. Estará compuesta por un listado, donde se puede ver el nombre de lo que se está pidiendo, la cantidad pedida, el costo por unidad y al final, el costo total; además, habrá debajo de esto 3 botones. A la izquierda el botón de seguir comprando, en medio el de modificar la orden y a la derecha el de completarla.

   Req-2: Pop up de modificar orden. Se aplicará un efecto de blur a toda la pantalla excepto al pop-up, donde podremos ver el mismo listado que en la pantalla de carrito, pero con los botones de “+” y “-” a los lados de la cantidad pedida. En la parte de abajo tendremos 2 botones, el de cancelar cambios, que dejará la orden tal como estaba antes de ser modificada y el de confirmar cambios, que actualizará la orden.


   ### Orden

**Descripción y prioridad**
   - Prioridad Togepi.
   - El usuario de tipo cliente ya realizó un pedido y ahora esta a la espera de que llegue el pedido, por lo que puede consultar el estatus actual de la orden para ver su progreso.

   **Secuencia de respuesta**
   - Se hace clic sobre un pedido --> Se muestra un pop up con la información básica del pedido y cuanto tiempo tardará en llegar.
   - Llega una orden --> Se despliega un mensaje que diga “Tu orden #xxxx está aquí” y se redirige al usuario a la pantalla de reseña

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de Orden. Se desplegarán en forma de listado vertical las órdenes que se encuentren activas actualmente y se actualizará esta pantalla cada minuto para reflejar los cambios que hayan sufrido.

   Req-2: Pop up de orden. Al hacer clic sobre una de las órdenes listadas, se abrirá un pop up, en el que podremos ver la información el pedido; es decir, el nombre del lugar, distancia a la ubicación actual, que se pidió, cantidad que se pidió y cuanto falta para que llegue al punto de destino.

   Req-3: Mensaje de éxito de orden.



   ### Reseña

**Descripción y prioridad**
   - Prioridad Magikarp.
   - El usuario de tipo cliente ya recibió su pedido y desea ayudar a la comunidad escribiendo una reseña sobre este.

   **Secuencia de respuesta**
   - Se hace clic sobre el botón de ahora no gracias --> Se redirigirá al usuario a la pantalla de inicio.
   - Se hace clic en el botón de compartir experiencia y los campos no están rellenados de manera correcta --> Se mostrará un mensaje que especifique cuál es el error y en que parte se encuentra de la siguiente manera: “Hay un error en el campo x debido a y”
   - Se hace clic sobre el botón compartir experiencia y los campos están rellenados de manera correcta --> Se desplegará un mensaje que diga “Gracias por tu ayuda” y se redirigirá al usuario a la pantalla de inicio.

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de Reseña. En la parte de arriba de la pantalla habrá un mensaje que dice “Ayuda a otros usuarios compartiendo tu experiencia”, debajo habrá un deslizador de 1 a 5 estrellas y debajo de este, un text box grande donde escribir que tal te pareció la comida; por último, en la parte inferior de la página habrá 2 botones, uno dirá “Ahora no, gracias” y otro “Compartir tu experiencia”

   Req-2: Mensaje de error de campos.

   Req-3: Mensaje de éxito de reseña.


   ## Requerimientos del repartidor


   ### Pantalla principal

**Descripción y prioridad**
   - Prioridad Mewtwo.
   - El usuario de tipo proveedor accede a la aplicación, y en la pantalla principal se despliega un botón que dice “Buscar pedido” que permite al proveedor entrar a la cola de pedidos; así como la opción de consultar la información de su perfil

   **Secuencia de respuesta**
   - Se hace clic en el botón del perfil de usuario --> Se redirige al usuario a la pantalla de perfil del usuario
   - Se hace clic en el botón de buscar pedido --> Se considera al usuario como activo y se le agrega a la cola de pedidos; además, el texto del botón es reemplazado por “Salir de la cola”
   - Se hace clic sobre el botón de salir de la cola --> Se considera al usuario como inactivo y se le quita de la cola de pedidos; además, el texto del botón es reemplazado por “Buscar pedido”
   - Se encuentra un pedido --> Aparece un pop up que dice de dónde se recoge el pedido y dónde se debe de entregar
      - Se presiona el botón de aceptar pedido --> Se redirige al usuario a la pantalla de pedido
      - Se presiona el botón de rechazar pedido --> Se pasa al usuario al final de la cola de pedidos

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de Inicio. Habrá en la parte superior izquierda un ícono de usuario y en la parte central de la pantalla, el botón de pedidos; este debe de tener la capacidad de agregar y remover al usuario de la cola de pedidos.

   Req-2: Pop up de pedido. En este, habrá un recuadro en el que se especificará la información básica del pedido; además, contará con 2 botones en la parte de abajo para poder rechazar y aceptar el pedido. Estos deben de tener la capacidad de mandar al usuario al final de la cola de pedidos y de aceptar el pedido y sacarlo de la cola de pedidos respectivamente


   ### Pedido

**Descripción y prioridad**
   - Prioridad Charizard.
   - El usuario tipo proveedor ya aceptó el pedido y necesita saber los detalles de este.

   **Secuencia de respuesta**
   - Se hace clic en el botón de mapa --> Se abre de manera externa la aplicación predeterminada del teléfono para navegación por GPS y se manda la información de la ubicación actual y la destino

   **Requerimientos - funcionalidades**
   
   Req-1: Pantalla de Pedido. De desplegará en pantalla toda la información relevante al pedido; es decir, el nombre y ubicación y distancia hacia lugar del que se tiene que recoger la comida y nombre ubicación y distancia hacia el lugar donde se debe de entregar la comida. Además, debajo de esta información hay un botón que dice “mapa” que le despliega al usuario la ruta a seguir calculada por la aplicación de navegación por GPS predeterminada de su teléfono.



   ## Otros requerimientos


   ### Requerimientos de desempeño



   ### Requerimientos de seguridad



   ### Atributos de calidad de software



   ### Reglas de negocio



# Plan de Calidad

## Identificador del Plan de Calidad

YourFood_ISITAM.12.04

## Referencias

Las referencias utilizadas para la realización de este proyecto están en poder de la profesora Paulina Bustos Arellano, y pueden ser consultados por ella en el momento deseado. Hicimos un esfuerzo honesto para seguirlos al pie de la letra, y consideramos inecesario volver a replicarlos aquí.

## Introducción

Con el objetivo de hacer el mejor proyecto posible, el equipo de YourFood se planteó una serie de pruebas, las cuales ayudarán a probar que el sistema es lo suficientemente seguro para ser lanzado al mercado, y ser de utilidad a todos los usuarios que pudieran utilizarlo. Dichas pruebas serán descritas a continuación, y demostradas en vivo frente al panel de inversores el Viernes 6 de Diciembre, aproximadamente a las 07:30 am.

Para realizar dicha tarea, nuestro documento base fueron las presentaciones de la profesora Paulina Bustos Arellano, las cuales fueron de gran utilidad para alcanzar dicha finalidad. Sin embargo, dado que el tiempo para la realización de este proyecto no fue tan amplio como parecía en nuestras mentes, el espectro de prueba es limitado a lo que pudo programar Gerardo en la Demo. El proyecto final, sin embargo, tendrá como base todas las funcionalidades descritas en este documento, y si se nos ocurren más, pues más.

## Items de Prueba

En esta versión del sistema, probaremos únicamente algunas funcionalidades, que consideramos la base de nuestro modelo de negocio. Una vez cimentados dichos elementos, podremos implementar elementos adicionales

## Problemas o Riesgos del Software

El principal problema que se ve con el Software es la escasez de usuarios repartidores en horas clave, lo cual haría que nuestros sistema se alentara, y los clientes dejaran de utilizar la aplicación.

## Funcionalidades a probar

- Creación de cuenta
- Inicio de sesión
- Recuperación de contraseña
- Pedido

## Funcionalidades que no serán probadas

Las siguientes funcionalidades quedarán pendiente para su posterior implementación:

- Carrito
- Reseña

## Criterios para aprobar o reprobar un elemento

Para decidir si uno de nuestros elementos se considera aprobado o no, los criterios fueron enteramente funcionales. Se probaron los elementos en todas sus combinaciones, aprovechando que no es muy extensa. En caso de notar algún problema con alguno de los elementos, se consideró reprobado, y volvimos a trabajar en ello.

## Criterios de suspensión y continuación de los requisitos

En caso de que uno de los requisitos demuestre no aportar utilidad a nuestro proyecto, ya sea por los problemas de integración con otros elementos, o la dificultad per se de implementación, se decidirá suspenderlo, hasta que se replantee lo suficiente para que los problemas dejen de estar presentes, o se le pueda dedicar más recursos en tiempo y esfuerzo para su correcta implementación.

## Pruebas de requisitos pendientes

## Necesidades especiales para el proyecto

Nuestro sistema requerirá un sistema de mapas, especificamente Google Maps, el cuál necesita la implementación de una API externa a nuestra aplicación

## Entrenamiento y necesidades del staff

Se debe hacer una capacitación a los repartidores, la cual correra por parte de los integrantes de YourFood, para asegurarnos que los pedidos se manejen de manera correcta, y que los usuarios reciban un servicio de la calidad que esperan.

## Planeación de Riesgos y eventualidades

Dada la pequeña escala del proyecto y el grupo de trabajo, el manejo de eventualidades correrá directamente por parte del equipo de YourFood, lo cuál se manejará a la brevedad.

Dado que es un proyecto diseñado por y para ITAMitas, los horarios de servicio estarán limitados a los horarios de clase, dígase lunes a viernes de 07:00 a 22:00 horas. Esos mismos serán los horarios de atención de eventualidades.

## Estatus de aprobación

En este momento, el proyecto se considera aprobado para su distribución en estado Alfa.

# Arquitectura y justificación

## Arquitectura basada en eventos

Se escogió la Arquitectura basada en eventos como la arquitectura bajo la cual desarrollaríamos nuestro proyecto, tomando las siguientes como posibles opciones: Arquitectura por capas, basada en eventos, microkernel, microservicios y basada en espacio.

En específico, se seleccionó la arquitectura por eventos dado que será necesario establecer diferentes roles de usuario, el repartidor y el usuario, cada uno con sus eventos distintos, que deben ser manejados en conjunto. Por esta razón, se utilizarían diferentes manejadores de evento, de manera que cada rol tenga establecidas sus acciones dependiendo de su rol. Dichos eventos se podrán desarrollar en paralelo utilizando esta arquitectura, lo cuál otorgaría la versatilidad necesaria a nuestro proyecto para actualizarse y renovarse sin sacrificar los tiempos de desarrollo.

# Metodología y justificación

Se escogió espiral como metodología debido a que, como opciones se encontraban las siguientes: cascada, agile, Scram, Kanban, Scramban, rapid, dinámica, espiral y extreme.

Debido a la naturaleza del producto, no se puede sacar una función en dos - cuatro semanas y esperar que esta sea algo útil para el cliente, ya que Rappi-ITAM debe de estar completamente funcional previo al lanzamiento para que este tenga éxito, razón suficiente para descartar agile, Scram, Kanban y Scramban. Por la misma razón, probar con prototipos es poco viable, ya que solo es testeable el producto completo, por lo que descarta prototype.

Como no se esta desarrollando algo que siga un estándar, se descalifican de la misma manera las metodologías de rapid y cascada.

Se parte de la idea de que el producto es viable y generaría valor en el área en el que se desplegaría, por lo que se descarta la metodología dinámica.

Con esto, quedan las metodologías de extreme y espiral; debido a que no nos encontramos en un ambiente de desarrollo inestable, y múltiples funcionalidades se van a requerir al mismo tiempo, se terminó descartando extreme en favor de espiral. Siendo entonces que se piensa desarrollar primero las funciones de mayor envergadura para terminar con las más simples.



# Código del proyecto


# Documentación para replicar


