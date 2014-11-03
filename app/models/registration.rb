class Registration < ActiveRecord::Base
	belongs_to :hackathon

	def new
	end
end
