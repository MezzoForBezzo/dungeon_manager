module CampaignSessionsHelper
  def campaign
    @campaign ||= Campaign.find(params[:campaign_id])
  end
end
