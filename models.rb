# should a user be able to have multiple lists 
# or just one? 

#let's start with just one 
# but that can be restricted by the was 
# the program is structured not the way the classes work

# a user will create a list 
# list items will be there own class 
# 





# require_relative 'to_do_test.rb'

# test_user_new



matt = User.new("Matt", "matt.mawhinney@gmail.com")
frank = User.new("Frank", "frank.giganti@gmail.com")
matt.create_list
matt.add_item("buy milk")
matt.add_item("make to do list")
puts matt.show_list


