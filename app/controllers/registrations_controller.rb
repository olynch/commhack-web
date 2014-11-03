class RegistrationsController < ApplicationController
	def new
		@registration = Registration.new
	end

	def create
		hackathon = Hackathon.current
		reg = hackathon.registrations.create(registration_params)
		if reg
			render 'index'
		else
			render 'new'
		end
	end

	def destroy
		reg = Registration.find(params[:id])
		reg.destroy

		render 'index'
	end

	def update
		reg = Registration.find(params[:id])
		reg.update(registration_params)
	end

	def index
		#hackathon = Hackathon.current
		#@registrations = hackathon.registrations
		#@registrations = ["a", "b"]
	end

	def show
	end

	private
	def registration_params
		params.require(:registration).permit(:name, :email)
	end
end
