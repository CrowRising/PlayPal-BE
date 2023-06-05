class Playground
  attr_reader :playground_name,
              :playground_address,
              :id,
              :rating,
              :image

  def initialize(data)
    @playground_name = data[:name]
    @playground_address = data[:formatted_address]
    @id = data[:place_id]
    @rating = data[:rating]
    @image = data[:image]
  end 
end