class Guest
attr_reader :name
attr_accessor :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def pay_entrance_fee
  @wallet - 2
end




end
