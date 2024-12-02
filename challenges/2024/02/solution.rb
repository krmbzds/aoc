# frozen_string_literal: true

module Year2024
  class Day02 < Solution
    def part_1
      reports = @input.split("\n").map { |l| l.split.map(&:to_i) }
      reports.count do |r|
        c = r.each_cons(2)
        c.all? { |a, b| (a - b).abs.between?(1, 3) } && c.map { |a, b| a <=> b }.uniq.one?
      end
    end
  end
end
