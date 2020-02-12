class CreateDaybooks < ActiveRecord::Migration[5.2]
  def change
    create_table :daybooks do |t|
      t.text :title
      t.text :body
      t.string :user_id

      t.timestamps
    end
  end
end
