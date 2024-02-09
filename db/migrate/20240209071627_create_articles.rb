class CreateArticles < ActiveRecord::Migration[7.1]#MigrationAPI7.1を指定。
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps # created_atとupdated_atという追加の列を定義する。
    end
  end
end
#移行(Migration)ファイル
#つまりＴに入るのはcreate_tableによって作られたテーブル articles
#それでarticles.string:title みたいな感じになる