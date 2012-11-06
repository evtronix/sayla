class ResponsesController < ApplicationController

def new
	@survey = Survey.last
end

def create
	params[:response].each do |question, answer|
		current_user.responses.create :question_id => question, :answer_id => answer[:answer_id], :content => answer[:content], :user_id => current_user.id
	end

	if current_user.save
		flash[:info] = "Success!"
		redirect_to users_path
	else
		flash[:error] = "No!!"
		redirect_to new_user_session_path
	end
end

end