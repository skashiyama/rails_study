class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :name, :price, :published, :publisher
end
