class AddTotalToMetalItems < ActiveRecord::Migration[6.0]
  def change
    add_column :metal_items, :total, :decimal
  end
end
