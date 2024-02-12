class ArticlesController < ApplicationController #Articles(記事)がAppli...を継承。
  def index # defはメソッド。　空だが、Railsによりコントローラーとアクションの名前に一致するビューを自動的に選択する。
    @articles = Article.all #databaseからすべての記事を取り出す。
  end       # Autoload機能　があるのでrequireいらん。
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article #create new request
    else
      render :new, status: :unprocessable_entity #render 現在のリクエストに対して指定されたビューをレンダリング
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
