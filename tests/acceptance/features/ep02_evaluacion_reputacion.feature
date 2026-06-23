# language: es

Característica: Gestión de evaluación y reputación académica
  Como estudiante universitario
  Quiero registrar y consultar evaluaciones colaborativas
  Para conocer la reputación académica de los estudiantes y mejorar la toma de decisiones al formar equipos.

  @EP02 @HU07
  Escenario: Registro exitoso de retroalimentación
    Dado que el usuario ha participado en un trabajo grupal finalizado
    Y tiene habilitada la opción de evaluar a sus compañeros
    Cuando selecciona a un compañero de equipo
    Y asigna una calificación de 1 a 5 en compromiso, responsabilidad y colaboración
    Y registra un comentario de retroalimentación
    Y selecciona la opción "Enviar evaluación"
    Entonces el sistema almacena la evaluación realizada
    Y la asocia al perfil del estudiante evaluado
    Y muestra el mensaje "Retroalimentación registrada correctamente"

  @EP02 @HU07
  Escenario: Intento de registro con información incompleta
    Dado que el usuario ha participado en un trabajo grupal finalizado
    Y tiene habilitada la opción de evaluar a sus compañeros
    Cuando intenta enviar la evaluación sin completar alguno de los criterios obligatorios
    Entonces el sistema impide el registro de la retroalimentación
    Y resalta los campos incompletos
    Y muestra el mensaje "Debe completar todos los criterios de evaluación antes de continuar"

  @EP02 @HU08
  Escenario: Calificación exitosa del desempeño de un compañero
    Dado que el usuario participó en un trabajo grupal finalizado
    Y el compañero seleccionado formó parte del mismo equipo
    Cuando asigna una calificación de 1 a 5 en los criterios de compromiso, responsabilidad y colaboración
    Y selecciona la opción "Guardar evaluación"
    Entonces el sistema registra las calificaciones asignadas
    Y actualiza los indicadores de desempeño del estudiante evaluado
    Y muestra el mensaje "Evaluación registrada correctamente"

  @EP02 @HU08
  Escenario: Intento de evaluar a un estudiante que no pertenece al equipo
    Dado que el estudiante seleccionado no formó parte del equipo de trabajo del usuario
    Cuando el usuario intenta registrar una evaluación
    Entonces el sistema bloquea la acción
    Y muestra el mensaje "Solo es posible evaluar a integrantes de tu equipo de trabajo"
    Y no almacena ninguna calificación en el sistema

  @EP02 @HU10
  Escenario: Visualización exitosa del resumen de desempeño
    Dado que el usuario posee evaluaciones registradas en la plataforma
    Cuando accede a la sección "Resumen de desempeño"
    Entonces el sistema muestra el promedio general de desempeño colaborativo
    Y muestra los promedios de compromiso, responsabilidad y colaboración
    Y presenta un resumen de fortalezas y oportunidades de mejora
    Y actualiza la información con base en las evaluaciones recibidas

  @EP02 @HU10
  Escenario: Resumen de desempeño con información insuficiente
    Dado que el usuario no posee suficientes evaluaciones registradas
    Cuando accede a la sección "Resumen de desempeño"
    Entonces el sistema muestra el mensaje "No existe información suficiente para generar un resumen de desempeño"
    Y no presenta métricas parciales o poco confiables
    Y recomienda obtener más evaluaciones para generar un resumen completo
