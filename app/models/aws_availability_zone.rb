class AwsAvailabilityZone < ApplicationRecord
  belongs_to :aws_region
  has_many :aws_opted_availability_zones
  has_many :aws_vpcs, through: :aws_opted_availability_zones
end
