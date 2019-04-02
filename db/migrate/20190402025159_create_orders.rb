class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :cassette, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
