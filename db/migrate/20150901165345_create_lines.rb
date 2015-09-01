class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :line_text
      t.string :file_location

      t.timestamps null: false
    end
  end
end
