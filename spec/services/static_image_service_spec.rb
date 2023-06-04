require 'rails_helper'

RSpec.describe StaticImageService, :vcr do
  describe 'instance methods' do
    it 'get_image' do
      static_image_service = StaticImageService.new
      image = static_image_service.get_image(-104.984853, 39.737567)
     
      expect(image).to be_a(String)
    end
  end
end