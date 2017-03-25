class CreateCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :competences do |t|

      t.timestamps
    end
  end
end
