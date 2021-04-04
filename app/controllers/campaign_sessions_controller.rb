class CampaignSessionsController < ApplicationController
  before_action :get_campaign
  before_action :set_campaign_session, only: [:show, :edit, :update, :destroy]

  layout 'main'
  def index
    @campaign_sessions = @campaign.campaign_sessions
  end

  def show
  end

  def new
   @campaign_session = @campaign.campaign_sessions.build
  end

  def create
    @campaign_session = @campaign.campaign_sessions.build(campaign_session_params)

    if @campaign_session.save
      redirect_to campaign_path(@campaign)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @campaign_session.update(campaign_session_params)
      redirect_to campaign_campaign_session_path(@campaign)
    else
      render 'edit'
    end
  end

  def destroy
    @campaign_session.destroy

    redirect_to campaign_path(@campaign)
  end

  private

  def get_campaign
    @campaign ||= Campaign.find(params[:campaign_id])
  end

  def set_campaign_session
    @campaign_session ||= @campaign.campaign_sessions.find(params[:id])
  end

  def campaign_session_params
    params.require(:campaign_session).permit(:name, :description, :campaign_id, :notes)
  end
end
