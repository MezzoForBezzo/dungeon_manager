require 'rails_helper'

RSpec.describe Campaign, type: :model do
  let(:campaign_params) do
      {
        name: 'name',
        description: 'description',
        dungeon_master: 'dungeon_master',
        players: 2
      }
  end

  context 'creating a campaign' do
    context 'with valid params' do
      let(:campaign) { Campaign.new(campaign_params) }

      it 'is a success' do
        expect(campaign).to be_valid
      end
    end

    context 'with no params' do
      let(:campaign) { Campaign.new }

      it 'is fails' do
        expect(campaign).to_not be_valid
      end
    end
  end
end
