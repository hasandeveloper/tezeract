class AwsRegion < ApplicationRecord
  has_many :aws_availability_zones
  has_many :aws_data_centers
  has_many :aws_vpcs, through: :aws_data_centers
end
