class CreateJustin < ActiveRecord::Migration
  def change
    create_table :justins do |t|
      t.text :description
      t.timestamps
    end
  end
end
