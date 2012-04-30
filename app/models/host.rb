class Host < ActiveRecord::Base
	email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
	
	attr_accessible :first_name, :last_name, :email
	validates :first_name, :presence => true
						   :length => { :maximum => 50 }
	validates :last_name, :presence => true
					      :length => { :maximum => 50 }
	validates :email, :presence => true
					  :format => { :with => email_regex} 
					  :uniqueness => { :case_sensitive => false } 		
end
