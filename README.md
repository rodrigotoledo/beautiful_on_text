# BeautifulOnText

BeautifulOnText is a Ruby gem that aims to beautify text before saving it to the database. It supports both plain text and HTML text.

## Installation

You can install BeautifulOnText by running the following command:

`gem install beautiful_on_text`

Or you can add it to your Gemfile:

`gem 'beautiful_on_text'`

And then run:

`bundle install`

## Usage

To use BeautifulOnText, simply call the `beautify` method on a string before saving it to the database:

```ruby
text = "This is some text."
beautified_text = text.beautify
```

By default, BeautifulOnText will beautify the text using the plain text formatter. To use the HTML formatter, pass :html as an argument to the beautify method:

```ruby
html_text = "<p>This is some text.</p>"
beautified_html_text = html_text.beautify(:html)
```

## Development

To contribute to BeautifulOnText, follow these steps:

1. Fork this repository and clone it to your local machine.
2. Run `bundle install` to install the gem's dependencies.
3. Run `bundle exec rake spec` to run the test suite.
4. Start hacking!

You can also run a console to experiment with the gem's functionality:

`bundle exec pry -r ./lib/beautiful_on_text.rb`

## Contributing

To contribute to BeautifulOnText, please follow these guidelines:

1. Fork this repository and make your changes on a feature branch.
2. Write tests for your changes.
3. Make your changes and commit them with clear commit messages.
4. Push your changes to your fork.
5. Submit a pull request.

## Author

BeautifulOnText was created by Rodrigo Toledo <rodrigo@rtoledo.inf.br>.