class StringCalculator
  def add(expression)
    extract_numbers(expression).reduce(&:+).to_i
  end

  private

  def extract_numbers(expression)
    expression.split(',').map(&:to_i)
  end
end
