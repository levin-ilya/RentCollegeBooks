class Customer < ActiveRecord::Base
  validates :username,:password,presence:true
end
