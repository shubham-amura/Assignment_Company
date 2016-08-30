class ChangeColumnOfEmployee < ActiveRecord::Migration
  def change
  
  	change_column :employees , :email , :string
  	change_column :employees , :phone , :string

  end

end
