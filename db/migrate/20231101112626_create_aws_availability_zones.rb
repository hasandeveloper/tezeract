class CreateAwsAvailabilityZones < ActiveRecord::Migration[7.1]
  def change
    create_table :aws_availability_zones do |t|
      t.string :name
      t.integer :region_id
      t.boolean :is_available

      t.timestamps
    end
  end
end
