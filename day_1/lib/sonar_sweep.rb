# frozen_string_literal: true

# SonarSweep class for day 1 of AoC
class SonarSweep
  def initialize(input)
    @depths = input
  end

  def build_new_input
    x = 0
    new_input = []
    @depths.each do |depth|
      value = depth.to_i
      sum = value + @depths[x + 1].to_i + @depths[x + 2].to_i
      new_input.push(sum)
      x += 1
    end
    increased_depth_count(new_input, 0, 0)
  end

  def increased_depth_count(array, count, index)
    array.each do |depth|
      d = depth.to_i
      if array[1].to_i > d
        count += 1
      elsif array[index + 1].to_i > d
        count += 1
      end
      index += 1
    end
    count
  end
end

puts SonarSweep.new(File.readlines('day_1/input.txt')).build_new_input
