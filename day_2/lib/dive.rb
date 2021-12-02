# frozen_string_literal: true

# Dive class for day 2 of AoC
class Dive
  def initialize(input)
    @directions = input
  end

  def translate_direction(dir)
    direction = dir.chomp.split(' ', 2)
    [direction[0], direction[1].to_i]
  end

  def follow_directions
    hori = 0
    verti = 0

    @directions.each do |dir|
      move = translate_direction(dir)
      order = move[0]
      distance = move[1]
      case order
      when 'forward'
        hori += distance
      when 'up'
        verti -= distance
      when 'down'
        verti += distance
      end
    end
    "#{hori} x #{verti} = #{hori * verti}"
  end
end

puts Dive.new(File.readlines('day_2/input.txt')).follow_directions
