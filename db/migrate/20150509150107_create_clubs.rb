class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :display_name  
      t.string :address  
      t.string :city_id  
      t.string :phone_number
      t.string :display_pic
      t.timestamps null: false
    end
  end
end
