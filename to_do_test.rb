require_relative 'user_model.rb'
require_relative 'list_model.rb'
require_relative 'list_items_model.rb'
require_relative 'user_controller_views.rb'
require_relative 'list_controller_views.rb'
require_relative 'views.rb'


matt = User.new("Matt", "m@gmail.com")
create_list("ToDo")
add_item("milk")
add_item("laundry")
add_item("walk")

show_formatted_list

remove_item(2)

show_formatted_list

edit_item(1, "almond milk")

show_formatted_list

check_item(3)

show_formatted_list

uncheck_item(3)

show_formatted_list