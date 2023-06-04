class PlaygroundService

  def get_playgrounds(location, radius)
    get_url("textsearch/json?query=playgrounds%20parks%20#{location}&radius=#{radius}")
  end
  
  def get_playground(id)
    get_url("details/json?place_id=#{id}")
  end
  
  private
    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
    
    def conn
      Faraday.new(url: "https://maps.googleapis.com/maps/api/place/") do |faraday|
        faraday.params['key'] = ENV['GOOGLE_API_KEY']
      end
    end
end