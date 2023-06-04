require 'rails_helper'

RSpec.describe StaticImageFacade, :vcr do
  describe 'instance methods' do
    it "static_image" do
      playground = StaticImageFacade.new("ChIJkTXfW-z1a4cRzrN-7OsfDNY").playground_image

      expect(playground).to be_a(String)
    end
  end
end
