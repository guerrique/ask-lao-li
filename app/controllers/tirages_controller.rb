class TiragesController < ApplicationController
  before_action :set_tirage, only: [:edit]
  def new
    @tirage = Tirage.new
  end

  def create
    @tirage = Tirage.new(tirage_params)
    @tirage.user = current_user
    if @tirage.save
      redirect_to edit_tirage_path(@tirage)
    else
      render :new
    end
  end

  def edit
  end

  private

  def tirage_params
    params.require(:tirage).permit(:question)
  end

  def set_tirage
    @tirage = Tirage.find(params[:id])
  end
end
