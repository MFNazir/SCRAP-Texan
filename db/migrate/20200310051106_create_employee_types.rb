class CreateEmployeeTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_types do |t|
      t.string :employee_type
      t.string :employee_type_desc

      t.timestamps
    end
  end
end
