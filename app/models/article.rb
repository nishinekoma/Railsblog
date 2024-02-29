class Article < ApplicationRecord#Model Article
  include Visible
  has_many :comments, dependent: :destroy#table名comments dependent:　commentsとともに削除。

  validates :title, presence: true#presenceは値があるか確認
  validates :body, presence: true, length: { minimum:10}#minimum 最小 　presence 存在
end