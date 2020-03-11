class CreateStateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :state_provinces do |t|
      t.string :state_province_name

      t.timestamps
    end
  end
end
