class CreateAnco < ActiveRecord::Migration
  def change
    create_table :ancos do |t|
      t.text :description
      t.timestamps
    end
  end
end
