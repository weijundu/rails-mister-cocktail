class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :edit, :update]
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to root_path
  end

  def show
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end
end
