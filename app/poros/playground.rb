class Playground
  attr_reader :playground_name,
              :playground_address,
              :lat,
              :lon,
              :id,
              :rating

  def initialize(data)
    @playground_name = data[:name]
    @playground_address = data[:formatted_address]
    @lat = data[:geometry][:location][:lat]
    @lon = data[:geometry][:location][:lng]
    @id = data[:place_id]
    @rating = data[:rating] 
  end 
end