class Guest < ActiveRecord::Base
	email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
	
	attr_accessible :name, :email, :expected_attendees, :actual_attendees
	validates :name, :presence => true
				     :length => { :maximum => 50 }
	validates :email, :presence => true
					  :format => { :with => email_regex} 
					  :uniqueness => { :case_sensitive => false } 	
end
