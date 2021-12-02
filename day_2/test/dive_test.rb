require 'test/unit'
require './day_2/lib/dive'

class DiveTest < Test::Unit::TestCase
  
  def test_directions
    input = [
      'forward 5',
      'down 5',
      'forward 8',
      'up 3',
      'down 8',
      'forward 2'
    ]

    follow_directions(input)
  end

  def follow_directions(input)
    hori = 0
    verti = 0

    input.each do |dir|
      val = dir[-1, 1].to_i
      if dir.include? 'forward'
        hori += val
      elsif dir.include? 'up'
        verti -= val
      elsif dir.include? 'down'
        verti += val
      end
    end
    puts "Hori is #{hori}, Verti is #{verti}"
  end
end
