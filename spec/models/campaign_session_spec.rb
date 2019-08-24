require 'rails_helper'

RSpec.describe CampaignSession, type: :model do
  fixtures :campaigns

  let(:campaign) { campaigns(:default_campaign) }
  let(:campaign_session_params) do
      {
        name: 'new session',
        description: 'Session description',
        campaign: campaign
      }
  end

  context 'creating a campaign session' do
    let(:session) { CampaignSession.new(campaign_session_params) }

    it 'is valid' do
      expect(session).to be_valid
    end
  end

  context 'creating a duplicate campaign session' do
    let(:session) { CampaignSession.create!(campaign_session_params) }

    before { CampaignSession.create!(campaign_session_params) }
    it 'is valid' do
      expect(session).to be_valid
    end
  end
end
