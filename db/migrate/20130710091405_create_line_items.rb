class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :course_sgid
      t.integer :cart_id

      t.timestamps
    end
  end
end
