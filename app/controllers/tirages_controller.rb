class TiragesController < ApplicationController
  def new
    @tirage = Tirage.new
  end

  def create
    @tirage = Tirage.new(tirage_params)
    @tirage.user = current_user
    if @tirage.save
      redirect_to "/"
    else
      render :new
    end
  end

  private

  def tirage_params
    params.require(:tirage).permit(:question)
  end
end
