class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  #validates :title, presence: true, length: { minimum: 5 }
  def expire_date
  	created_at.next_month
  end
  def remaining_days
    expired? ? 0 : (Date.today - expire_date).to_i
  end

  def expired?
    (Date.today - expire_date).to_i <= 0   
  end

  def expired_today?
    Date.today == expire_date
  end
end

