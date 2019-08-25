class SessionAlly < ApplicationRecord
    validates :name, :hit_points, :initiative, presence: true

    validates_uniqueness_of :name, case_sensitive: false

    belongs_to :campaign_session
end
