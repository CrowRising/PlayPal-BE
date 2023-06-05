class StaticImageService

  def get_image
    get_url("/photos/random?query=kids,playground,park")
  end
  
  private
  def get_url(url)
    response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.unsplash.com") do |faraday|
      faraday.params['client_id'] = ENV['UNSPLASH_API_KEY']
    end
  end
end