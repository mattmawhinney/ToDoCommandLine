class User

	@@users = []
	@@user_id  = 1

	attr_accessor :name, :email

	def initialize(name,email)
		@name = name 
		@email = email
		@@user_id += 1 
		

	end 

	
	
end 



