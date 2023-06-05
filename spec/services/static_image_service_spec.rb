require 'rails_helper'

RSpec.describe StaticImageService, :vcr do
  describe 'instance methods' do
    it 'get_image' do
      static_image_service = StaticImageService.new
      image = static_image_service.get_image
     
      expect(image).to be_a Hash
      expect(image).to have_key(:urls)
      expect(image[:urls]).to have_key(:small)
      expect(image[:urls][:small]).to be_a String
    end
  end
end