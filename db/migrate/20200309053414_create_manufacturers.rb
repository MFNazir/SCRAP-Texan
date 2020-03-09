class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name

      t.timestamps
    end
  end
end
