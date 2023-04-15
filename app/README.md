My Awesome Application

Introduction

My Awesome Application is a web-based platform for creating and sharing beautiful text. It is built using Ruby on Rails, with the help of the BeautifulOnText gem.

Installation

To install My Awesome Application, you first need to install Ruby and Rails. Once you have done that, you can add the BeautifulOnText gem to your project by adding the following line to your Gemfile:

```
gem 'beautiful_on_text'
````

Then, run the following command to install the gem:

```
bundle install
```

Usage

To use BeautifulOnText in your ActiveRecord models, simply include the ModelAdditions module and call the beautify_on method with the attributes you want to beautify, along with any formatting options. For example:

```ruby
class Post < ApplicationRecord
  include BeautifulOnText::ModelAdditions

  beautify_on :body, format: :html
end
```

This will automatically beautify the body attribute of any Post record when it is saved, using the :html format.

You can also use the beautify method directly in your code to beautify any string. For example:

```ruby
text = "This is some text that needs to be beautified"
formatted_text = BeautifulOnText.beautify(text, :text)
```

Testing

We use RSpec to test the functionality of BeautifulOnText. Our test suite includes tests for the beautify method and for the ModelAdditions module. Here is an example of a test for the beautify method:

```ruby
require 'spec_helper'

RSpec.describe BeautifulOnText do
  describe '.beautify' do
    context 'when the format is :text' do
      it 'formats the text as plain text' do
        text = 'This is some text that needs to be beautified'
        formatted_text = BeautifulOnText.beautify(text, :text)
        expect(formatted_text).to eq('This is some formatted text')
      end
    end

    context 'when the format is not :text' do
      it 'formats the text as HTML' do
        text = 'This is some text that needs to be beautified'
        formatted_text = BeautifulOnText.beautify(text, :html)
        expect(formatted_text).to eq('<p>This is some formatted text</p>')
      end
    end
  end
end
```

Conclusion

Thanks to the BeautifulOnText gem, My Awesome Application is able to provide users with beautifully formatted text, making their content stand out and look great.
