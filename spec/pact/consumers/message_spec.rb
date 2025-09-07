# frozen_string_literal: true

require 'sbmt/pact/rspec'
require_relative '../../../app/producers/test_kafka_message_producer'

RSpec.describe 'Test Message Provider', :pact_v2 do
  message_pact_provider 'Test Message Producer', opts: {
    pact_dir: File.expand_path('../../pacts', __dir__),
  }

  handle_message 'a customer created message' do |provider_state|
    with_pact_producer { |client| TestKafkaMessageProducer.new(client: client).publish_message() }
  end
end
