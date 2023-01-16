# frozen_string_literal: true

require_relative 'messages'
require_relative 'service'

module GrpcServerTemplate
  # Client
  class Client
    class << self
      def say_hello(name: "server")
        stub = GrpcServerTemplate::Stub.new('0.0.0.0:50052', :this_channel_is_insecure)
        req = GrpcServerTemplate::Messages::HelloRequest.new(name: name)
        resp_obj = stub.say_hello(req)
        puts "Response: #{resp_obj}"
      end
    end
  end
end

