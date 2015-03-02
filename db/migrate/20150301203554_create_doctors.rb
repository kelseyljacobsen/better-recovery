class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :group
      t.string :specialty
      t.string :address
      t.string :city
      t.string :zip
      t.string :phone
      t.string :web

      t.timestamps null: false
    end
  end
end
