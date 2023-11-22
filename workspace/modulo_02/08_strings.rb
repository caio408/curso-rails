x = "Caio"

y = 'Rails'

puts x
puts x.class
puts y
puts y.class

a = "Curso"
b = "Rails"

puts a << b #modifica o A
puts a + b

puts "=========="

x = "curso"
puts x.object_id
x = x + "rails"
puts x
puts x.object_id
##############
q = "curso de "
puts q.object_id
q << "rails"
puts q
puts q.object_id

h = "Caio #{1+1} César #{q}"
puts h