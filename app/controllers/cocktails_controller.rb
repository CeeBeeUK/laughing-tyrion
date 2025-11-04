class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[ show edit update]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to @cocktail, notice: "Cocktail was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @cocktail }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @cocktail.errors, status: :unprocessable_content }
      end
    end
  end


private

  def set_cocktail
    @cocktail = Cocktail.find(params.expect(:id))
  end

  def cocktail_params
    params.expect(cocktail: [
      :name,
      :rating,
      :recipe,
      :notes,
      :variations,
      :garnish,
      :glass_id,
      :ice_id,
      cocktails_ingredients_attributes: [ [ :id, :quantity, :measurement, :ingredient_id ] ]
    ])
  end
end
