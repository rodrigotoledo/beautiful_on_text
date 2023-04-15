require 'dotenv/load'
require_relative 'beautiful_on_text/model_additions'
require_relative 'beautiful_on_text/plain_text_formatter'
require_relative 'beautiful_on_text/html_formatter'

module BeautifulOnText
  class Error < StandardError; end
end
