require_relative 'config/application'
require_relative 'app/controllers/list_controller'
require 'debugger'
# puts "Put your application code in #{File.expand_path(__FILE__)}"

@list_ctrl = ListController.new
@view = View.new

case ARGV[0]
when 'add'
  @list_ctrl.create_task(ARGV[1..-1].join(' '))
when 'delete'
  @list_ctrl.delete_task(ARGV[1..-1].join(' '))
end

@view.show_list(@list_ctrl.list_content)
