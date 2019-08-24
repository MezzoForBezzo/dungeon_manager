class CampaignSession < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :campaign
end
