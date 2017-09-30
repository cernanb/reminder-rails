class ChildrenController < ApplicationController

  def new
    @child = Child.new
  end

  def create

  end

  private
    def child_params
      params.require(:child).permit(:dob, :first_name, :last_name, :gender)
    end

end
