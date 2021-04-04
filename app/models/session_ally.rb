class SessionAlly < ApplicationRecord
    serialize :stats, Array

    validates_uniqueness_of :name, case_sensitive: false
end
