class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def show_person
    puts "Hi, my name is #{@name}. I'm a #{@age} year old #{@gender}, and I live in apartment #{@apartment}.".color(:green)
    if @gender == "male"
      puts ' o'.color(:green)
    else
      puts '~o'.color(:green)
    end
    puts '-|-'.color(:green)
    puts '/ \ '.color(:green)
  end
end

