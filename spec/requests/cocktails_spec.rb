require 'rails_helper'

RSpec.describe CocktailsController, type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    subject(:get_request) { get cocktail_path(cocktail) }

    let(:cocktail) { Cocktail.create(name: "Gimlet") }

    it "returns http success" do
      get_request
      expect(response).to have_http_status(:success)
    end

    it "renders the expected page" do
      get_request
      expect(response.body).to include("Gimlet")
    end
  end

  describe "GET /edit" do
    subject(:get_request) { get edit_cocktail_path(cocktail) }

    let(:cocktail) { Cocktail.create(name: "Gimlet") }

    it "returns http success" do
      get_request
      expect(response).to have_http_status(:success)
    end

    it "renders the expected page" do
      get_request
      expect(response.body).to include("Gimlet")
    end
  end

  describe "PATCH /update" do
    subject(:patch_request) { patch cocktail_path(cocktail, params:) }

    let(:cocktail) { Cocktail.create(name: "Gimlet") }

    let(:params) do
      {
        cocktail: {
          notes: "this is a note"
        }
      }
    end

    context "when the params are valid" do
      it "returns http redirect" do
        patch_request
        expect(response).to have_http_status(:redirect)
      end

      it "redirects to the show page" do
        patch_request
        expect(response).to redirect_to cocktail_path(cocktail)
      end
    end

    context "when the params are invalid" do
      let(:params) do
        {
          cocktail: {
            name: ""
          }
        }
      end

      it "returns http unprocessable_entity status" do
        patch_request
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "redirects to the show page" do
        patch_request
        expect(response.body).to include("1 error prohibited this cocktail from being saved:")
      end
    end
  end
end
