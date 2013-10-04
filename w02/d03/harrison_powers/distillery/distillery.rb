class Distillery

	def initialize(name)
		@name = name
		@marketing_department = MarketingDepartment.new
		@cellar ||= Hash.new
		@bar_rats ||= Hash.new
	end

	def brew_beverage
		beverage = Beverage.new(@marketing_department.generate_clever_name)
		@cellar[beverage.name.to_sym] = beverage
		yield beverage.name
	end

	def sell_beverage(name)
		@cellar.delete(name)
	end

	def beverage_count
		@cellar.length
	end

	def cellar
		@cellar
	end

	def rats
		@bar_rats
	end

	def add_rat(bar_rat)
		@bar_rats[bar_rat.name.to_sym] = bar_rat
		yield bar_rat.name
	end

	def remove_rat(bar_rat)
		@bar_rats.delete(bar_rat.name.to_sym)
	end

	def name
		@name
	end

end