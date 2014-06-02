require 'spec_helper'

describe StringCalculator do
  subject(:calc) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 if empty string is entered' do
      calc.add("").should eq(0)
    end

    it 'returns a number if only one number is provided' do
      calc.add("2").should eq(2)
      calc.add("1").should eq(1)
    end

    it 'allows adding two numbers' do
      calc.add("1,2").should eq(3)
    end
  end
end
