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

      it 'is valid' do
        expect(campaign).to be_valid
      end
    end

    context 'with no params' do
      let(:campaign) { Campaign.new }

      it 'is not valid' do
        expect(campaign).to_not be_valid
      end
    end

    context 'making a campaign with the same name' do
      let(:dup_campaign_params) do
          {
            name: campaign_params[:name],
            description: 'description 2',
            dungeon_master: 'dungeon_master 2',
            players: 2
          }
      end
      let(:campaign) { Campaign.new(dup_campaign_params) }

      before { Campaign.create!(campaign_params) }

      it 'is not valid' do
        expect(campaign).to_not be_valid
      end

      it 'is not case sensitive' do
        campaign[:name] = campaign[:name].upcase

        expect(campaign).to_not be_valid
      end
    end
  end
end
