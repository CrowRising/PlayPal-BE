require 'rails_helper'

RSpec.describe PlaygroundService do
  describe 'instance methods' do
    it 'get_playgrounds' do
      playground_service = PlaygroundService.new
      playground_results = playground_service.get_playgrounds('Westminster', 10)

      expect(playground_results).to be_a(Hash)
      expect(playground_results).to have_key(:results)
      expect(playground_results[:results]).to be_a(Array)
      playground_results[:results].each do |playground|
        expect(playground).to have_key(:formatted_address)
        expect(playground[:formatted_address]).to be_a(String)
        expect(playground).to have_key(:geometry)
        expect(playground[:geometry]).to be_a(Hash)
        expect(playground[:geometry]).to have_key(:location)
        expect(playground[:geometry][:location]).to be_a(Hash)
        expect(playground[:geometry][:location]).to have_key(:lat)
        expect(playground[:geometry][:location][:lat]).to be_a(Float)
        expect(playground[:geometry][:location]).to have_key(:lng)
        expect(playground[:geometry][:location][:lng]).to be_a(Float)
        expect(playground).to have_key(:name)
        expect(playground[:name]).to be_a(String)
        expect(playground).to have_key(:place_id)
        expect(playground[:place_id]).to be_a(String)
        expect(playground).to have_key(:rating)
        def is_float_or_integer?(value)
          value.is_a?(Float) || value.is_a?(Integer)
        end
        expect(is_float_or_integer?(playground[:rating])).to eq(true)
      end
    end
  end
end