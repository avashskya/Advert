class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.text :desc
      t.string :cotent
      t.string :promoter_status

      t.timestamps
    end
  end
end
