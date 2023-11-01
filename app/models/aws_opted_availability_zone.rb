class AwsOptedAvailabilityZone < ApplicationRecord
  belongs_to :aws_vpc
  belongs_to :aws_availability_zone
  has_many :subnets
end
