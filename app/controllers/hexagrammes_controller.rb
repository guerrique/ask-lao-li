class HexagrammesController < ApplicationController
  # before_action :must_be_admin
  before_action :set_hex, only: [:edit, :update, :show]

  def index
    @hexagrammes = Hexagramme.all
  end

  def show
  end

  def edit
  end

  def update
    @hexagramme.update(hex_params)
    redirect_to hexagramme_path(@hexagramme)
  end

  private

  # def must_be_admin
  #   unless current_user && current_user.admin?
  #     redirect_to root_path, notice: "Must be admin"
  #   end
  # end

  def set_hex
    @hexagramme = Hexagramme.find(params[:id])
  end

  def hex_params
    params.require(:hexagramme).permit(
    :numero,
    :nom,
    :description,
    :jugement,
    :jugement_description,
    :trait1,
    :trait1_description,
    :trait2,
    :trait2_description,
    :trait3,
    :trait3_description,
    :trait4,
    :trait4_description,
    :trait5,
    :trait5_description,
    :trait6,
    :trait6_description,
    :grande_image,
    :dixieme_aile,
    :nucleaire,
    :oppose,
    :renverse,
    :image
      )
  end

end
