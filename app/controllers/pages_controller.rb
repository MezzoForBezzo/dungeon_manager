class PagesController < ActionController::Base
  layout 'main'

  def home
    @campaigns = Campaign.all
    @session_allies = SessionAlly.all
  end
end
