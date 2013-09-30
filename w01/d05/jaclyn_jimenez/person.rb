class Person
  attr_accessor :age, :gender, :name

  def initialize(name)
    @name = name
    end

  def set_apt_name(apartment_name) #call this method in apartment and pass along its name
    @my_apartment = apartment_name
  end

  def become_doorman
    @is_doorman = true
  end

  def which_apartment?
    if @my_apartment != nil
      puts "I live in #{@my_apartment}!"
    else
      "I am homeless! Please move me to an apartment."
    end
  end

end