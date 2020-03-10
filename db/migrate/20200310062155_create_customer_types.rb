class CreateCustomerTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_types do |t|
      t.string :customer_type
      t.string :customer_type_desc

      t.timestamps
    end
  end
end
