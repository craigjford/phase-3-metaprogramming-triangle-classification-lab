require 'pry'
class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end  

  def kind
    if @side1 == 0 && @side2 == 0 && @side3 == 0
      message = "triangle has no size"
      puts message
      raise TriangleError 
    elsif !(@side1 > 0) && !(@side2 > 0) && !(@side3 > 0)
      message = "all must be greater than zero"
      puts message
      raise TriangleError
    elsif @side1 < 0 && @side2 < 0 && @side3 < 0  
      message = "side cannot be negative"
      puts message
      raise TriangleError
    elsif (@side1 + @side2) <= @side3 ||  
          (@side1 + @side3) <= @side2 ||  
          (@side2 + @side3) <= @side1  
      message = "violates triangle inequality"
      puts message 
      raise TriangleError 
    elsif @side1 == @side2 && @side2 == @side3
      "equilateral".to_sym
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      "isosceles".to_sym
    elsif @side1 != side2 && @side2 != side3 && @side1 != side3
      "scalene".to_sym
    end

  end
  class TriangleError < StandardError
    def message
      message
    end 
  end

end

c1 = Triangle.new(2, 2, 2)
cjf = c1.kind
binding.pry
0