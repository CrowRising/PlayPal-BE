class StaticImageService

  def get_url(url)
    response = conn.get(url, headers: { 'Accept' => 'image/jpeg' })
    jpeg_data = response.body

    # @encoded_image_data = Base64.encode64(jpeg_data)
    # file_path = Rails.root.join('app', 'image', 'image.jpg')

    # File.open(file_path, 'wb') do |file|
    #   file.write(jpeg_data)
    # end
    # require 'pry'; binding.pry
  end

  def conn
    Faraday.new(url: "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/") do |faraday|
      faraday.params['access_token'] = ENV['MAPBOX_API_KEY']
    end
  end

  def get_image(lon, lat)
    get_url("#{lon},#{lat},17,0,24/450x300")
  end
end

# https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/-105.0875,39.8541,17,0,24/450x300