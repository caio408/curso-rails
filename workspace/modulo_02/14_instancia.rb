class Person
  def initialize(nome_fornecido = "indigente")
    @nome = nome_fornecido
  end
  
  def imprimir_nome
    @nome
  end
  
  def speak
    "Olá, pessoal!"
  end
end

p1 = Person.new
puts p1.imprimir_nome

p2 = Person.new('Caio')
puts p2.imprimir_nome

#teste

puts ('Digite seu nome')
name = gets.chomp

puts '=============='

p = Person.new(name)
puts p.imprimir_nome
