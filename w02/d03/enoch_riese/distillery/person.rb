class Person
  def initialize(name)
    @name = name
    @blood_alcohol = 0
    @cellar = []
    @red_v = 255
  end

  def blood_alcohol
    @blood_alcohol
  end

  def red_v
    @red_v
  end

  def buy(bev)
    @cellar << bev
    bev.dist.sell(bev)
    "#{@name} bought #{bev.name}"
  end

  def drink(bev)
    @blood_alcohol += 0.02
    @red_v -= 30
    @cellar.delete(bev)

    if @blood_alcohol >= 0.08
      return "#{@name} drank #{bev.name}. #{@name}'s blood alcohol is #{@blood_alcohol}. #{@name} is too drunk to drive."
    else return "#{@name} drank #{bev.name}. #{@name}'s blood alcohol is #{@blood_alcohol}"
    end
  end
end