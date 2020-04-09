# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# AUTO GENERATED BY GAPIC

require "simplecov"
require "minitest/autorun"
require "minitest/spec"

require "google/cloud/monitoring"

describe "MetricServiceSmokeTest v3" do
  it "runs one smoke test with list_monitored_resource_descriptors" do
    unless ENV["MONITORING_TEST_PROJECT"]
      fail "MONITORING_TEST_PROJECT environment variable must be defined"
    end
    project_id = ENV["MONITORING_TEST_PROJECT"].freeze

    metric_client = Google::Cloud::Monitoring::Metric.new(version: :v3)
    formatted_name = Google::Cloud::Monitoring::V3::MetricServiceClient.project_path(project_id)

    # Iterate over all results.
    metric_client.list_monitored_resource_descriptors(formatted_name).each do |element|
      # Process element.
    end

    # Or iterate over results one page at a time.
    metric_client.list_monitored_resource_descriptors(formatted_name).each_page do |page|
      # Process each page at a time.
      page.each do |element|
        # Process element.
      end
    end
  end
end