class Person
  def speak # método de instancia / precisa instanciar
    'Olá, pessoal!'
  end
  
  def self.scream(text) # método de classe / não precisa instanciar
    "#{text}!!!"
  end
end

p1 = Person.new # método de instancia
puts p1.speak

puts Person.scream("Hello") #método de classe
