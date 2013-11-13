class Distillery
  def initialize(name)
    @name = name
    @cellar = []
    @marketing = Marketing_dept.new
  end

  def brew
    name = @marketing.generate_clever_name
    bev = Beverage.new(name, self)
    @cellar << bev
    return bev
  end
  def cellar
    @cellar
  end
  def cellar_list
    list = []
    @cellar.each {|beer| list << beer.name}
    list
  end

  def sell(bev)
    @cellar.delete(bev)
  end

  def beverage_count
    @cellar.length
  end
end