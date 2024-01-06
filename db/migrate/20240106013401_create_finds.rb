class CreateFinds < ActiveRecord::Migration[6.1]
  def change
    create_table :finds do |t|
      t.references :user, null: false, foreign_key: true
      t.string :query
      t.datetime :timestamp

      t.timestamps
    end
  end
end
