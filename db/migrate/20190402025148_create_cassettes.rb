class CreateCassettes < ActiveRecord::Migration[5.2]
  def change
    create_table :cassettes do |t|
      t.references :movie, foreign_key: true
      t.references :formato, foreign_key: true

      t.timestamps
    end
  end
end
