# -*- coding: utf-8 -*-

class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
  record.errors.add(attribute, 'は正しい形式ではありません') unless value =~ /^[0][1-9]{1..3}-[0-9]{4}-[0-9]{4}/
  end
end

class User < ActiveRecord::Base
  attr_accessible :account_id, :firstname, :lastname, :password, :phone_number, :user_id

  has_many :account

  validates :account_id,
  :presence => true
  
  validates :firstname,
   :presence => true
  validates :lastname,
  :presence => true,
  :format => {:with => /^[a-zA-Z]*/}
  validates :password,
  :presence => true,
  :format => {:with => /^[a-zA-Z|\d]+/}
  validates :phone_number,
  :phone => true
  validates :user_id,
  :presence => true

end

def hasmany
  @account = Account.where(:account_id =>'00001').first
end
