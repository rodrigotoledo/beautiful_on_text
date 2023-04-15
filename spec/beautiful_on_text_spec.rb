require 'spec_helper'

RSpec.describe BeautifulOnText::ModelAdditions do
  # Define the model class that should include the gem
  # Replace "MyModel" with the name of your model class
  let(:model_class) { Class.new(ActiveRecord::Base) { self.table_name = 'my_models' } }

  # Include the gem in the model
  before { model_class.include BeautifulOnText::ModelAdditions }

  describe '#beautify_on' do
    # Define an example attribute to test
    let(:attribute_name) { :description }

    context 'when the attribute value is nil' do
      it 'does not change the attribute value' do
        # Create a record with a nil value in the attribute
        model = model_class.create(attribute_name => nil)

        # Verify that the attribute value was not changed
        expect(model[attribute_name]).to be_nil
      end
    end

    context 'when the attribute value is not nil' do
      it 'formats the attribute value' do
        # Define an example value for the attribute
        original_value = 'This is some text that needs to be beautified'

        # Create a record with the attribute value set
        model = model_class.create(attribute_name => original_value)

        # Verify that the attribute value was changed to the expected format
        expect(model[attribute_name]).to eq('This is some formatted text')
      end
    end
  end
end
