class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
