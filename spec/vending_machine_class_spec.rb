require_relative '../vending_machine_class.rb'

RSpec.describe VendingMachine do
  let(:drink_machine) {VendingMachine.new }

  describe "#purchase" do
    it "reduces the number of bottles" do
      drink_machine.purchase(5)
      expect(drink_machine.get_inventory).to eq(15)
    end
  end

  describe "#restock" do
    it "increases the number of bottles" do
      drink_machine.restock(10)
      expect(drink_machine.get_inventory).to eq(30)
    end
  end

  describe "#get_inventory" do
    it "returns the current number of bottles" do
      expect(drink_machine.get_inventory).to eq(20)
    end
  end

  describe "#report" do
    it "prints the current inventory" do
      expect { drink_machine.report }.to output("Inventory: 20 bottles\n").to_stdout
    end
  end
end
