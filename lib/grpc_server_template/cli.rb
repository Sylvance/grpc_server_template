# frozen_string_literal: true

require "thor"
require "fileutils"
require "erb"

module GrpcServerTemplate
  class Cli < Thor
    desc "create PROJECT_NAME", "Creates a new gRPC Ruby server project with the given name"
    def create(project_name)
      system("echo 'Hello world #{project_name}'")
    end
  end
end
