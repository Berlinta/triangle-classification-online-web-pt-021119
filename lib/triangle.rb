class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def kind
    
  end

end
