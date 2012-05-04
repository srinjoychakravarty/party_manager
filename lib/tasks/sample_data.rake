namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		Host.create!(first_name: "Example User",
					 last_name: "Roy",
					 email: "example@cmu.edu",
					 password: "foobar",
					 password_confirmation: "foobar")
		99.times do |n|
			first_name = Faker::Name.first_name
			last_name = Faker::Name.last_name
			email = "example-#{n+1}@cmu.edu"
			password = "password"
			Host.create!(first_name: first_name,
						 last_name: last_name,
						 email: email,
						 password: password,
						 password_confirmation: password)
		end
	end
end	