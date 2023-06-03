require 'rails_helper'

RSpec.describe StaticImageService do
  describe 'instance methods' do
    it 'get_image' do
      static_image_service = StaticImageService.new
      image = static_image_service.get_image
      require 'pry'; binding.pry
      # expect(image).to be_a(Hash)
      # expect(image).to have_key(:results)
      # expect(image[:results]).to be_a(Array)
      # expect(image[:results].first).to have_key(:urls)
      # expect(image[:results].first[:urls]).to be_a(Hash)
      # expect(image[:results].first[:urls]).to have_key(:regular)
      # expect(image[:results].first[:urls][:regular]).to be_a(String)
    end
  end
end