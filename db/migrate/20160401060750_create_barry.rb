class CreateBarry < ActiveRecord::Migration
  def change
    create_table :barries do |t|
      t.string :description
      t.timestamps
    end
  end
end
