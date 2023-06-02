class PlaygroundSearchFacade
  def initialize(search)
    @location = search[:location]
    @radius = search[:radius]

  end
  def playground_details
    json = PlaygroundService.new.get_playgrounds(@location, @radius)
    json[:results].map do |playground_data|
      Playground.new(playground_data)
    end
  end
end