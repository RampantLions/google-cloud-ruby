# Copyright 2019 Google LLC
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


module Google
  module Type
    # Represents a whole or partial calendar date, e.g. a birthday. The time of day
    # and time zone are either specified elsewhere or are not significant. The date
    # is relative to the Proleptic Gregorian Calendar. This can represent:
    #
    # * A full date, with non-zero year, month and day values
    # * A month and day value, with a zero year, e.g. an anniversary
    # * A year on its own, with zero month and day values
    # * A year and month value, with a zero day, e.g. a credit card expiration date
    #
    # Related types are {Google::Type::TimeOfDay} and `google.protobuf.Timestamp`.
    # @!attribute [rw] year
    #   @return [Integer]
    #     Year of date. Must be from 1 to 9999, or 0 if specifying a date without
    #     a year.
    # @!attribute [rw] month
    #   @return [Integer]
    #     Month of year. Must be from 1 to 12, or 0 if specifying a year without a
    #     month and day.
    # @!attribute [rw] day
    #   @return [Integer]
    #     Day of month. Must be from 1 to 31 and valid for the year and month, or 0
    #     if specifying a year by itself or a year and month where the day is not
    #     significant.
    class Date; end
  end
end