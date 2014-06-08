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

puts <<-MENU

#{show_formatted_list}
[1]Add item to list
[2]Remove item from list
[3]Edit existing item
[4]Check item off of list 
[5]Uncheck checked item 
[6]Exit program 

MENU





end 