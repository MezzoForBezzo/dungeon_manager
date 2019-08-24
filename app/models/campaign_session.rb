class CampaignSession < ApplicationRecord
  validates :name, :description

  belongs_to :campaign
end
