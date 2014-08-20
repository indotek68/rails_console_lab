class Students < ActiveRecord::Base
	# validates_presence_of :first_name
 #  validates_presence_of :last_name
 #  validates_uniqueness_of :last_name
 #  validates_length_of :first_name, :minimum => 4
 #  validates_length_of :last_name, :minimum => 4
 #  validates_presence_of :last_name
 #  validates_presence_of :first_name
	validates :first_name, 
						:presence => true, 
	          :length => {:minimum => 4}

	validates :last_name, 
						:presence => true, 
	          :length => {:minimum => 4},
	          :uniqueness => true

	validates_format_of :first_name, :with => /[A-Z][a-z]+/
	validates_format_of :last_name, :with => /[A-Z][a-z]+/

	FORBIDDEN_USERNAMES = ["Delmer", "Reed", "Elie" , "Schoppik", "Anil" , "Bridgpal", "Tim", "Licata"]
	validate :username_is_allowed
	def username_is_allowed
	    if FORBIDDEN_USERNAMES.include?(username)
	        errors.add(:username, "this is a restricted username")
	    end
	end
end
