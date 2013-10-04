class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.string :age
      t.text :misc

      t.timestamps
    end
  end
end
