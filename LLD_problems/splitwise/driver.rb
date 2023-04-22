Dir["model/*.rb"].each { |file| load file }

puts "---------------USERS---------------"
user1 = User.new(name: "Sam")
user2 = User.new(name: "John")
user3 = User.new(name: "SJ")

user1.add_friends(users: [user2, user3])

puts "user1: #{user1.inspect}"
puts "user2: #{user2.inspect}"
puts "user3: #{user3.inspect}"

puts "-----------------------------------"

puts "---------------GROUP---------------"
group1 = Group.new(name: "Sweet Home")
group1.add_users(users: [user1, user2, user3])
puts "group1: #{group1.inspect}"
puts "-----------------------------------"

puts "---------------EXPENSE1---------------"
expense1 = group1.add_expense(paid_by: user1, amount: 999, split_type: ExpenseSplit::TYPES["EQUAL"], splits: { user1 => nil, user2 => nil, user3 => nil})
puts "expense1: #{expense1.inspect}"
puts "-----------------------------------"


