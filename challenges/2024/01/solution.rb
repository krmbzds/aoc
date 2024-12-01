# frozen_string_literal: true

module Year2024
  class Day01 < Solution
    def part_1
      @input.split("\n")
        .map { |l| l.split.map(&:to_i) }
        .transpose
        .map(&:sort)
        .transpose
        .map { |c1, c2| (c1 - c2).abs }
        .sum
    end

    def part_2
      l1, l2 = @input.split("\n").map { |l| l.split.map(&:to_i) }.transpose
      l1.map { |x| x * l2.count(x) }.sum
    end
  end
end
