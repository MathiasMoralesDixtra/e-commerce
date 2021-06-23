class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street
      t.string :apartment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
