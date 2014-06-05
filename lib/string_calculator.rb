class StringCalculator
  def add(expression)
    extract_numbers(expression).reduce(&:+).to_i
  end

  class ExpressionParser
    def initialize(expression)
      @expression = expression
    end

    def numbers_string
      parse_expression[1]
    end

    def delimeter
      parse_expression[0] || default_delimeters
    end

    def to_s
      numbers_string
    end

    private

    attr_reader :expression

    def default_delimeters
      %r{,|\n}
    end

    def parse_expression
      _, custom_delimeter, numbers_string = /(\/\/(.{1})?)[\n]?(.*){1}/m.match(expression).captures
      return [custom_delimeter, numbers_string]
    end
  end

  private

  def extract_numbers(expression)
    parser = ExpressionParser.new(expression)
    parser.to_s.split(parser.delimeter).map(&:to_i)
  end

end
