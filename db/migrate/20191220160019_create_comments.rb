class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.string :body

      t.timestamps
    end
  end
end
