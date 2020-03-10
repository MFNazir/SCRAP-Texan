class CreateMetalTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :metal_types do |t|
      t.string :metal_type
      t.string :metal_type_desc

      t.timestamps
    end
  end
end
