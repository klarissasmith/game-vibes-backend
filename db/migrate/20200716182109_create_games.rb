class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :image
      t.integer :rating
      t.string :studio
      t.string :socials
      t.string :official_site
      t.string :summary
      t.string :consoles

      t.timestamps
    end
  end
end
