class Takeaway
  require 'order'
  # dependence injection, added order
  def initialize(menu:, order: nil)
    @menu = menu
    # order with default
    @order = order || Order.new
  end

  def print_menu
    menu.print
  end

  # create method to place orders, will need to pass in dishes to the order,
  # this will loop through each dish and add to order
  def place_order(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
    end
  end

  private
  # making menu accessable, delegate to the menu object
  attr_reader :menu, :order
end
