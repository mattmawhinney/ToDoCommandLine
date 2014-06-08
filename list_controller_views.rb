require_relative 'user_controller_views.rb'

def access_list()
	@this_users_list.list
end 

def show_list_name
	 @this_users_list.list_name
end


def show_formatted_list 

	show_list_name.upcase
	access_list.map {|item| "#{item.item_id}) #{item.item_name} #{item.checked ? '[✔]' : '[ ]'}" }


end 





