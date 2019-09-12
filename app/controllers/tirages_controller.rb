class TiragesController < ApplicationController
  before_action :set_tirage, only: [:edit, :show, :set_hexagramme]

  def index
    if params[:query].present?
      # sql_query = " \
      # tirages.question ILIKE :query \
      # "
      # @tirages = Tirage.where(sql_query, query: "%#{params[:query]}%")
      @tirages = Tirage.where("question ILIKE ?", "%#{params[:query]}%")
    else
      @tirages = Tirage.all.order("created_at DESC")
    end
  end

  def new
    @tirage = Tirage.new
  end

  def create
    @tirage = Tirage.new(tirage_params)
    @tirage.user = current_user
    if @tirage.save(validate: false)
      redirect_to edit_tirage_path(@tirage)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def set_hexagramme
    trig_bas = TrigName.call([@tirage.traits[0].nom, @tirage.traits[1].nom, @tirage.traits[2].nom])
    trig_haut = TrigName.call([@tirage.traits[3].nom, @tirage.traits[4].nom, @tirage.traits[5].nom])
    hexrep = SetHexagramme.call(trig_bas, trig_haut)
    @tirage.hexagramme = Hexagramme.find_by nom: hexrep
    @tirage.reply_traits = StringifyTraits.call(@tirage.traits)
    @tirage.perspective = SetPerspective.call(@tirage.reply_traits.split(', '))
    @tirage.save
    redirect_to tirage_path(@tirage)
  end

  private

  def tirage_params
    params.require(:tirage).permit(:question)
  end

  def set_tirage
    @tirage = Tirage.find(params[:id])
  end
end
