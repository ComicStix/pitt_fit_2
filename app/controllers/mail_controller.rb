class MailController < ApplicationController
	def send_email
		@creation_request = Request.find_by(params[:user])
		@nickname = @creation_request.nickname
	end
end
