class UsersController < ApplicationController
  def show
      @user = current_user
      @blogs = Blog.all
  end
end
