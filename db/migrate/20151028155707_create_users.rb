class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, length: 60
      t.string :password, length: 60
      t.string :type, length: 40

      t.timestamps null: false
    end
  end
end
