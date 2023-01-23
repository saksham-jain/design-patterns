require_relative 'factory/application'

app1 = Application.new(type: 'cash')

# get account type
puts app1.account.class

# get balance
app1.account.balance

# do some transaction
app1.account.transact!

puts "------------------------------------"

app2 = Application.new(type: 'portfolio')

# get account type
puts app2.account.class

# get balances
app2.account.balance

# do some transaction
app2.account.transact!