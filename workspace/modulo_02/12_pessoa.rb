class People
  def speak
    "Olá, pessoal!"
  end
  
  def meu_id
    "Meu id é o #{self.object_id}"
  end
end

p = People.new
puts p.meu_id

p2 = People.new
puts p2.meu_id
