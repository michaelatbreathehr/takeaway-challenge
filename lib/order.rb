class Order

  attr_reader :dishes
  # will only allow you to select from the menu
  def initialize(menu)
    # dishes created as a hash
    @dishes = {}
    @menu = menu
  end

  # will check its on the menu
  def add(dish, quantity)
    fail NoItemError, "#{dish.capitalize} is not on the menu" unless menu.has_dish?(dish)
    dishes[dish] = quantity
  end

  private

  attr_reader :menu

end
# not standard practice but created class in a class to work wth error
class NoItemError < StandardError; end
