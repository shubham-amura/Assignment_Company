class AddDetailsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :salary, :integer
    add_column :employees, :designation, :string
  end
end
