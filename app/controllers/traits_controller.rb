class TraitsController < ApplicationController
  before_action :set_tirage, only: [:new, :create]
  def new
    @trait = Trait.new
  end

  def create
    @trait = Trait.new
    @trait.tirage = @tirage
    @trait.jet_brut = PerformLancer.call.join(' ')
    @trait.nom = SetTrait.call(@trait.jet_brut.split(' ')).join(' ')
    @trait.save
    redirect_to tirage_path(@trait.tirage)
  end

  private

  def set_tirage
    @tirage = Tirage.find(params[:tirage_id])
  end
end
