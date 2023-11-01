class CreateCloudProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :cloud_providers do |t|
      t.string :name
      t.text :avatar

      t.timestamps
    end
  end
end
