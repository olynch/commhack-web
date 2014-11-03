class WelcomeController < ApplicationController
	def index
		@hackathon = Hackathon.current
	end
end
