class CreateInstanceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :instance_types do |t|
      t.string :name
      t.text :description
      t.string :api_name

      t.integer :cpus
      t.integer :cpu_cores
      t.integer :memory_mb
      t.integer :mhz_per_core
      t.boolean :ssd
      t.integer :storage_gb
      t.integer :price_cents

      t.references :resource
    end
  end
end
