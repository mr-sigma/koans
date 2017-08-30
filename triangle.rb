# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c]
  raise TriangleError unless is_triangle(sides)
  return which_triange(sides)
end

def which_triange(sides)
  case sides.uniq.length
  when 3
    return :scalene
  when 2
    return :isosceles
  when 1
    return :equilateral
  end
end

def is_triangle(sides)
  return false if sides.select{ |side| side <= 0 }.length > 0
  return false if sides[0] + sides[1] <= sides[2]
  return false if sides[1] + sides[2] <= sides[0]
  return false if sides[2] + sides[0] <= sides[1]
  return true
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
