require_relative '../models/user_model.rb'
require_relative '../models/list_model.rb'
require_relative '../models/list_items_model.rb'
require_relative '../controllers/user_controller.rb'
require_relative '../controllers/list_controller.rb'


def prompt 
	print "> "
end 

def intro 
	input ||= ""

	while input == "" || input == nil 

puts <<-INTRO

Welcome to Matt's ToDoList-o-Matic-3000™.
With the help of MTDLoM3000™ you will be able to
create a 'ToDo' List, add and remove items from your list, 
check items off your list and uncheck cheked items in the 
event of some mix up. 

First things first, what would you like to call your ToDo list? 

INTRO
	
	prompt 
	input = gets.chomp


	end 

	create_list(input)


end 


def menu

	option_choice ||= ""

	until option_choice == "6"
puts <<-MENU

#{show_list_name}
#{show_formatted_list}

[1]Add item to list
[2]Remove item from list
[3]Edit existing item
[4]Check item off of list 
[5]Uncheck checked item 
[6]Exit program 

MENU

prompt 
option_choice = gets.chomp

	case option_choice
	
	when "1"

		puts "Item name?"
		prompt
		item_name = gets.chomp
		add_item(item_name)

	when "2"

		puts "Item id?"
		prompt
		id = gets.chomp.to_i
		remove_item(id)

	when "3"

		puts "Item id?"
		prompt
		id = gets.chomp.to_i
		puts "New content"
		prompt
		new_content = gets.chomp
		edit_item(id,new_content)


	when "4"

		puts "Item id?"
		prompt
		id = gets.chomp.to_i
		check_item(id)

	when "5"

		puts "Item id?"
		prompt
		id = gets.chomp.to_i
		uncheck_item(id)

	end



 end 

end 


def action_views 
	actions = [add_item, remove_item, edit_item, check_item, uncheck_item] 
	action.map {}


end 



