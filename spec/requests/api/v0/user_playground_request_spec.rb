require 'rails_helper'

RSpec.describe 'UserPlaygrounds', type: :request do
  describe 'GET /user_playgrounds' do
    it 'returns all user_playgrounds' do
      create_list(:user_playground, 10, user_id: 5)

      headers = {"CONTENT_TYPE" => "application/json"}
      get "/api/v0/users/5/favorites", headers: headers

      expect(response).to have_http_status(:success)
 
      user_playgrounds = JSON.parse(response.body, symbolize_names: true)
# require 'pry'; binding.pry
      user_playgrounds[:data].each do |user_playground|
        expect(user_playground).to have_key(:id)
        expect(user_playground[:id]).to be_a String
        expect(user_playground[:attributes]).to have_key(:user_id)
        expect(user_playground[:attributes][:user_id]).to be_an Integer
        expect(user_playground[:attributes]).to have_key(:playground_id)
        expect(user_playground[:attributes][:playground_id]).to be_an String
        expect(user_playground[:attributes]).to have_key(:playground_name)
        expect(user_playground[:attributes][:playground_name]).to be_a String
      end 
    end
  end

  describe 'POST /user_playgrounds' do
    it 'creates a new user_playground' do
      user_playground_params = ({
        user_id: 1,
        playground_id: '1',
        playground_name: 'This is a test playground name'
      })
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post '/api/v0/users/favorites', headers: headers, params: JSON.generate(user_playgrounds: user_playground_params)
      created_user_playground = UserPlayground.last
      
      expect(response).to be_successful
      expect(created_user_playground.user_id).to eq(user_playground_params[:user_id])
      expect(created_user_playground.playground_id).to eq(user_playground_params[:playground_id])
      expect(created_user_playground.playground_name).to eq(user_playground_params[:playground_name])
    end
  end
end