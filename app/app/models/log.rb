class Log < ActiveRecord::Base
  attr_accessible :account_id, :description, :difference, :do_at, :result_balance, :user_id

  belongs_to :account

  validates :account_id,
  :presence => true,
  :uniqueness => true,
  :format => { :with => /^[0-9]{5}/}

  validates :result_balance,
  :numericality => {:only_integer => true, :greater_than => -1}

  validates :user_id,
  :presence => true,
  :format => {:with => /^[a-zA-Z|\d]{5}/}
    
  validates :difference,
  :format => {:with => /^[+|-]{1}[\d]*/ }

    
end
