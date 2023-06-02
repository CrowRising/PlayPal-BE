require 'rails_helper'

RSpec.describe 'Search', type: :request do
  describe 'Playground search' do
    it 'returns all playgrounds' do

      get '/api/v0/playgrounds/39.7392/-104.9903/1000'
      formatted_address
      geometry[:location][:lat]
      geometry[:location][:lng]
      name
      place_id
      rating
    end
  end
end