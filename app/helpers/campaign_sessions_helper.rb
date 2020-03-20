module CampaignSessionsHelper
  def campaign
    @campaign ||= Campaign.find(params[:campaign_id].to_i)
  end
end
