require 'rails_helper'

RSpec.describe 'Reviews', type: :request do
  describe 'GET /reviews' do
    it 'returns all reviews' do
      create_list(:review, 10, playground_id: 5)
      create_list(:review, 10, playground_id: 6)

      headers = {"CONTENT_TYPE" => "application/json"}
      get '/api/v0/playgrounds/5/reviews', headers: headers

      expect(response).to have_http_status(:success)
      

      reviews = JSON.parse(response.body, symbolize_names: true)
      
      expect(reviews).to be_a Hash
      expect(reviews).to have_key(:data)
      expect(reviews[:data]).to be_an Array
      expect(reviews[:data].count).to eq(10)

      reviews[:data].each do |review|
        expect(review).to have_key(:id)
        expect(review[:id]).to be_a String 
        expect(review[:attributes]).to have_key(:user_id)
        expect(review[:attributes][:user_id]).to be_a Integer 
        expect(review[:attributes]).to have_key(:playground_id)
        expect(review[:attributes][:playground_id]).to be_a String 
        expect(review[:attributes]).to have_key(:rating)
        expect(review[:attributes][:rating]).to be_a Integer 
        expect(review[:attributes]).to have_key(:comment)
        expect(review[:attributes][:comment]).to be_a String 
        expect(review[:attributes]).to have_key(:image)
        expect(review[:attributes][:image]).to be_a String 
      end
    end
  end

  describe 'POST /reviews' do
    it 'creates a new review' do
      review_params = ({
        user_id: 1,
        rating: 5,
        comment: 'This is a test comment',
        image: 'This is a test image',
        playground_id: '1'
      })
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post '/api/v0/playgrounds/reviews', headers: headers, params: JSON.generate(reviews: review_params)
      created_review = Review.last
      
      expect(response).to be_successful
      expect(created_review.user_id).to eq(review_params[:user_id])
      expect(created_review.rating).to eq(review_params[:rating])
      expect(created_review.comment).to eq(review_params[:comment])
      expect(created_review.image).to eq(review_params[:image])
      expect(created_review.playground_id).to eq(review_params[:playground_id])
    end
  end
end