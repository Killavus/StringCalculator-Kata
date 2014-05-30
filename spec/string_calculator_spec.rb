require 'spec_helper'

describe StringCalculator do
  subject { StringCalculator.new }

  describe '#add' do
    it 'returns 0 if empty string is entered' do
      subject.add("").should eq(0)
    end

    it "returns sum of 0 attributes" do
      subject.add().should eq(0)
    end

    it 'returns a number if only one number is provided' do
      subject.add("2").should eq(2)
      subject.add("1").should eq(1)
    end
  end
end
