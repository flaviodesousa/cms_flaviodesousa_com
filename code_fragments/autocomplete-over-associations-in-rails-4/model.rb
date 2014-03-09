Class Order < ActiveRecord::Base
  ...
  delegate :name, to: :customer, prefix: true
end
