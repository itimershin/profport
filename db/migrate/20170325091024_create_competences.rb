class CreateCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :competences do |t|
      t.string :title
      t.string :author
      t.integer :skillrate
      t.timestamps
    end
    add_index :competences, :title, unique: true
  end
end
