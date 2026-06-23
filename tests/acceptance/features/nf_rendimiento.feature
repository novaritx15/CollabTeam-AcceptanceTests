# language: es

Característica: Rendimiento de la plataforma
  Como estudiante universitario
  Quiero que las búsquedas, filtros y consultas carguen rápidamente
  Para no perder tiempo al formar mi equipo de trabajo.

  @NoFuncional @Rendimiento
  Escenario: Búsqueda de estudiantes en tiempo adecuado
    Dado que existen estudiantes registrados en la plataforma
    Cuando el usuario realiza una búsqueda por nombre o código universitario
    Entonces el sistema debe mostrar los resultados en un tiempo máximo de 3 segundos
    Y debe permitir acceder al perfil de cada estudiante desde la lista de resultados

  @NoFuncional @Rendimiento
  Escenario: Aplicación de filtros sin bloquear la plataforma
    Dado que el usuario se encuentra en la lista de estudiantes disponibles
    Cuando aplica filtros de desempeño, responsabilidad o compromiso
    Entonces el sistema debe actualizar los resultados en un tiempo máximo de 3 segundos
    Y la plataforma no debe bloquear la interacción del usuario mientras procesa la información
