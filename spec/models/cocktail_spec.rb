require 'rails_helper'

RSpec.describe Cocktail, type: :model do
  subject(:cocktail) { described_class.build(name:) }

  let(:name) { nil }

  describe "validations" do
    context "when the name is empty" do
      it { is_expected.not_to be_valid }
    end

    context "when the name is present" do
      let(:name) { "Whisky Sour" }

      it { is_expected.to be_valid }

      context "and the cocktail already exists" do
        before { described_class.create(name:) }

        it { is_expected.to_not be_valid }
      end
    end
  end

  describe "relations" do
    let(:name) { "Amaretto sour"}

    before do
      Tool.create(name: "Ice crusher")
      Tool.create(name: "Shaker")
    end

    it "allows a tool to be assigned to the cocktail" do
      expect(cocktail.tools.count).to eq 0
      cocktail.tools << Tool.find_by(name: "Shaker")
      expect(cocktail.tools.first.name).to eq "Shaker"
    end
  end
end