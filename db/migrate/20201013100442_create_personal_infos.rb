class CreatePersonalInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_infos do |t|
      t.string :gender
      t.integer :phone_no
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
