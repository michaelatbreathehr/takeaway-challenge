require 'menu'

describe Menu do

  #dependence injection - inject into the menu
  subject(:menu) { described_class.new(dishes) }

  #add dishes into a hash
  let(:dishes) do
    {
      pizza: 5.00,
      burger: 7.00,
      fries: 2.50
    }
  end

  it "lists menu options and prices" do
    expect(menu.dishes).to eq(dishes)
  end

  it "prints menu and cost" do
    printed_menu = "Pizza £5.00, Burger £7.00, Fries £2.50"
    expect(menu.print).to eq(printed_menu)
  end
end
