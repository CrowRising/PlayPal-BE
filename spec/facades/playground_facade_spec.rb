require 'rails_helper'

RSpec.describe PlaygroundFacade do
  describe 'Playground Facade' do
    it 'can create a single playground object', :vcr do
      pg = PlaygroundFacade.new('ChIJz7xda7iLa4cRYNf2sN8C17I').playground

      expect(pg).to be_a Playground
      expect(pg.id).to eq("ChIJz7xda7iLa4cRYNf2sN8C17I")
      expect(pg.playground_name).to eq("Sensory Park")
      expect(pg.playground_address).to eq("7577 W 103rd Ave, Westminster, CO 80021, USA")
      expect(pg.rating).to eq(4.5)
    end
  end
end