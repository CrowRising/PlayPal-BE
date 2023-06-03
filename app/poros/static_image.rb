class StaticImage
  attr_reader :playground_name,
              :playground_address,
              :lat,
              :lon,
              :playground_id,
              :rating

  def initialize(data)
    @playground_name = data[:name]
    @playground_address = data[:formatted_address]
    @lat = data[:geometry][:location][:lat]
    @lon = data[:geometry][:location][:lng]
    @playground_id = data[:place_id]
    @rating = data[:rating] 
  end 
end