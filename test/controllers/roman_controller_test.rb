# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

class RomanControllerTest < ActionDispatch::IntegrationTest
  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  test "can convert XIII to 13" do
    get "/roman/XIII"
    assert_equal 13, JSON.parse(@response.body)['number']
  end

  test "can convert XX to 20" do
    get "/roman/XX"
    assert_equal 20, JSON.parse(@response.body)['number']
  end

  test "can convert CXVII to 117" do
    get "/roman/CXVII"
    assert_equal 117, JSON.parse(@response.body)['number']
  end

  test "can convert MCMXCI to 1991" do
    get "/roman/MCMXCI"
    assert_equal 1991, JSON.parse(@response.body)['number']
  end
end
