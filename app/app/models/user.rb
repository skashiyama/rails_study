class User < ActiveRecord::Base
  attr_accessible :account_id, :firstname, :lastname, :password, :phone_number, :user_id
end
