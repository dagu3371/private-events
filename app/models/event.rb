class Event < ApplicationRecord
	#Looks for creator_id in the user class
  belongs_to :creator, :class_name => "User"
  has_many :attendees, :through => :invites
  has_many :invites, :foreign_key => "attended_event_id"

  validates :date,  presence: true
  validates :location,  presence: true
  validates :description,  presence: true
end
