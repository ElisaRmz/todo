class Project < ApplicationRecord
  has_many :tasks

  def unfinished_tasks
    tasks.where(finish: false)
  end

  def finished_tasks
    tasks.where(finish: true)
  end

  def project_percentage
    (finished_tasks.count.to_f / tasks.count * 100).ceil
  end
end