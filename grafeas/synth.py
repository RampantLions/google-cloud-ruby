# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""This script is used to synthesize generated parts of this library."""

import synthtool as s
import synthtool.gcp as gcp
import synthtool.languages.ruby as ruby
import logging

logging.basicConfig(level=logging.DEBUG)

gapic = gcp.GAPICMicrogenerator()
library = gapic.ruby_library(
    "grafeas", "v1",
    proto_path="grafeas/v1",
    generator_args={
        "ruby-cloud-gem-name": "grafeas",
        "ruby-cloud-title": "Grafeas",
        "ruby-cloud-description": "The Grafeas API stores, and enables querying and retrieval of, critical metadata about all of your software artifacts.",
        "ruby-cloud-env-prefix": "GRAFEAS",
        "ruby-cloud-wrapper-of": "v1:0.0",
        "ruby-cloud-product-url": "https://grafeas.io",
        "ruby-cloud-migration-version": "1.0",
        "ruby-cloud-generic-endpoint": "true",
    }
)

s.copy(library, merge=ruby.global_merge)
