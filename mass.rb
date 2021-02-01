# frozen_string_literal: true

class Mass
  @stone = nil

  attr_reader :x, :y, :char

  def initialize(x:, y:)
    @x = x
    @y = y
    @char = '@'
  end

  def put_stone(stone:)
    @stone = stone
    @char = stone.color
  end
end
