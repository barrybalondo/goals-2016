class CreateNeil < ActiveRecord::Migration
  def change
    create_table :neils do |t|
      t.text :description
      t.timestamps
    end
  end
end
