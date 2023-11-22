class Person
  # attr_accessor :name
  def initializa(name = "teste")
    @name = name
  end
  
  def set_name=(name)
    @name = name
  end
  
  def get_name
    @name
  end
end

p1 = Person.new
p1.set_name = "Caio" #setter
p1.set_name = "Josue" #setter
p1.set_name = "Julia" #setter
puts p1.get_name #getter

# def initializa(name = "teste")
    # @name = name
  # end
  # 
  # def set_name=(name)
    # @name = name
  # end
  # 
  # def get_name
    # @name
  # end
  
# ALL ABOVE CAN BE REPLACED BY

# class Person
  # attr_accessor :name
  