module SurveysHelper
	def survey_completed? (user, survey)
		survey.survey_questions.all? do |survey_q_id| 
			user.responses.map(&:question_id).include?(survey_q_id)
		end
	end
end