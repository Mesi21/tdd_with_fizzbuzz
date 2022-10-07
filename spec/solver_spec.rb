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
    result = @solver.factorial(6)
    expect(result).to eql 720
  end

  it 'should raise an exception when N is a negative integer' do
    result = @solver.factorial(-2)
    expect(result).to match('No negative integer. This is an exception.')
  end
end
