class ArticlesController < ApplicationController #Articles(記事)がAppli...を継承。
  def index # defはメソッド。　空だが、Railsによりコントローラーとアクションの名前に一致するビューを自動的に選択する。
    @articles = Articles.all #databaseからすべての記事を取り出す。
  end       # Autoload機能　があるのでrequireいらん。
end