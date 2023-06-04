class PlaygroundFacade

  def initialize(id)
    @id = id
  end

  def playground
    @_playground ||= Playground.new(playground_data)
  end

  def image
    @_image ||= StaticImage.new(image_data)
  end

  private

  def service
    @_service ||= PlaygroundService.new
  end
  
  def playground_data
    @_playground_data ||= service.get_playground(@id)[:result]
  end

  def image_service
    @_image_service ||= StaticImageService.new
  end

  def image_data
    @_image_data ||= image_service.get_image(playground.lon, playground.lat)
  end

end