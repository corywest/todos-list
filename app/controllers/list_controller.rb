require_relative '../app/models/task'
require_relative '../app/models/list'

class ListController
  attr_accessor :list

  def initialize
    list = List.new
  end

  def create_task(str)
    list.tasks.create!(
      :content => str
    )
  end

  def delete_task(id)
    list.find(id).destroy
  end

end