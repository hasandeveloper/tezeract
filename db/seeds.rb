# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

%w(AWS, GCP, DO).each do |cloud_name|
  CloudProvider.create(name: cloud_name)
end

# CloudProvider.first.destroy

aws_region = AwsRegion.create do |aws_region|
  aws_region.name = "Oregon"
end

# AwsRegion.first.destroy

acc = Account.create do |acc|
  acc.email = "admin@gmail.com"
  acc.subdomain = "test"
  acc.is_active = false
  acc.password = "1234"
end

# Account.first.destroy

aws_vpc = AwsVpc.create do |aws_vpc|
  aws_vpc.name = "Default"
  aws_vpc.ipv4_cidr_block = "10.0.0.0/16"
  aws_vpc.tenancy = "Default"
  aws_vpc.account_id = acc.id
end

# AwsVpc.first.destroy

box = Box.create do |box|
  box.name = "test box name"
  box.os_image = "Ubuntu"
  box.family_type = "t3"
  box.disk = "123gb"
  box.account_id = acc.id
  box.aws_vpc_id = aws_vpc.id
end

# Box.first.destroy

aws_data_center = AwsDataCenter.create do |aws_data_center|
  aws_data_center.aws_vpc_id = aws_vpc.id
  aws_data_center.aws_region_id = aws_region.id
end

binding.pry
