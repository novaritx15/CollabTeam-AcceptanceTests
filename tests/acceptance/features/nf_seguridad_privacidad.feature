# language: es

Característica: Seguridad y privacidad de la información
  Como estudiante universitario
  Quiero que mi información personal y mis evaluaciones estén protegidas
  Para evitar accesos no autorizados y mantener la confiabilidad de la plataforma.

  @NoFuncional @Seguridad @Privacidad
  Escenario: Bloqueo de acceso a perfil privado
    Dado que un usuario ha configurado la visibilidad de su perfil como privada
    Cuando otro usuario sin permisos intenta acceder al perfil colaborativo
    Entonces el sistema bloquea el acceso a la información restringida
    Y muestra el mensaje "No tienes permisos para visualizar este perfil"
    Y mantiene protegidos los datos configurados como privados

  @NoFuncional @Seguridad @Privacidad
  Escenario: Protección de evaluaciones ante usuarios no autenticados
    Dado que un usuario no ha iniciado sesión en la plataforma
    Cuando intenta acceder a evaluaciones, indicadores o historial colaborativo de un estudiante
    Entonces el sistema debe redirigirlo a la pantalla de inicio de sesión
    Y no debe mostrar información personal ni colaborativa
    Y debe impedir el acceso a datos restringidos
