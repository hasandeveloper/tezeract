class AwsRegion < ApplicationRecord
  has_many :aws_availability_zones
  has_one :aws_data_center
  has_one :aws_vpc, through: :aws_data_center
end
