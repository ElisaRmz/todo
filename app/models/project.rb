class Project < ApplicationRecord
  has_many :tasks

  def unfinished_tasks
    tasks.where(finish: false)
  end

  def finished_tasks
    tasks.where(finish: true)
  end

  def percentage_done
    return 0.0 if tasks.empty?
    (finished_tasks.count.to_f / tasks.count * 100).ceil
  end

  enum colors: [
    { name: 'Rojo', code: '#FF0000' },
    { name: 'Verde', code: '#00FF00' },
    { name: 'Azul', code: '#6495ED' },
    { name: 'Naranja', code: '#FFA500' },
    { name: 'Amarillo', code:'#FFD700' },
    { name: 'Morado', code:'#9370DB' },
    { name: 'Salmón', code:'#FFA07A' },
    { name: 'Verde Oliva', code:'#6B8E23' },
    { name: 'Azul Royal', code:'#4169E1' }
  ]
end