class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :auther
      t.integer :year
      t.text :description
      t.integer :number_of_pages
      t.string :publisher

      t.timestamps
    end
  end
end
