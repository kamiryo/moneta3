# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  memo       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_issues_on_state_id  (state_id)
#  index_issues_on_user_id   (user_id)
#
# Foreign Keys
#
#  state_id  (state_id => states.id)
#  user_id   (user_id => users.id)
#
require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
