require "bmi_calculator/version"
require "bmi_calculator/convert"

module BmiCalculator

  # calc bmi.
  # @param [float] height height(m)
  # @param [float] weight weight(kg)
  # @param [intenger] round round number
  # @return [float] bmi
  def self.calc_m(height, weight, round=1)

    bmi = weight / (height * height)
    bmi.round(round)
  end

  # calc bmi.
  # @param [integer] height height(cm)
  # @param [float] weight weight(kg)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_cm(height, weight, round=1)

    height_m = (height / 100.0).round(2)

    bmi = weight / (height_m * height_m)
    bmi.round(round)
  end

  # calc bmi.
  # @param [integer] height height(cm)
  # @param [float] weight weight(g)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_cm_g(height, weight, round=1)

    height_m = (height / 100.0).round(2)
    weight_kg = (weight / 1000.0).round(1)

    bmi = weight_kg / (height_m * height_m)
    bmi.round(round)
  end

  # calc bmi by yard-pound.
  # @param [integer] height_ft height(feet)
  # @param [integer] height_in height(inch)
  # @param [float] weight weight(pound)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_yp(height_ft, height_in, weight, round=1)

    # 1feet = 12inch
    height = (BmiCalculator::Convert.feet_to_inch(height_ft) + height_in) * 1.0
    # calc bmi.
    calc_inner_yp(height, weight, round)
  end

  # calc bmi by yard-pound.
  # @param [integer] height height(feet)
  # @param [float] weight weight(pound)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_feet_yp(height, weight, round=1)

    # convert to inch.
    height_in = BmiCalculator::Convert.feet_to_inch(height)
    # calc bmi.
    calc_inner_yp(height_in, weight, round)
  end

  # calc bmi by yard-pound.
  # @param [integer] height height(inch)
  # @param [float] weight weight(pound)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_inch_yp(height, weight, round=1)

    # calc bmi.
    calc_inner_yp(height * 1.0, weight, round)
  end

  private

  # yard-pound 703.0
  YARD_POUND = 703.0

  # calc bmi by yard-pound.
  # @param [integer] height height(inch)
  # @param [float] weight weight(pound)
  # @param [integer] round round number
  # @return [float] bmi
  def self.calc_inner_yp(height, weight, round)

    # calc bmi.
    bmi = weight / (height * height) * YARD_POUND
    bmi.round(round)
  end
end
