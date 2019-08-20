class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.string :barber_name, null: false, default: "Barber Name"
      t.string :barber_bio, null: false, default: "Barber's bio..."
      t.string :barber_photo_path, null: false, default: "avatar1"
      
      t.timestamps
    end
  end
end
