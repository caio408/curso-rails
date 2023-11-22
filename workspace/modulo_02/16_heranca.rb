class Person
  attr_accessor :name, :email
end

class PhysicalPerson < Person
  attr_accessor :cpf
  
  def speak(text)
    text
  end
end

class LegalPerson <Person
  attr_accessor :cnpj
  
  def pay_supplier
    "Pagando fornecedor"
  end
end

#-------------------
p1 = Person.new
#setter
p1.name = "Caio"
p1.email = "Caio@email.com"

#getter
puts p1.name
puts p1.email

puts '===================='
#-------------------------

p2 = PhysicalPerson.new
# setter
p2.name = 'Joao'
p2.email = 'joao@email.com'
p2.cpf = '123.456.789-10'

#getter
puts p2.name
puts p2.email
puts p2.cpf

puts p2.speak('Hello!')
puts '===================='


p2 = LegalPerson.new #A variavel p2 passa a ser LegalPerson
# setter
p2.name = 'GaleriTech'
p2.email = 'GaleriT@email.com'
p2.cnpj = '1234567890-0001'

#getter
puts p2.name 
puts p2.email
puts p2.cnpj 

puts p2.pay_supplier
puts '===================='
