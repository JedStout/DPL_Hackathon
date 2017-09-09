class CreateBios < ActiveRecord::Migration[5.1]
  def change
    create_table :bios do |t|
      t.string :profile_image
      t.string :description
      t.string :text
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
