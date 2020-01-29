class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :userName
      t.string :password_digest
      t.string :bio
      t.string :photo

      t.timestamps
    end
  end
end
