class Hackathon < ActiveRecord::Base
	# location: string
	# date: date
	# title: string

	has_many :registrations

	def new
	end

	def self.current
		Hackathon.take
	end
end
