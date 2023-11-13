class CreateAwsVpcs < ActiveRecord::Migration[7.1]
  def change
    create_table :aws_vpcs do |t|
      t.string :name
      t.text :ipv4_cidr_block
      t.string :tenancy
      t.integer :account_id
      t.timestamps
    end
  end
end
