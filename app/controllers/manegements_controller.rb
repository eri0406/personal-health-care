class ManegementsController < ApplicationController
  def index
  end

  def new
    @manegement = Manegement.new
  end

  def create
    @manegement = Manegement.new(manegement_params)
    if @manegement.save
      redirect_to "#"
    else
      render :new
    end
  end

  private

  def manegement_params
    params.require(:manegement).permit(:temperature, :b_pressure_up, :b_pressure_down, :pulse, :weight, :exercise_content, :sleep_id)
  end

end
