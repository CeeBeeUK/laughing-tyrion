require 'rails_helper'

RSpec.describe Ice, type: :model do
  subject(:glass) { described_class.build(name:) }

  let(:name) { nil }

  describe "validations" do
    context "when the name is empty" do
      it { is_expected.not_to be_valid }
    end

    context "when the name is present" do
      let(:name) { "Crushed" }

      it { is_expected.to be_valid }

      context "and the glass already exists" do
        before { described_class.create(name:) }

        it { is_expected.to_not be_valid }
      end
    end
  end
end
