class VendingMachine
  def initialize
    @bottles = 20
  end

  def purchase(amount)
    @bottles -= amount
  end

  def restock(amount)
    @bottles += amount
  end

  def get_inventory
    @bottles
  end

  def report
    puts "Inventory: #{@bottles} bottles"
  end
end

if __FILE__ == $vending_machine_class
  drink_machine = VendingMachine.new
  print "Enter number of drinks to buy: "
  drinks_to_buy = gets.chomp.to_i
  print "Enter number of bottles to stock: "
  bottles_to_stock = gets.chomp.to_i
  drink_machine.purchase(drinks_to_buy)
  drink_machine.restock(bottles_to_stock)
  drink_machine(report)
end
