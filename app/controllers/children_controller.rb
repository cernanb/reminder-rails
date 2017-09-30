class ChildrenController < ApplicationController

  def new
    @child = Child.new
  end

  def create
    child = current_user.children.build(child_params)

    if child.save
      # change to user show once built
      redirect_to root_path
    else
      redirect_to new_child_path
    end
  end

  private
    def child_params
      params.require(:child).permit(:dob, :first_name, :last_name, :gender)
    end

end
