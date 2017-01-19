class CreateTestModels < ActiveRecord::Migration[5.0]
  def change
    create_table :test_models do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :publish_at
      t.float :conversion_rate
      t.integer :views_counter
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
