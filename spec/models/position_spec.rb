require 'rails_helper'

RSpec.describe Position, type: :model do
  describe 'associations' do
    it { is_expected.to have_one(:farm) }
  end
end
