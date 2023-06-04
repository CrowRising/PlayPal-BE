require 'rails_helper'

RSpec.describe PlaygroundFacade do
  describe 'Playground Facade' do
    it 'can create a single playground object' do
      pg = PlaygroundFacade.new('ChIJz7xda7iLa4cRYNf2sN8C17I')
    end
  end
end