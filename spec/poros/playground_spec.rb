require 'rails_helper'

RSpec.describe Playground do
  describe "initialize" do
    it 'exists' do
      data = {formatted_address: "450 Powers St, Erie, CO 80516, United States", geometry: {location: {lat: 40.0349364, lng: -105.0463961 } }, name: "Lehigh Park", place_id: "ChIJkTXfW-z1a4cRzrN-7OsfDNY", rating: 4.6}
      playground = Playground.new(data)

      expect(playground).to be_a(Playground)
      expect(playground.playground_address).to eq("450 Powers St, Erie, CO 80516, United States")
      expect(playground.id).to eq("ChIJkTXfW-z1a4cRzrN-7OsfDNY")
      expect(playground.playground_name).to eq("Lehigh Park")
      expect(playground.lat).to eq(40.0349364)
      expect(playground.lon).to eq(-105.0463961)
      expect(playground.rating).to eq(4.6)

    end
  end
end