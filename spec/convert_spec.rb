require 'spec_helper'

describe BmiCalculator::Convert do
  it 'inch to feet' do
    feet = BmiCalculator::Convert.inch_to_feet(12)
    expect(feet).to eq 1.0
  end

  it 'feet to inch' do
    inch = BmiCalculator::Convert.feet_to_inch(1)
    expect(inch).to eq 12.0
  end
end
