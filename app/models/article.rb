class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum:10}#minimum 最小 　presence 存在

  VALID_STATUSES = ['public', 'private', 'archived'] #どれか一つをVALID_STATUSESにセット可能

  validates :status, inclusion: {in: VALID_STATUSES}

  def archived?#status が archivedを比較、真偽値を返す。
    status == 'archived'
  end
end
