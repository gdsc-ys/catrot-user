# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/consumer.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/consumer.proto", :syntax => :proto3) do
    add_message "google.api.ProjectProperties" do
      repeated :properties, :message, 1, "google.api.Property"
    end
    add_message "google.api.Property" do
      optional :name, :string, 1
      optional :type, :enum, 2, "google.api.Property.PropertyType"
      optional :description, :string, 3
    end
    add_enum "google.api.Property.PropertyType" do
      value :UNSPECIFIED, 0
      value :INT64, 1
      value :BOOL, 2
      value :STRING, 3
      value :DOUBLE, 4
    end
  end
end

module Google
  module Api
    ProjectProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ProjectProperties").msgclass
    Property = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Property").msgclass
    Property::PropertyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Property.PropertyType").enummodule
  end
end
