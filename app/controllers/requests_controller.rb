class RequestsController < ApplicationController
	before_action :authenticate_user!

	def index
		@requests = Request.all
	end

	def create
		@request = Request.new(request_params)
		@request.user = current_user
		@request.save
		redirect_to requests_path 
	end

	def new
		@request = Request.new
	end

	def destroy
	end

	private 
		def request_params
			params.require(:request).permit(:gender, :level, :time_available, :nickname)
		end
	end
