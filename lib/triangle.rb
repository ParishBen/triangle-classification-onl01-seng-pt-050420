require 'pry'
class Triangle
  attr_reader  :side1length, :side2length,:side3length
 def initialize(side1length,side2length,side3length)
   @side1length=side1length
   @side2length=side2length
   @side3length=side3length
 end
 
 def valid?
    no_greater_than_zero = @side1length <=0 || @side2length  <= 0 || @side3length <= 0
    
    tryarray= [@side1length,@side2length,@side3length].sort
     
   
   triangle_possible = @side1length + @side2length > @side3length || @side2length + @side3length > @side1length || @side1length + @side3length > @side2length
    
    if no_greater_than_zero || !triangle_possible || tryarray[0] + tryarray[1] <= tryarray[2]
     raise TriangleError
   end
 end
 
 def kind
  valid?
      
     if
      @side1length == @side2length && @side2length == @side3length
       :equilateral
      
 elsif @side1length == @side2length  || @side1length == @side3length  || @side2length == @side3length
    :isosceles 
  
   elsif @side1length != @side2length && @side2length != @side3length
 :scalene 
 else "No triangle I've ever seen"
  end
 end

 class TriangleError < StandardError
  end
end
