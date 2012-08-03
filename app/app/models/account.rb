class Account < ActiveRecord::Base
  attr_accessible :account_id, :balance, :user_id
end
