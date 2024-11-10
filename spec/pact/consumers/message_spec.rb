# frozen_string_literal: true

require 'sbmt/pact/rspec'
require_relative '../../../app/producers/test_message_producer'

RSpec.describe 'Test Message Provider', :pact do
  message_pact_provider 'Test Message Provider'

  pact_config.instance_variable_set(:@pact_dir,
                                    File.expand_path('../../pacts', __dir__))

  handle_message 'a customer created message' do
    with_pact_producer { Producer.publish_message }
  end
end
