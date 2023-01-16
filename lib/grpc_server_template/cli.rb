# frozen_string_literal: true

require "thor"

module GrpcServerTemplate
  # Cli class
  class Cli < Thor
    desc "build", "Build gRPC from proto file"
    def build
      system("bin/build")
    end

    desc "client", "runs the client"
    def client
      system("bin/client")
    end

    desc "server", "runs the server"
    def server
      system("bin/server")
    end
  end
end
