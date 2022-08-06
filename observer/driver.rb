#file to run some examples of observer design pattern
require './model/publisher'
require './model/subscriber'

=begin
CASE1
  create publishers -> P1, P2, P3
  create subscribers -> S1, S2, S3
  S1 subscribes P1, P2
  S2 subscribes P2
  S3 subscribes P1, P2, P3
=end

p1 = Publisher.new(name: 'p1')
p2 = Publisher.new(name: 'p2')
p3 = Publisher.new(name: 'p3')

s1 = Subscriber.new(name: 's1')
s2 = Subscriber.new(name: 's2')
s3 = Subscriber.new(name: 's3')

s1.subscribe(publisher: p1)
s1.subscribe(publisher: p2)

s2.subscribe(publisher: p2)

s3.subscribe(publisher: p1)
s3.subscribe(publisher: p2)
s3.subscribe(publisher: p3)

p1.notify(message: 'P1 uploaded a youtube video recently!')
p2.notify(message: 'P2 just tweeted!')
p3.notify(message: 'P3 just posted on instagram!')
