class Users::UsersController < ApplicationController

  def show
    @children = current_user.children
  end

end
