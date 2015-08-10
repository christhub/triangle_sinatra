class Triangle
  define_method(:initialize) do |side_1, side_2, side_3|
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  define_method(:triangle?) do
    if ((@side_1 + @side_2) <= @side_3) || ((@side_1 + @side_3) <= @side_2) || ((@side_2 + @side_3) <= @side_1)
      "It is not a triangle!"
    elsif (@side_1 == @side_2) && (@side_2 == @side_3) && (@side_3 == @side_1)
      "It is an equilateral triangle."
    elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
      "It is an isosceles triangle."
    else
      "It is a scalene triangle."
    end
  end
end
