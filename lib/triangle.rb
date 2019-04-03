class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end
  
  def kind
    if equilateral == isosceles && isosceles == scalene
      :equilateral
    elsif equilateral == isosceles || isosceles == scalene || equilateral == scalene
      :isosceles
    else
      :scalene
    end
  end
  
  def size
    if equilateral <= 0 || isosceles <= 0 || scalene <= 0
      raise TriangleError
    else equilateral + isosceles <= scalene || equilateral + scalene <= isosceles || scalene + isosceles <= equilateral
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    puts "Invalid triangle. Please try again."
  end

end
