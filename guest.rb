class Guest

attr_reader :name, :age, :wallet
attr_writer :wallet

def initialize(name, age, wallet)
  @name = name
  @age = age
  @wallet = wallet
end

# def admit(room)
#   if in_the_money(room)
#     @wallet -= room.fee()
#   end
# end

# def in_the_money?(room)
#     return wallet >= room.fee()
#   end




end
