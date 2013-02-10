class SuggestionsController < ApplicationController

	def new
		@suggestion = current_user.suggestions.new
	end

	def create
		current_user.suggestions.create :content => params[:suggestion][:content]
		if current_user.save
			flash[:success] = "Feedback submitted!"
			redirect_to new_response_path
		else
			flash[:error] = "Something went wrong!"
			redirect_to new_response_path
		end
	end
end
