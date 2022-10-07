class Solver
  def factorial(num)
    return 'No negative integer. This is an exception.' if num < 0
    return 1 if num == 0
    num * factorial(num-1)
  end
  context '#reverse method' do
  it 'should take one argument string word and returns word in reverse' do
    reversed_word = @solver.reverse('hello')
    expect(reversed_word).to match('olleh')
  end

  it 'should return an empty string when word is empty' do
    reversed_word = @solver.reverse('')
    expect(reversed_word).to match('')
  end
end
end