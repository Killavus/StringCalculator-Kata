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

    it 'allows adding arbitrary number of arguments' do
      calc.add("1,4,5,2").should eq(12)
      calc.add("1,2,7").should eq(10)
    end

    it 'allows linebreaks as a delimeter' do
      calc.add("1\n2").should eq(3)
      calc.add("1,2\n3").should eq(6)
    end
  end
end
