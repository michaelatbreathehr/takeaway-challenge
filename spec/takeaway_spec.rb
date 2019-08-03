require 'takeaway'

describe Takeaway do
  #inject menu into takeawy
  subject(:takeaway) { described_class.new(menu: menu) }

  #menu double
  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "Pizza: 5" }

  it "Displays the menu with items and cost" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

end
