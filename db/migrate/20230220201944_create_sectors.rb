class CreateSectors < ActiveRecord::Migration[7.0]
  def change
    create_table :sectors do |t|
      t.string :title
      t.string   :level
      t.timestamps
    end
  end
end
