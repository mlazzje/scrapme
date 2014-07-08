class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :website
      t.string :owner
      t.string :manager
      t.string :name

      t.timestamps
    end
  end
end
