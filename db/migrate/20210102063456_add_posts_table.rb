class AddPostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table "posts", force: :cascade do |t|
      t.string "title"
      t.string "content"
      t.integer "created_at", null: false
      t.integer "updated_at", null: false
    end
  end
end
