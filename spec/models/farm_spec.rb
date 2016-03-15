require 'rails_helper'

RSpec.describe Farm, type: :model do
  let(:farm) { create(:farm, name: "Adam's Farm") }
  let(:farm2) { create(:farm, name: "Bob's Farm") }

  describe 'associations' do
    it { is_expected.to have_many(:users) }
  end

  describe '.default scope' do
    it 'orders by alphabet' do
      farm.reload
      farm2.reload
      expect(Farm.first).to eq farm
    end
  end
end
