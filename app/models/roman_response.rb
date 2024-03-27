# frozen_string_literal: true

class RomanResponse
  include ActiveModel::Model

  attr_accessor :roman, :number

  def initialize(attributes = {})
    @roman = attributes['roman']
    @number = attributes['number']
  end

  def as_json(options = {})
    { roman: @roman, number: @number }
  end
end
