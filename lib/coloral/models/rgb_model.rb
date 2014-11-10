module Coloral
  module RGBModel
    extend Coloral::Model

    module ConstructorMethod
      def from_rgb(a_red = nil, a_green = nil, a_blue = nil, r: a_red, g: a_green, b: a_blue, red: r, green: g, blue: b)
        raise ArgumentError if [red, blue, green].any?(&:nil?)
        red /= 255
        green /= 255
        blue /= 255
        min, max = [red, blue, green].minmax
        delta = (max - min).to_f
        lum   = (max + min) / 2.0

        if delta.zero? # close to 0.0, so it's a grey
          hue = 0
          sat = 0
        else
          if lum <= 0.5
            sat = delta / (max + min).to_f
          else
            sat = delta / (2 - max - min).to_f
          end
          sixth = 1 / 6.0
          if red == max # Color.near_zero_or_less?(@r - max)
            hue = (sixth * ((green - blue) / delta))
            hue += 1.0 if green < blue
          elsif green == max # Color.near_zero_or_less(@g - max)
            hue = (sixth * ((blue - red) / delta)) + (1.0 / 3.0)
          elsif blue == max # Color.near_zero_or_less?(@b - max)
            hue = (sixth * ((red - green) / delta)) + (2.0 / 3.0)
          end

          hue += 1 if hue < 0
          hue -= 1 if hue > 1
        end
        new(hue, sat, lum)
      end
    end
  end
end
