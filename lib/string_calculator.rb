class StringCalculator
  def add(expression)
    splitted_to_parts(expression).reduce(&:+).to_i
  end

  private
  def splitted_to_parts(expression)
    first, second = expression.split(',')
    [first, second].compact.map(&:to_i)
  end
end
