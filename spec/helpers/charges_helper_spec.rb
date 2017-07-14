require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ChargesHelper. For example:

describe ChargesHelper do
  describe "string concat" do
    it "concats two strings with spaces" do
      expect(helper.number_to_currency(23.50).to eq(23.50))
    end
  end
end

RSpec.describe ChargesHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end
