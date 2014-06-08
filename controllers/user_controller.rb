require_relative '../models/user_model.rb'
require_relative '../models/list_model.rb'
require_relative '../models/list_items_model.rb'
require_relative '../controllers/list_controller.rb'

#must occur before any other list or list_item action can occur 
#will use access_list() method defined in list controller view 
	#in place os @this_user_list.list from this point forward 
def create_list(name)
		@this_users_list = List.new(name)
end 

def add_item(item_name)
	access_list() << ListItem.new(item_name)
end 

def item_index(id)
	index = access_list().find_index {|item| item.item_id == id } 
end 

def remove_item(id)
	index = item_index(id) 
	access_list().delete_at(index)

end 

def edit_item(id, new_content)
	index = item_index(id) 
	access_list()[index].item_name = new_content


end

def check_item(id)
	index = item_index(id)
	access_list()[index].checked = true
end 

def uncheck_item(id)
	index = item_index(id)
	access_list()[index].checked = false
end 





# def show_users

# matt = User.new("Matt", "m@gmail.com")
# create_list("ToDo")
# add_item("milk")
# add_item("laundry")
# add_item("walk")
# remove_item(2)

# 		User.


# end 



