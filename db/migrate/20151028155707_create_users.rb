class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, length: 60, null: false
      t.string :password, length: 60, null: true
      t.string :type, length: 40, null: true

      t.timestamps null: false
    end
  end
end
