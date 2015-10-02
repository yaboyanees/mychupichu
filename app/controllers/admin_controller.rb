class AdminController < ApplicationController
before_action :authenticate_user!

  def index
  	@usercount = User.count
  	@chucount = Chu.count
  	@commentcount = Chu.joins(:comments).count
  end

  def show	
  	@users = User.order("id ASC").pluck("id", "name", "email")
  end
end
