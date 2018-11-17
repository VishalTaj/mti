class Profile < ActiveRecord::Base
  # belongs_to :user
  has_subclass :employee_detail
end