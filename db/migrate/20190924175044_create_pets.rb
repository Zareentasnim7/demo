class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :person, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
