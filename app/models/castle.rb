class Castle < ApplicationRecord
  belongs_to :holder ,class_name: 'Owner', foreign_key: 'owner_id'
end
