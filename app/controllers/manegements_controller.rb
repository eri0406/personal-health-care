class ManegementsController < ApplicationController
  def index
  end

  def new
    @manegement = Manegement.new
  end
end
