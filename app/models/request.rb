class Request < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :gender, presence: true
  validates :level, presence: true
  validates :time_available, presence: true
  validates :nickname, presence: true

end
