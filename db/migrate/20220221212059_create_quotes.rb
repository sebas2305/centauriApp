class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :cellphone
      t.string :company
      t.string :location
      t.string :address
      t.string :construction
      t.string :roof
      t.integer :billvalue
      t.string :equipment

      t.timestamps
    end
  end
end
