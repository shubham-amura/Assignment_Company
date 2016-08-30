class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :city
      t.text :country
      t.references :addressable ,polymorphic: true ,index: true
      t.timestamps null: false
    end
  end
end
