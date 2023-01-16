# frozen_string_literal: true

require_relative "messages"
require_relative "service"

module GrpcServerTemplate
  # Handler
  class Handler < GrpcServerTemplate::Service
    def say_hello(hello_req, _unused_call)
      puts "Request: #{hello_req}"
      GrpcServerTemplate::Messages::HelloReply.new(message: "Hello #{hello_req.name}")
    end
  end
end
