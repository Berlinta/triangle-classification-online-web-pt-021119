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
      scalene
    end
  end

end
