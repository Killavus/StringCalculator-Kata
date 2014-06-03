class StringCalculator
  def add(expression)
    splitted_to_parts(expression).reduce(&:+).to_i
  end

  private
  def splitted_to_parts(expression)
    expression.split(',').map(&:to_i)
  end
end
