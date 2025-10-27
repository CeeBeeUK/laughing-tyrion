require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  subject(:ingredient) { Ingredient.build(name:) }

  let(:name) { nil }

  describe "validation" do
    context "when the name is empty" do
      it { is_expected.not_to be_valid }
    end

    context "when the name is present" do
      let(:name) { "Bourbon" }

      it { is_expected.to be_valid }
    end

    context "when the name already exists" do
      before { described_class.create(name:) }

      let(:name) { "Bourbon" }

      it { is_expected.to_not be_valid }
    end
  end
end
