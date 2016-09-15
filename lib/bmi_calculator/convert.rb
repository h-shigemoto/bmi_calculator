
module BmiCalculator

  # 変換クラス
  class Convert

    # convert feet to inch.
    # @param [float] feet feet
    # @return [float] inch
    def self.feet_to_inch(feet)
      feet * 12.0
    end

    # convert inch to feet.
    # @param [float] inch inch
    # @return [float] feet
    def self.inch_to_feet(inch)
      inch / 12.0
    end
  end
end