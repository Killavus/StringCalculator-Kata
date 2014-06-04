class StringCalculator
  def add(expression)
    extract_numbers(expression).reduce(&:+).to_i
  end

  private

  def extract_numbers(expression)
    expression.split(allowed_delimiters).map(&:to_i)
  end

  def allowed_delimiters
    %r{,|\n}
  end
end
