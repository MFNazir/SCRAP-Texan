class CreateMetalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :metal_items do |t|
      t.string :metal_item_desc
      t.decimal :net_weight
      t.decimal :unit_price
      t.references :metal_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
