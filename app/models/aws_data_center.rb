class AwsDataCenter < ApplicationRecord
  belongs_to :aws_vpc
  belongs_to :aws_region
end
