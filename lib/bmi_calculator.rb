require "bmi_calculator/version"

module BmiCalculator

  # calc bmi.
  # @param [float] height(m) height
  # @param [float] weight(kg) weight
  # @param [intenger] round round number
  # @return [float] bmi
  def self.calc_m(height, weight, round=1)

    bmi = weight / (height * height)
    bmi.round(round)
  end

  # calc bmi.
  # @param [integer] height(cm) height
  # @param [float] weight(kg) weight
  # @param [integer] round round numberfddfv
  # @return [float] bmi
  def self.calc_cm(height, weight, round=1)

    height_m = (height / 100.0).round(2)

    bmi = weight / (height_m * height_m)
    bmi.round(round)
  end

  # calc bmi by yard-pound.
  # @param [integer] height_ft height(feet)
  # @param [integer] height_in height(inch)
  # @param [float] weight(pound) weight
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_yp(height_ft, height_in, weight, round=1)

    # 1feet = 12inch
    height = ((height_ft * 12) + height_in) * 1.0

    bmi = weight / (height * height) * 703
    bmi.round(round)
  end
end
