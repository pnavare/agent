class EmailsController < ApplicationController

	def new
	end


	def create
	@email = Email.new(email_params)
	@email.save
	redirect_to @email
	end

	def show
	@email = Email.find(params[:id])
	end

	def index
	@emails = Email.all
	end

	private
	def email_params
	params.require(:email).permit(:emailid)
	end

end
