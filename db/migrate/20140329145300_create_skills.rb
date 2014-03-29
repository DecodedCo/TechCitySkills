class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.references :skillCategory

      t.timestamps
    end
    add_index :skills, :skillCategory_id
  end
end
