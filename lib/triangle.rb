class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
  end
  
  def kind
    size
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  def size
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else a + b <= c || equilateral + scalene <= isosceles || scalene + isosceles <= equilateral
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    puts "Invalid triangle. Please try again."
  end

end
