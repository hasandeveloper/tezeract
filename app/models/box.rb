class Box < ApplicationRecord
  belongs_to :account
  belongs_to :aws_vpc
end
