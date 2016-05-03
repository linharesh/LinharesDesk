class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.string :description
      t.string :sender
      t.string :senderemail
      t.boolean :isActive
      t.integer :protocol_num, unique: true

      t.timestamps null: false
    end
  end
end
