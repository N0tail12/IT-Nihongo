class UsersController < ApplicationController
  def show
      @user = current_user
      @blogs = Blog.all
      @currentUserId = current_user.id
  end
end
