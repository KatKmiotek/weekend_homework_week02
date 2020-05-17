class Bar
attr_accessor :snacks, :till

def initialize()
  @snacks = {
    crisps:{
      price: 2,
      amount: 10
    }
    }
    @till = 0

end

def money_in_till
  return till
end

def add_money_till(room)
  @till += room.entrance_fee
end

def sell_snack
  @snacks[:crisps][:amount] -= 1
end

def add_money_snacks
  return @till += @snacks[:crisps][:price]
end

end
