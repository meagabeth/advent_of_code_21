class SonarSweep
  def initialize(input)
    @depths = input
  end

  def depth_increase
    increased = 0
    index = 0

    depth_count(increased, index)
  end

  def depth_count(increased, index)
    @depths.each do |depth|
      d = depth.to_i
      if @depths[1].to_i > d
        increased += 1
      elsif @depths[index + 1].to_i > d
        increased += 1
      end
      index += 1
    end
    increased
  end
end

puts SonarSweep.new(File.readlines('day_1/input.txt')).depth_increase
