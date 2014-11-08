require "spec_helper"

module Coloral
  describe Coloral do

    context "with 'from_*' or 'for_*' method" do
      it "delegates to Color" do
        expect(Color).to receive(:from_hex)
        Coloral.from_hex("#00FF00")
      end
    end
  end
end
