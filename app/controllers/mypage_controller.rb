class MypageController < ApplicationController
  before_filter :authenticate_user!, only: [:index]
  def index
    
  end
end
