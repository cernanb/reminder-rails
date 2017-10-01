class CaretakersController < ApplicationController
  def new
    @caretaker = Caretaker.new
  end

  def create
    @caretaker = Caretaker.new(caretaker_params)

    if @caretaker.save
      redirect_to root_path
    end
  end

  private
    def caretaker_params
      params.require(:caretaker).permit(:name, :email, :phone_number)
    end
end
