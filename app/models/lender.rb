# == Schema Information
#
# Table name: lenders
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  name                   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Lender < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :proposals, :dependent => :destroy
  
  validates :name, presence: true
end


class Lender::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:email, :current_password, :password, :password_confirmation, :remember_me, :name)
  end
  
  def account_update
    default_params.permit(:email, :current_password, :password, :password_confirmation, :remember_me, :name)
  end
end
