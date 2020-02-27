# frozen_string_literal: true

# オセロのボードを定義するクラス
class Board
  BOARD_SIZE = 8
  MARGIN_SPACE = 2
  @grid = nil

  def initialize
    mass_size = BOARD_SIZE + MARGIN_SPACE
    @grid = Array.new(mass_size, Array.new(mass_size, '0'))
    @grid.each do |mass|
      print mass
      print "\n"
    end
  end

  def put(x:, y:); end
end
