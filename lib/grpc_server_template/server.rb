# frozen_string_literal: true

require_relative "handler"

module GrpcServerTemplate
  # Server
  class Server
    class << self
      def start(port: 50_052)
        @server = GRPC::RpcServer.new
        @server.add_http2_port("0.0.0.0:#{port}", :this_port_is_insecure)
        @server.handle(GrpcServerTemplate::Handler)
        @server.run_till_terminated
      end
    end
  end
end
