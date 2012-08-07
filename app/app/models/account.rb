class Account < ActiveRecord::Base
  attr_accessible :account_id, :balance, :user_id

  has_many :account
  belongs_to :user
  
  validates :account_id,
  
  :presence => true,
  :uniqueness => true,
  :format => { :with => /^[0-9]{5}/}

  validates :balance,
  :numericality => {:only_integer => true, :greater_than => -1}

  validates :user_id,
    :presence => true,
    :format => {:with => /^[a-zA-Z|\d]{5}/}
  
  default_scope order('user_id DESC')
  scope :top10, order('balance DESC').limit(10)

end
