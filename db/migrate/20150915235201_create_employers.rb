class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :avatar
      t.string :sex
      t.date :admission
      t.date :dismiss

      t.timestamps null: false
    end
  end
end
