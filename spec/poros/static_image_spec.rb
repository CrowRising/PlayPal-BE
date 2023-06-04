require 'rails_helper'

RSpec.describe StaticImage do
  describe 'initialize' do
    it 'exists' do
      data = "ngaKASOAEsdogj975qknmdklf"
      static_image = StaticImage.new(data)

      expect(static_image).to be_a StaticImage
      expect(static_image.image_data).to eq("ngaKASOAEsdogj975qknmdklf")
    end
  end
end