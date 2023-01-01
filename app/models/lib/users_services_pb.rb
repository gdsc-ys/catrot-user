# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: users.proto for package 'users'

require 'grpc'
require_relative 'users_pb'

module Users
  module Functions
    class Service 

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'users.Functions'

      # Send a user id and get his information
      rpc :GetInfo, ::Users::UserRequest, ::Users::UserReply
      # Send a user id and change in manner variable in the server
      rpc :ChangeManner, ::Users::MannerRequest, ::Users::MannerReply
    end

    Stub = Service.rpc_stub_class
  end
end
