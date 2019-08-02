class PagesController < ActionController::Base
  layout 'main'

  def home
    @campaigns = Campaign.all
  end
end
