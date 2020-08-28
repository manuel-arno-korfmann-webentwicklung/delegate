class CreateImplementationTrySteps < ActiveRecord::Migration[6.0]
  def change
    create_table :implementation_try_steps do |t|
      t.references :implementation_try, null: false, foreign_key: true
      t.text :data
      t.integer :sort_integer

      t.timestamps
    end
  end
end
