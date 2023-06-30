class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.integer :age
      
      t.timestamps
    end
  end
end
