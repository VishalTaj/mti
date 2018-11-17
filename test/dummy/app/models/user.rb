class User < ActiveRecord::Base
  has_subclass :profile
  has_subclass :user_preference
end