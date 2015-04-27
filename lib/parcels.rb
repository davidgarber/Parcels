class Parcels
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  define_method(:volume) do
    volume = @height * @width * @length
  end

  define_method(:cost_to_ship) do
    volume = @height * @width * @length
    cost_to_ship = volume * @weight
  end

end
