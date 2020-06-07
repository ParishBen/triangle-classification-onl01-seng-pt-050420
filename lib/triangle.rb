require 'pry'
class Triangle
  attr_reader  :side1length, :side2length,:side3length
 def initialize(side1length,side2length,side3length)
   @side1length=side1length
   @side2length=side2length
   @side3length=side3length
 end
 
 def valid?
    no_greater_than_zero = @side1length.to_f <=0.0 || @side2length.to_f  <= 0.0 || @side3length.to_f <= 0.0
   triangle_possible = ((@side1length.to_f + @side2length.to_f) > @side3length.to_f) || ((@side2length.to_f + @side3length.to_f) > @side1length.to_f) || ((@side1length.to_f + @side3length.to_f) > @side2length.to_f)
    
    if no_greater_than_zero || !triangle_possible
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
#def kind
 #  if a == b && b == c
  #    :equilateral
   # elsif a == b || b == c || a == c
    #  :isosceles
    #else
     # :scalene
    #end
  #end

  #def validate_triangle
   # real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    #[a, b, c].each do |side|
     # real_triangle << false if side <= 0 
    #raise TriangleError if real_triangle#.include?(false)
    #end
#  end
#
 # class TriangleError < StandardError
  #end
#
#end
