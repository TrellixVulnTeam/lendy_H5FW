# == Schema Information
#
# Table name: borrow_conditions
#
#  id         :integer          not null, primary key
#  bank       :string(255)
#  amount     :integer
#  rate_type  :integer
#  rate       :float
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

module BorrowConditionsHelper
end
