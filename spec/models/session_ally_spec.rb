require 'rails_helper'

RSpec.describe SessionAlly, type: :model do
  fixtures :campaign_sessions

  let(:campaign_session) { campaign_sessions(:default_session) }
  let(:session_ally_params) do
    {
      name: 'Ally',
      hit_points: 20,
      initiative: 15,
      campaign_session: campaign_session
    }
  end

  context 'with valid params' do
    let(:ally) { SessionAlly.new(session_ally_params) }

    it 'is valid' do
      expect(ally).to be_valid
    end
  end

  context 'one is created with the same name' do
    let(:ally) { SessionAlly.create!(session_ally_params) }
    let(:new_ally) { SessionAlly.new(session_ally_params) }

    it 'is not valid' do
      expect(new_ally).to be_valid
    end
  end
end
