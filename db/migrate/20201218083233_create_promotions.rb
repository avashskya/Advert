class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.integer :advert_id
      t.integer :promoter_id

      t.timestamps
    end
  end
end
