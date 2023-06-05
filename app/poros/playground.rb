class Playground
  attr_reader :playground_name,
              :playground_address,
              :id,
              :rating,
              :image

  def initialize(data, image_data=nil)
    @playground_name = data[:name]
    @playground_address = data[:formatted_address]
    @id = data[:place_id]
    @rating = data[:rating]
    @image = image_data
  end 
end