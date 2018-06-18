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
end