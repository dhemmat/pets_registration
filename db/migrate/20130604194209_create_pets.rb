class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :owner
      t.string :name
      t.string :age
      t.references :pet_type

      t.timestamps
    end
    add_index :pets, :owner_id
    add_index :pets, :pet_type_id
  end
end
