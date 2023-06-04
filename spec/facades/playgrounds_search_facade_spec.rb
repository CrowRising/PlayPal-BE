require 'rails_helper'

RSpec.describe 'PlaygroundsSearchFacade', :vcr do
  describe 'instance methods' do
    it "playground_details" do
      search = {location: 'Westminster', radius: 10}
      playgrounds = PlaygroundsSearchFacade.new(search).playgrounds

      expect(playgrounds).to be_a(Array)
      expect(playgrounds.count).to eq(20)

      def is_float_or_integer?(value)
        value.is_a?(Float) || value.is_a?(Integer)
      end

      playgrounds.each do |playground|
        expect(playground).to be_a(Playground)
        expect(playground.playground_address).to be_a(String)
        expect(playground.id).to be_a(String)
        expect(playground.playground_name).to be_a(String)
        expect(playground.lat).to be_a(Float)
        expect(playground.lon).to be_a(Float)
        expect(is_float_or_integer?(playground.rating)).to be(true)
      end
    end
  end
end