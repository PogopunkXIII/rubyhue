# frozen_string_literal: true

=begin
reprsents the following json object: {"on":{"on":true}}
because hue lights just need to have really confusing structure
=end
class HueOn
  include ActiveModel::Model

  # on is a hash, that hash has a key which is also 'on', just to make things more confusing
  attr_accessor :on

  #
  def initialize(attributes = {})
    @on = attributes.dig('on', 'on') if attributes['on'].is_a?(Hash)
  end

  #this feels like the wrong way to do this? but I guess not technically?
  def as_json(options = {})
    { 'on' => { 'on' => @on } }
  end
end
