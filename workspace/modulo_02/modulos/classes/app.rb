require_relative 'payment'

include Payment

p1 = Master.new #com include
puts p1.paying

# p1 = Payment::Master.new // sem include
