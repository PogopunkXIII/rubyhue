# frozen_string_literal: true

class Hue_color
  include ActiveModel::Model

  attr_accessor :x, :y

  def initialize(attributes = {})
    if attributes['color'].is_a?(Hash) && attributes['color']['xy'].is_a?(Hash)
      @x = attributes.dig('color', 'xy', 'x')
      @y = attributes.dig('color', 'xy', 'y')
    end
  end

  def as_json(options = {})
    {
      color: {
        xy: {
          x: @x,
          y: @y
        }
      }
    }
  end
end
