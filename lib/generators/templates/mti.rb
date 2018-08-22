require 'mti'

ActiveRecord::Base.class_eval do
  include Mti
end 