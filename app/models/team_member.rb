class TeamMember < ApplicationRecord
    validates :name, presence: true
    validates :bio, presence: true
    validates :position, presence:true
end
