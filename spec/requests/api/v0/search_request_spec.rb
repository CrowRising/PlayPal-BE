require 'rails_helper'

RSpec.describe 'Search', type: :request do
  describe 'Playground search by location/radius' do
    it 'returns all playgrounds', :vcr do
     
      headers = {"CONTENT_TYPE" => "application/json"}
      get "/api/v0/playgrounds/80123/1", headers: headers

      expect(response).to be_successful
      expect(response.status).to eq(200)

      playgrounds = JSON.parse(response.body, symbolize_names: true)
      
      expect(playgrounds).to be_a Hash
      expect(playgrounds).to have_key(:data)
      expect(playgrounds[:data]).to be_an Array

      playgrounds[:data].each do |pg|
        expect(pg).to have_key(:id)
        expect(pg).to have_key(:attributes)
        expect(pg[:attributes]).to have_key(:playground_name)
        expect(pg[:attributes]).to have_key(:playground_address)
        expect(pg[:attributes]).to have_key(:rating)
      end
    end
  end

  describe 'Single playgroud search' do
    it 'returns a single playgrounds data by its id' do
      headers = {"CONTENT_TYPE" => "application/json"}
      get "/api/v0/playgrounds/ChIJz7xda7iLa4cRYNf2sN8C17I", headers: headers

      expect(response).to be_successful
      expect(response.status).to eq(200)

      playground = JSON.parse(response.body, symbolize_names: true)

      expect(playground).to be_a Hash
      expect(playground).to have_key(:data)
      expect(playground[:data]).to be_a Hash
      expect(playground[:data]).to have_key(:id)
      expect(playground[:data]).to have_key(:type)
      expect(playground[:data]).to have_key(:attributes)
      expect(playground[:data][:attributes]). have_key(:playground_name)
      expect(playground[:data][:attributes]). have_key(:playground_address)
      expect(playground[:data][:attributes]). have_key(:rating)
    end
  end
end