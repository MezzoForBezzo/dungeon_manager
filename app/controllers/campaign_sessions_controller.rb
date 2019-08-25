class CampaignSessionsController < ApplicationController
  layout 'main'
  def index
    @campaign_sessions = CampaignSession.all
  end

  def new
   @campaign_session = CampaignSession.new
  end

  def create
    @campaign_session = CampaignSession.new(campaign_session_params)

    if @campaign_session.save
      redirect_to @campaign_session
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @campaign_session.update(campaign_session_params)
      redirect_to @campaign_session
    else
      render 'edit'
    end
  end

  def destroy
    @campaign_session.destroy

    redirect_to campaigns_path
  end

  private

  def campaign_session_params
    params.require(:campaign_session).permit(:name, :description, :campaign)
  end
end
