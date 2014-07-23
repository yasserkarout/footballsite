class Match < ActiveRecord::Base
	validates :numOfPlayers, :numericality => { :greater_than_or_equal_to => 0 }
	belongs_to :user
end
