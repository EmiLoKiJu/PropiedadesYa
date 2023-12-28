class CreateImgs < ActiveRecord::Migration[7.1]
  def change
    create_table :imgs do |t|
      t.string :title

      t.timestamps
    end
  end
end
