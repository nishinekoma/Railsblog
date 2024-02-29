class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|#commentsはテーブル。
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true#外部キーである
      # references型：新しく作成するテーブルのカラム(列)に作成済みのテーブルを指定する
      t.timestamps
    end
  end
end
