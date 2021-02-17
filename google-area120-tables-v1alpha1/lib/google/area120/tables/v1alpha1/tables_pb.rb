# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/area120/tables/v1alpha1/tables.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/area120/tables/v1alpha1/tables.proto", :syntax => :proto3) do
    add_message "google.area120.tables.v1alpha1.GetTableRequest" do
      optional :name, :string, 1
    end
    add_message "google.area120.tables.v1alpha1.ListTablesRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "google.area120.tables.v1alpha1.ListTablesResponse" do
      repeated :tables, :message, 1, "google.area120.tables.v1alpha1.Table"
      optional :next_page_token, :string, 2
    end
    add_message "google.area120.tables.v1alpha1.GetRowRequest" do
      optional :name, :string, 1
      optional :view, :enum, 2, "google.area120.tables.v1alpha1.View"
    end
    add_message "google.area120.tables.v1alpha1.ListRowsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :view, :enum, 4, "google.area120.tables.v1alpha1.View"
    end
    add_message "google.area120.tables.v1alpha1.ListRowsResponse" do
      repeated :rows, :message, 1, "google.area120.tables.v1alpha1.Row"
      optional :next_page_token, :string, 2
    end
    add_message "google.area120.tables.v1alpha1.CreateRowRequest" do
      optional :parent, :string, 1
      optional :row, :message, 2, "google.area120.tables.v1alpha1.Row"
      optional :view, :enum, 3, "google.area120.tables.v1alpha1.View"
    end
    add_message "google.area120.tables.v1alpha1.BatchCreateRowsRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.area120.tables.v1alpha1.CreateRowRequest"
    end
    add_message "google.area120.tables.v1alpha1.BatchCreateRowsResponse" do
      repeated :rows, :message, 1, "google.area120.tables.v1alpha1.Row"
    end
    add_message "google.area120.tables.v1alpha1.UpdateRowRequest" do
      optional :row, :message, 1, "google.area120.tables.v1alpha1.Row"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :view, :enum, 3, "google.area120.tables.v1alpha1.View"
    end
    add_message "google.area120.tables.v1alpha1.BatchUpdateRowsRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.area120.tables.v1alpha1.UpdateRowRequest"
    end
    add_message "google.area120.tables.v1alpha1.BatchUpdateRowsResponse" do
      repeated :rows, :message, 1, "google.area120.tables.v1alpha1.Row"
    end
    add_message "google.area120.tables.v1alpha1.DeleteRowRequest" do
      optional :name, :string, 1
    end
    add_message "google.area120.tables.v1alpha1.Table" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      repeated :columns, :message, 3, "google.area120.tables.v1alpha1.ColumnDescription"
    end
    add_message "google.area120.tables.v1alpha1.ColumnDescription" do
      optional :name, :string, 1
      optional :data_type, :string, 2
      optional :id, :string, 3
    end
    add_message "google.area120.tables.v1alpha1.Row" do
      optional :name, :string, 1
      map :values, :string, :message, 2, "google.protobuf.Value"
    end
    add_enum "google.area120.tables.v1alpha1.View" do
      value :VIEW_UNSPECIFIED, 0
      value :COLUMN_ID_VIEW, 1
    end
  end
end

module Google
  module Area120
    module Tables
      module V1alpha1
        GetTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.GetTableRequest").msgclass
        ListTablesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.ListTablesRequest").msgclass
        ListTablesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.ListTablesResponse").msgclass
        GetRowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.GetRowRequest").msgclass
        ListRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.ListRowsRequest").msgclass
        ListRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.ListRowsResponse").msgclass
        CreateRowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.CreateRowRequest").msgclass
        BatchCreateRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.BatchCreateRowsRequest").msgclass
        BatchCreateRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.BatchCreateRowsResponse").msgclass
        UpdateRowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.UpdateRowRequest").msgclass
        BatchUpdateRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.BatchUpdateRowsRequest").msgclass
        BatchUpdateRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.BatchUpdateRowsResponse").msgclass
        DeleteRowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.DeleteRowRequest").msgclass
        Table = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.Table").msgclass
        ColumnDescription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.ColumnDescription").msgclass
        Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.Row").msgclass
        View = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.area120.tables.v1alpha1.View").enummodule
      end
    end
  end
end