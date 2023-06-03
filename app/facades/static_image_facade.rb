
class StaticImageFacade
  attr_reader :playground_id
  def initialize(data)
    @playground_id = data
  end

  def playground_image
    json = PlaygroundService.new.get_playground(@playground_id)
      playground = Playground.new(json[:result])
      jpeg = StaticImageService.new.get_image(playground.lon, playground.lat)
      # require 'pry'; binding.pry
  end
end