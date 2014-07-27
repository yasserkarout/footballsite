class Match < ActiveRecord::Base
	validates :numOfPlayers, :numericality => { :greater_than_or_equal_to => 0 }
	belongs_to :user
	validates_presence_of :sport,:numOfPlayers,:venue,:address
	has_one :attendance_list
end
