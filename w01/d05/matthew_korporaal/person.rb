class Person
  attr_accessor :name, :age, :gender, :apartmentID
  def initialize(tenant_hash)
    @name = tenant_hash[:name]
    @age = tenant_hash[:age]
    @gender = tenant_hash[:gender]
  end

  def home(apartmentID)
    @apartmentID = apartmentID
  end

  def show_person
    if @gender == 'm'
      puts "  o".color("#12eff9")
      puts ".-||-.".color.("#12eff9")
      puts "  /\".color("#12eff9")
    else
      puts "  o".color("#ffc0cb")
      puts ".-||-.".color("#ffc0cb")
      puts "  /\".color("#ffc0cb")
    end
  end
end