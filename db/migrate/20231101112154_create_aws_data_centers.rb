class CreateAwsDataCenters < ActiveRecord::Migration[7.1]
  def change
    create_table :aws_data_centers do |t|
      t.integer :aws_vpc_id
      t.integer :aws_region_id

      t.timestamps
    end
  end
end
