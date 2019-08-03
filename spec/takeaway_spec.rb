require 'takeaway'

describe Takeaway do
  # inject menu into takeaway, added order class/instance stub
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  # menu double
  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "Pizza: 5" }
  # order double to help create orders
  let(:order) { double(:order) }

  # double to create dishes
  let(:dishes) { { Pizza: 2, Burger: 3 } }

  it "Displays the menu with items and cost" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it "can order serveral dishes" do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

end
