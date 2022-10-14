# require 'pry'
class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end  

  def kind
    # binding.pry
    if @side1 == 0 && @side2 == 0 && @side3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error 
        message = "triangle has no size"
        puts error.message(message)
      end  
    elsif !(@side1 > 0) || !(@side2 > 0) || !(@side3 > 0)
      begin
        raise TriangleError
      rescue TriangleError => error 
        message = "all must be greater than zero"
        puts error.message(message)
      end 
    elsif @side1 < 0 || @side2 < 0 || @side3 < 0  
      begin
        raise TriangleError
      rescue TriangleError => error 
        message = "side cannot be negative"
        puts error.message(message)
      end 
    elsif (@side1 + @side2) <= @side3 ||  
          (@side1 + @side3) <= @side2 ||  
          (@side2 + @side3) <= @side1  
      begin
        raise TriangleError
      rescue TriangleError => error 
        message = "violates triangle inequality"
        puts error.message(message)
      end 
    elsif @side1 == @side2 && @side2 == @side3
      "equilateral".to_sym
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      "isosceles".to_sym
    else @side1 != side2 && @side2 != side3 && @side1 != side3
      "scalene".to_sym
    end

  end
  class TriangleError < StandardError
    def message(message)
      message
    end 
  end

end

# c1 = Triangle.new(2, 2, 0)
# cjf = c1.kind
# binding.pry
# 0