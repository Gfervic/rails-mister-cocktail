class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    # flash[:success] = "Cocktail #{@cocktail.name} has been created" NW


    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy

    # flash[:danger] = "Cocktail #{@cocktail.name} has been destroyed" NW

    redirect_to cocktails_path
  end

  private

   def cocktail_params
    params.require(:cocktail).permit(:name, :picture)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end

