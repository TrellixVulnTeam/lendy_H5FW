# == Schema Information
#
# Table name: proposals
#
#  id                  :integer          not null, primary key
#  borrow_condition_id :integer
#  lender_id           :integer
#  rate                :float
#  rate_type           :integer
#  amount              :integer
#  description         :text
#  choiced             :boolean
#  created_at          :datetime
#  updated_at          :datetime
#  completed           :datetime
#

require 'test_helper'

class ProposalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
