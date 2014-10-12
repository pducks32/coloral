require "spec_helper"

module Coloral
  describe Coloral do
    describe "::from_hex" do
      it "creates color using hex" do
        expect(Coloral.from_hex("#00FF00")).to be_a Color
      end
    end
  end
end
