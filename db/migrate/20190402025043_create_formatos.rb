class CreateFormatos < ActiveRecord::Migration[5.2]
  def change
    create_table :formatos do |t|
      t.string :name

      t.timestamps
    end
  end
end
