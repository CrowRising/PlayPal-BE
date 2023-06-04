class PlaygroundsSearchFacade
  def initialize(search)
    @location = search[:location]
    @radius = search[:radius]
  end

  def playgrounds
    @_playgrounds ||= playgrounds_data.map do |pg|
      Playground.new(pg)
    end
  end

  private
    def service
      @_service ||= PlaygroundService.new
    end

    def playgrounds_data
      @_playgrounds_data ||= service.get_playgrounds(@location, @radius)[:results]
    end
end