class CreateAtricles < ActiveRecord::Migration[8.0]
  def change
    create_table :atricles do |t|
      t.string :title
      t.string :body
      t.string :name

      t.timestamps
    end
  end
end
