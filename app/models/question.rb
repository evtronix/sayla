# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  survey_id     :integer
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  question_type :string(255)
#

class Question < ActiveRecord::Base
  attr_accessible :content, :survey_id, :answers_attributes, :question_type
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
