class AdminController < ApplicationController
before_action :authenticate_user!

  def user
  	@users = User.all
  	authorize! :read, @users
  end

  def subject
  	@subjects = Subject.all
  	authorize! :read, @subjects
  end

end
