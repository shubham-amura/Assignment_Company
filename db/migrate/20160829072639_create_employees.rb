class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees  do |t|
      t.string :employee_name
      t.string :phone
      t.text :email
      t.references :company, index: true

      t.timestamps null: false
    end
  end
end
