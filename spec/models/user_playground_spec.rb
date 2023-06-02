require 'rails_helper'

RSpec.describe UserPlayground, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:playground_id) }
    it { should validate_presence_of(:playground_name) }
  end
end
