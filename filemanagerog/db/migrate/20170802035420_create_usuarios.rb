class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :password_digest
      t.references :archivo, foreign_key: true

      t.timestamps
    end
  end
end
