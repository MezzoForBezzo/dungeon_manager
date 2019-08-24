class Campaign < ApplicationRecord
  validates :name, :description, :dungeon_master, :players, presence: true

  validates_uniqueness_of :name, case_sensitive: true

  has_many :campaign_sessions
end
