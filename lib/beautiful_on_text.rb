# frozen_string_literal: true

module BeautifulOnText
  class Error < StandardError; end

  VERSION = '0.1.0'

  module ModelAdditions
    def beautify_on(*attr_names, **options)
      formatter = options[:format] || :text

      before_save do
        attr_names.each do |attr_name|
          value = send(attr_name)
          next if value.nil?

          formatted_value = beautify(value, formatter)
          send("#{attr_name}=", formatted_value)
        end
      end
    end
  end

  def beautify(text, format = :text)
    if format == :text
      improved_text = Openai::Client.new(api_key: 'YOUR_API_KEY').complete(
        engine: 'text-davinci-002',
        prompt: text,
        max_tokens: 200,
        n: 1,
        stop: nil,
        temperature: 0.7,
        frequency_penalty: 0,
        presence_penalty: 0
      ).choices.first.text

      PlainTextFormatter.format(improved_text)
    else
      improved_text = Openai::Client.new(api_key: 'YOUR_API_KEY').complete(
        engine: 'davinci',
        prompt: text,
        max_tokens: 200,
        n: 1,
        stop: nil,
        temperature: 0.7,
        frequency_penalty: 0,
        presence_penalty: 0
      ).choices.first.text

      HtmlFormatter.format(improved_text)
    end
  end
end
