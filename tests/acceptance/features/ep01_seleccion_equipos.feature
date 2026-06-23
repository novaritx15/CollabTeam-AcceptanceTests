# language: es

Característica: Gestión de selección de equipos
  Como estudiante universitario
  Quiero consultar información sobre el desempeño y experiencia colaborativa de otros estudiantes
  Para seleccionar compañeros adecuados y formar equipos de trabajo más equilibrados y eficientes.

  @EP01 @HU01
  Escenario: Consulta exitosa de indicadores de desempeño
    Dado que el estudiante seleccionado posee evaluaciones registradas de trabajos grupales anteriores
    Cuando el usuario accede al perfil colaborativo del estudiante
    Entonces el sistema muestra los indicadores de compromiso, responsabilidad y colaboración
    Y presenta el puntaje promedio obtenido en cada indicador
    Y muestra la fecha de la última actualización de los datos

  @EP01 @HU01
  Escenario: Estudiante sin información suficiente para generar indicadores
    Dado que el estudiante seleccionado no posee evaluaciones registradas de trabajos grupales anteriores
    Cuando el usuario accede al perfil colaborativo del estudiante
    Entonces el sistema informa que no existe información suficiente para generar indicadores de desempeño
    Y muestra únicamente la información básica disponible del estudiante
    Y evita presentar métricas incompletas o incorrectas

  @EP01 @HU05
  Escenario: Filtrado exitoso de estudiantes por desempeño
    Dado que existen estudiantes con indicadores de desempeño registrados
    Y el usuario se encuentra visualizando la lista de estudiantes disponibles
    Cuando selecciona un puntaje mínimo de desempeño colaborativo de 4 puntos
    Y aplica el filtro de responsabilidad alta
    Entonces el sistema muestra únicamente los estudiantes que cumplen ambos criterios
    Y presenta para cada estudiante su nombre, carrera, puntaje de desempeño y nivel de responsabilidad
    Y actualiza la lista de resultados sin necesidad de recargar la página

  @EP01 @HU05
  Escenario: Ningún estudiante cumple los filtros seleccionados
    Dado que no existen estudiantes que cumplan con los criterios de filtrado seleccionados
    Y el usuario se encuentra visualizando la lista de estudiantes disponibles
    Cuando aplica los filtros de desempeño y responsabilidad
    Entonces el sistema muestra el mensaje "No se encontraron estudiantes que cumplan los criterios seleccionados"
    Y mantiene visibles los filtros aplicados
    Y permite modificar o eliminar los filtros para realizar una nueva búsqueda

  @EP01 @HU06
  Escenario: Consulta exitosa de compatibilidad de equipo
    Dado que el usuario ha seleccionado al menos tres estudiantes para formar un equipo
    Cuando selecciona la opción "Analizar compatibilidad"
    Entonces el sistema calcula la compatibilidad utilizando los indicadores de compromiso, responsabilidad y colaboración de cada integrante
    Y muestra un porcentaje de compatibilidad general del equipo
    Y presenta las fortalezas identificadas del grupo
    Y muestra recomendaciones para mejorar la conformación del equipo

  @EP01 @HU06
  Escenario: Información insuficiente para calcular la compatibilidad
    Dado que el usuario ha seleccionado al menos tres estudiantes para formar un equipo
    Y uno o más estudiantes seleccionados no cuentan con evaluaciones suficientes registradas
    Cuando selecciona la opción "Analizar compatibilidad"
    Entonces el sistema muestra el mensaje "No existe información suficiente para calcular la compatibilidad completa del equipo"
    Y identifica qué estudiantes poseen información insuficiente
    Y calcula la compatibilidad únicamente con los integrantes que cuentan con datos disponibles
