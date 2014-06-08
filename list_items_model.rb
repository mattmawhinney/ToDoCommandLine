class ListItem

	attr_accessor :item_name, :item_id, :checked

	@@all_items = []
	@@item_id = 1 

	

	def initialize(item_name)

		@item_name = item_name
		@item_id = @@item_id
		@@item_id += 1 
		@checked = false
		
	end 

	def self.show_list_items
		@@all_items = []
	end 

	def self.current_id 
		@@item_id 
	end 




end 