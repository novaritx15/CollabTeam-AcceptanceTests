# language: es

Característica: Compatibilidad móvil
  Como estudiante universitario
  Quiero utilizar CollabTeam desde mi celular o tablet
  Para consultar información y realizar evaluaciones en cualquier momento.

  @NoFuncional @CompatibilidadMovil
  Escenario: Acceso exitoso desde un dispositivo móvil
    Dado que el usuario accede a la plataforma desde un teléfono móvil o tablet
    Y dispone de conexión a Internet
    Cuando navega por las funcionalidades principales del sistema
    Entonces el sistema adapta automáticamente la interfaz al tamaño de la pantalla del dispositivo
    Y muestra correctamente los menús, perfiles, indicadores y evaluaciones
    Y permite utilizar las funcionalidades principales sin desplazamiento horizontal

  @NoFuncional @CompatibilidadMovil
  Escenario: Visualización correcta en diferentes resoluciones móviles
    Dado que el usuario accede a la plataforma desde dispositivos móviles con distintas resoluciones de pantalla
    Cuando visualiza perfiles colaborativos, rankings o formularios de evaluación
    Entonces el sistema reorganiza automáticamente los elementos de la interfaz para mantener la legibilidad
    Y conserva la funcionalidad de botones, formularios y menús de navegación
    Y evita que la información se superponga o quede oculta en la pantalla
