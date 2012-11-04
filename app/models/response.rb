# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  answer_id   :integer
#  user_id     :integer
#  question_id :integer
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ActiveRecord::Base
  attr_accessible :answer_id, :content, :question_id, :user_id
  belongs_to :answer
  belongs_to :user
  has_one :question, :through => :answer
end
