require 'order'

describe Order do

  subject(:order) { described_class.new(menu) }
  # created for tests, adding dishes tro order hash
  let(:dishes) do
    {
      pizza: 2,
      burger: 3
    }
  end
  let(:menu) { double(:menu) }

  # allows menu to think it has dishes
  before do
    allow(menu).to receive(:has_dish?).with(:pizza).and_return(true)
    allow(menu).to receive(:has_dish?).with(:burger).and_return(true)
  end

  it "allows user to order lots of dishes" do
    order.add(:pizza, 2)
    order.add(:burger, 3)
    expect(order.dishes).to eq(dishes)
  end

  it "does not allow dishes not on menus" do
    allow(menu).to receive(:has_dish?).with(:salad).and_return(false)
    expect { order.add(:salad, 2) }.to raise_error NoItemError, "Salad is not on the menu"

  end

end
