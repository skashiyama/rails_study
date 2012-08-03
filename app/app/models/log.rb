class Log < ActiveRecord::Base
  attr_accessible :account_id, :description, :difference, :do_at, :result_balance, :user_id
end
