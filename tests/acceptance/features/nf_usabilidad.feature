# language: es

Característica: Usabilidad de la plataforma
  Como estudiante universitario
  Quiero que la plataforma sea clara e intuitiva
  Para consultar perfiles, indicadores y evaluaciones sin dificultad.

  @NoFuncional @Usabilidad
  Escenario: Navegación clara por las secciones principales
    Dado que el usuario ha iniciado sesión en CollabTeam
    Cuando navega por las secciones "Buscar estudiantes", "Perfil colaborativo", "Evaluaciones" y "Resumen de desempeño"
    Entonces el sistema debe mostrar menús y botones claros
    Y el usuario debe identificar fácilmente la función principal de cada sección
    Y debe poder acceder a una funcionalidad principal en un máximo de tres pasos

  @NoFuncional @Usabilidad
  Escenario: Realización de una acción básica sin ayuda externa
    Dado que el usuario ingresa por primera vez a la plataforma
    Cuando intenta buscar un estudiante y visualizar su perfil colaborativo
    Entonces el sistema debe permitir completar la acción sin requerir ayuda externa
    Y debe mostrar mensajes comprensibles durante la navegación
    Y debe mantener una distribución visual ordenada de la información
