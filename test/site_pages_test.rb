require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def setup
    @base = "Learn Enough Ruby Sample App"
  end
  
  def test_index
    get '/'
    assert last_response.ok?
    #same as .css('h1').first
    assert doc(last_response).at_css('h1')
    title = doc(last_response).at_css('title').content
    assert_equal "#{@base} | Home", title
    assert doc(last_response).at_css('nav')
    assert  doc(last_response).at_css('.container > header > nav')
  end

  def test_about
    get '/about'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title = doc(last_response).at_css('title').content
    assert_equal "#{@base} | About", title
    assert doc(last_response).at_css('head > link')
  end

  def test_palindrome
    get '/palindrome'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title = doc(last_response).at_css('title').content
    assert_equal "#{@base} | Palindrome Detector", title
  end
end