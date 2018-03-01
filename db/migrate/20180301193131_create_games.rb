class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.belongs_to :console, index: true

      t.string :name, null: false
      t.string :description
      t.date :releasedate, null: false
      t.boolean :owned
      t.boolean :completed
      t.boolean :digital
      t.timestamps
    end
  end
end
