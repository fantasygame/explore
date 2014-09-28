class CreateWealths < ActiveRecord::Migration
  def change
    create_table :wealths do |t|
      t.integer :level
      t.integer :money

      t.timestamps
    end
  end
end
