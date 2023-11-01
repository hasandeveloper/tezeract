class CreateAwsSubnets < ActiveRecord::Migration[7.1]
  def change
    create_table :aws_subnets do |t|
      t.string :name
      t.integer :aws_opted_availability_zone_id

      t.timestamps
    end
  end
end
