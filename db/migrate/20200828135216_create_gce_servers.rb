class CreateGceServers < ActiveRecord::Migration[6.0]
  def change
    create_table :gce_servers do |t|
      t.references :gce_server_associable, polymorphic: true, null: false, index: { name: :gce_server_associable }
      t.text :identity
      t.text :zone

      t.timestamps
    end
  end
end
