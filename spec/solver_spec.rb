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
end