class MarketingDepartment
	require 'Faker'
	def generate_clever_name
		Faker::Company.name
	end
end