require_relative '../solver'

describe Solver do
  before :each do
    @newSolver = Solver.new
  end

  context '#factorial method' do
    it 'take argument n and return the factorial for it' do
      result = @newSolver.factorial(0)
      expect(result).to eq 1
    end
  end 

  it 'should return 720 when N is equal to 6' do
    result = @newSolver.factorial(6)
    expect(result).to eql 720
  end

  it 'should raise an exception when N is a negative integer' do
    result = @newSolver.factorial(-2)
    expect(result).to match('No negative integer. This is an exception.')
  end
  context '#reverse method' do
    it 'should take one argument string word and returns word in reverse' do
      reversed_word = @newSolver.reverse('hello')
      expect(reversed_word).to match('olleh')
    end

    it 'should return an empty string when word is empty' do
      reversed_word = @newSolver.reverse('')
      expect(reversed_word).to match('')
    end
  end

  context '#fizzbuzz function' do
    it 'should return fizzbuzz if the number is divisible by 3 and 5' do
      expect(@newSolver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'should return a fizz if the number is divisible by 3' do
      expect(@newSolver.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return a buzz if the number is divisible by 5' do
      expect(@newSolver.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return a number if the number is not divisible by 3 or 5' do
      expect(@newSolver.fizzbuzz(7)).to eq 7
    end
  end
end

