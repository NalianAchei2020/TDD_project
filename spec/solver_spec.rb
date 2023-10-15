require_relative 'spec_helper'

describe Solver do
  describe '.factorial' do
    it 'calculates the factorial of a number' do
      expect(Solver.factorial(0)).to eql(1)
      expect(Solver.factorial(1)).to eql(1)
      expect(Solver.factorial(5)).to eql(120)
    end
    it 'raises an ArgumentError for negative numbers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { Solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end
  describe '.reverse' do
    it 'reverses a string' do
      expect(Solver.reverse('hello')).to eql('olleh')
      expect(Solver.reverse('')).to eql('')
    end
  end
  describe '.fizzbuzz' do
    it 'Return correct output for fizzbuzz' do
      expect(Solver.fizzbuzz(1)).to eql('1')
      expect(Solver.fizzbuzz(15)).to eql('fizzbuzz')
      expect(Solver.fizzbuzz(3)).to eql('fizz')
      expect(Solver.fizzbuzz(9)).to eql('fizz')
      expect(Solver.fizzbuzz(5)).to eql('buzz')
      expect(Solver.fizzbuzz(10)).to eql('buzz')
    end
  end
end
