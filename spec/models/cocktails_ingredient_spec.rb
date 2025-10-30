require 'rails_helper'

RSpec.describe CocktailsIngredient, type: :model do
  subject(:ingredient) { CocktailsIngredient.build(params) }

  let(:params) do
    {
      cocktail: Cocktail.create(name: "Harvey Wallbanger"),
      ingredient: Ingredient.create(name: "Orange juice"),
      quantity:,
      measurement:
    }
  end

  let(:quantity) { 50 }
  let(:measurement) { "ml" }

  context "when params are valid" do
    it { is_expected.to be_valid }
  end
end
