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

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
