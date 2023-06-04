class PlaygroundFacade

  def initialize(id)
    @id = id
  end

  def playground
    @_playground ||= Playground.new(playground_data)
  end

  private

  def service
    @_service ||= PlaygroundService.new
  end

  def playground_data
    @_playground_data ||= service.get_playground(@id)[:result]
  end

end