class CampaignSession < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :campaign

  has_many :session_allies
end
