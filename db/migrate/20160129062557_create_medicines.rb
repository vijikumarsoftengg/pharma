class CreateMedicines < ActiveRecord::Migration
  def self.up
    create_table :medicines do |t|
      t.string :user_name
      t.string :password
      t.integer :age
      t.string :email
      t.integer :mobile
      t.timestamps
    end
  end

  def self.down
    drop_table :medicines
  end
end
