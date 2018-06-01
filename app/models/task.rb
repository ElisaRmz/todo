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

end