class CreateImplementationTries < ActiveRecord::Migration[6.0]
  def change
    create_table :implementation_tries do |t|
      t.references :change_request_step, null: false, foreign_key: true
      t.string :username_of_implementor

      t.timestamps
    end
  end
end
