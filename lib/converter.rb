# frozen_string_literal: true

module Converter
  ROMAN_DIGITS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def toNumber(romanNumeral)
    normalizedRoman = normalize(romanNumeral)

    total = 0
    previous = 0

    puts normalizedRoman

    normalizedRoman.reverse.each_char do |char|
      value = ROMAN_DIGITS[char]

      if value < previous
        total -= value
      else
        total += value
      end

      previous = value
    end

    total
  end

  def normalize(romanNumeral)
    romanNumeral.upcase
  end
end
