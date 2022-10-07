class Solver
  def factorial(num)
    return 'No negative integer. This is an exception.' if num < 0
    return 1 if num == 0
    num * factorial(num-1)
  end
  def reverse(word)
    word.reverse
  end
end