class CreateAwsOptedAvailabilityZones < ActiveRecord::Migration[7.1]
  def change
    create_table :aws_opted_availability_zones do |t|
      t.integer :aws_vpc
      t.integer :aws_availability_zone

      t.timestamps
    end
  end
end
