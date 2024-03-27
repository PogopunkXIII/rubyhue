# frozen_string_literal: true

class RomanController < ApplicationController
  require 'json'

  def toNumber
    num = RomanToNumberConverter.toNumber(params[:romanNumeral])

    response = RomanResponse.new('roman' => params[:romanNumeral], 'number' => num)
    render json: response.as_json
  end
end


