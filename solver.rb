class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial is undefined for negative numbers' if number.negative?

    result = 1
    (1..number).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    raise ArgumentError, 'Input must be a positive integer' if number <= 0

    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
