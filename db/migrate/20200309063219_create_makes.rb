class CreateMakes < ActiveRecord::Migration[6.0]
  def change
    create_table :makes do |t|
      t.string :make_name
      t.references :manufacturer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
