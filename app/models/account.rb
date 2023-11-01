class Account < ApplicationRecord
  has_many :aws_vpcs
  has_many :boxes
end
