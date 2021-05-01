class CreateFamilymembers < ActiveRecord::Migration[6.1]
  def change
    create_table :familymembers do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
