module Visible
  extend ActiveSupport::Concern#クラスメソッドもincludeに入れる便利なやつ。

  VALID_STATUSES = ['public', 'private', 'archived']
  
  included do #モジュールがincludeされた後にこのメソッドが動作する
    validates :status, inclusion: {in: VALID_STATUSES }
  end

  class_methods do #クラスメソッドとして利用できるようにする。
    def public_count
      where(status: 'public').count#
    end
  end

  def archived?
    status == 'archived'
  end
end