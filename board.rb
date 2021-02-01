# frozen_string_literal: true

# オセロのボードを定義するクラス
class Board
  BOARD_SIZE = 8
  MARGIN_SPACE = 2
  @grid = []

  def initialize
    mass_size = BOARD_SIZE + MARGIN_SPACE
    mass_size.times do |y|
      @grid.push []
      mass_size.times do |x|
        @grid[y].push(Mass.new(x: x, y: y))
      end
    end
    # @grid = Array.new(mass_size, Array.new(mass_size, '0'))
    @grid.each do |side_line|
      side_line.each do |mass|
        print mass.char
      end
      print "\n"
    end
  end

  private

  def clear_grid
    # @grid[3, 3] = Stone.new is_black: false
    # @grid[4, 3] = Stone.new is_black: true
    # @grid[4, 4] = Stone.new is_black: false
    # @grid[3, 4] = Stone.new is_black: true
  end
end
