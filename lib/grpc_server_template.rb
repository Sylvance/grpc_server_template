# frozen_string_literal: true

Dir[File.join(__dir__, "grpc_server_template", "*.rb")].sort.each { |file| require file }

module GrpcServerTemplate
  class Error < StandardError; end
  # Your code goes here...
end
