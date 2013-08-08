class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
