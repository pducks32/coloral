require "spec_helper"

module Coloral
  describe Color do
    
    it "has hsl attributes" do
      attributes = { hue: 220, saturation: 60, lightness: 55 }
      expect(Color.from_hsl(attributes)).to have_attributes attributes
    end

    describe "::from_hex" do
      context "with no parameters" do
        it "raises ArgumentError" do
          expect{ Color.from_hex() }.to raise_error ArgumentError
        end
      end
      context "when # is in front" do
        it "returns a color" do
          expect(Color.from_hex("#00FF00")).to be_a Color
        end
      end
      context "when # is not in front" do
        it "returns a color" do
          expect(Color.from_hex("00FF00")).to be_a Color
        end
      end
    end

    describe "::from_hsl" do
      context "with no parameters" do
        it "raises ArgumentError" do
          expect{ Color.from_hsl() }.to raise_error ArgumentError
        end
      end
      context "with no special syntax" do
        it "returns a color" do
          expect(Color.from_hsl(175, 50, 85)).to be_a Color
        end
      end
      context "with hsl hash" do
        it "returns a color" do
          hash = { h: 175, s: 50, l: 85 }
          expect(Color.from_hsl(hash)).to be_a Color
        end
      end
      context "with hue saturation lightness hash" do
        it "returns a color" do
          hash = { hue: 175, saturation: 50, lightness: 85 }
          expect(Color.from_hsl(hash)).to be_a Color
        end
      end
    end

    describe "::from_rgb" do
      context "with no parameters" do
        it "raises ArgumentError" do
          expect{ Color.from_hsl() }.to raise_error ArgumentError
        end
      end
      context "with no special syntax" do
        it "returns a color" do
          expect(Color.from_rgb(200, 180, 90)).to be_a Color
        end
      end
      context "with hsl hash" do
        it "returns a color" do
          hash = { r: 200, g: 180, b: 90 }
          expect(Color.from_rgb(hash)).to be_a Color
        end
      end
      context "with hue saturation lightness hash" do
        it "returns a color" do
          hash = { red: 200, green: 180, blue: 90 }
          expect(Color.from_rgb(hash)).to be_a Color
        end
      end
    end
  end
end
