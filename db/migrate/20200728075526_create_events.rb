class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
