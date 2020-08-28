class CreateChangeRequestSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :change_request_steps do |t|
      t.references :change_request, null: false, foreign_key: true
      t.text :file_url
      t.text :todo

      t.timestamps
    end
  end
end
