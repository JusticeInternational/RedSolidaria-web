class CreateServicePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :service_points do |t|
      t.integer :Service_Point_ID
      t.date :Created_Date_Time
      t.date :Last_Modification_Date_Time
      t.string :Service_Point_Name
      t.integer :Contact_User_Profile_ID
      t.integer :Admin_User_Profile_ID
      t.string :Address_Street_1
      t.string :Address_Street_2
      t.string :City
      t.string :Country
      t.float :Longitude
      t.float :Latitude
      t.string :Services_Available
      t.string :Infrastructure_Type
      t.integer :Overall_Capacity
      t.integer :Overall_Rating
      t.boolean :Promoted

      t.timestamps
    end
    add_index :service_points, :Service_Point_ID, unique: true
  end
end
