# frozen_string_literal: true

class Stone
  BLACK_CHARACTER = '●'
  WHITE_CHARACTER = '○'

  attr_reader :color

  def initialize(is_black:)
    @color = is_black ? BLACK_CHARACTER : WHITE_CHARACTER
  end
end
