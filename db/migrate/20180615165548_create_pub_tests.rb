class CreatePubTests < ActiveRecord::Migration[5.2]
  def change
    create_table :pub_tests do |t|
      t.string :url

      t.timestamps
    end
  end
end
