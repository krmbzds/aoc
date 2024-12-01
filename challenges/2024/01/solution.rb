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
  end
end
