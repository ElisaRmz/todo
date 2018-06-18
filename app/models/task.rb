class Task < ApplicationRecord
  belongs_to :project

  enum requirement: [ 
    :-,
    :Alex, 
    :Casa, 
    :Email, 
    :Internet, 
    :Ordenador, 
    :Teléfono]

  enum frecuency: [
    :Puntual,
    :Día,
    :Semana,
    :Mes,
    :Trimestral,
    :Semestras,
    :Anual] 

end