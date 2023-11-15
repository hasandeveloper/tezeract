class AwsVpc < ApplicationRecord
  belongs_to :account
  has_many :boxes
  has_one :aws_data_center
  has_one :aws_region, through: :aws_data_center

  has_many :aws_opted_availability_zones
  has_many :aws_availability_zones, through: :aws_opted_availability_zones
end
