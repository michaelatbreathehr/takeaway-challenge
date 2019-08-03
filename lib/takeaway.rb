class Takeaway

  #dependence injection
  def initialize(menu:)
    @menu = menu
  end

  def print_menu
    menu.print
  end

  private
  #making menu accessable, delegate to the menu object
  attr_reader :menu
end
