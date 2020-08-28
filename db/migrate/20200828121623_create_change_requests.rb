class CreateChangeRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :change_requests do |t|
      t.references :app, null: false, foreign_key: true
      t.text :todo

      t.timestamps
    end
  end
end
