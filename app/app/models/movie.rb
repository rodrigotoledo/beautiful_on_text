class Movie < ApplicationRecord
  include BeautifulOnText::ModelAdditions
  beautify_on :title
  # beautify_on :description, format: :html
end
