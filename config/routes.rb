Rails.application.routes.draw do
  root "articles#index"#localhost:3000

  resources :articles do # 記事などのリソースのコレクションに対する従来のルートをすべてマップする、という名前のルート メソッドを提供します
    resources :comments
  end
    #get "/articles", to: "articles#index"
    #get "/articles/:id", to: "articles#show"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
   # /up でリクエストがあった場合、　=>ハッシュデータ構文により　ハッシュのキーと値としてセットされている。
   # コントローラーのrails/health の　#show　アクションを呼んでいる
   # :as オプションはこのルートに名前をつけ　as + pathURl　といったような形で出力される。
  # Defines the root path route ("/")
  # root "posts#index"
end
# これはRails.application.routes.drawが最初にインポート？されてそこから処理が開始〜で終わってend担っているということ
# そしてこの構文のもう一つとして一つの処理を区切るためにわかりやすくした