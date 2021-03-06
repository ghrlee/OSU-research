class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.belongs_to :user
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
