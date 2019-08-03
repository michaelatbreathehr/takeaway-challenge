class Menu

  # allows access to dishes
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    # will loop through and a add each dish to the order, to 2dp
    dishes.map do |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    end.join(", ")
  end
end
