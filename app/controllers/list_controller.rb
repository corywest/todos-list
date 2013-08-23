require_relative '../models/task'
require_relative '../models/list'
require 'debugger'

class ListController
  attr_accessor :list

  def initialize
    @list = List.first
  end

  def create_task(str)
    @list.tasks.create!(
      :content => str
    )
  end

  def delete_task(str)
    @list.tasks.where(:content => str).destroy_all
  end

  def list_content
    content = []
    @list.tasks.each do |t|
      content << t.content
    end
    content
  end
end
