class CreateAktivitets < ActiveRecord::Migration
  def change
    create_table :aktivitets do |t|
      t.string :titel
      t.text :formal
      t.integer :user_id

      t.timestamps
    end
  end
end
