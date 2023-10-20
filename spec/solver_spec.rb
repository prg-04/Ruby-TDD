require_relative '../solver'
describe Solver do
  let(:solver) { Solver.new }
  describe '#factorial' do
    it 'returns 1 when N is 0' do
      expect(solver.factorial(0)).to eq(1)
    end
    it 'returns the correct factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
    end
    it 'raises an exception for a negative integer' do
      expect { solver.factorial(-3) }.to raise_error(ArgumentError, 'Factorial is undefined for negative numbers')
    end
  end
  describe '#reverse' do
    it 'reverses a word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end
    it 'returns "buzz" when N is divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns N as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
    it 'raises an exception for non-positive integers' do
      expect { solver.fizzbuzz(0) }.to raise_error(ArgumentError, 'Input must be a positive integer')
      expect { solver.fizzbuzz(-5) }.to raise_error(ArgumentError, 'Input must be a positive integer')
    end
  end
end
