class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :s3_location
      t.references :dress

      t.timestamps null: false
    end
  end
end
