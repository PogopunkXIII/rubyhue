class HueController < ApplicationController
  require 'json'
  require 'httparty'
  require 'dotenv'

  def index
  end

  def on
    Dotenv.load
    onObject = HueOn.new({'on' => {'on' => true}})
    response = light_on_off(onObject)
    puts response
  end

  def off
    Dotenv.load
    offObject = HueOn.new({'on' => {'on' => false}})

    response = light_on_off(offObject)
    puts response
  end

  def light_on_off(body)

    headers = {
      'Content-Type' => 'application/json',
      'hue-application-key' => ENV['HUE_USERNAME']
    }

    HTTParty.put("https://192.168.1.146/clip/v2/resource/light/#{ENV['LIGHT_ID']}", headers: headers, body: body.to_json, :verify => false)
  end

  def color

  end
end
