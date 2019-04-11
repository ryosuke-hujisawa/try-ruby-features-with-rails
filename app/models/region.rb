class Region < ApplicationRecord
  #belongs_to :owner
  belongs_to :king ,class_name: 'Owner', foreign_key: 'owner_id'
end
# example
# Owner.create(name:"徳川家康")
# Owner.create(name:"豊臣秀吉")
# Owner.create(name:"織田信長")
# >> Owner.all
#   Owner Load (0.4ms)  SELECT  "owners".* FROM "owners" LIMIT ?  [["LIMIT", 11]]
# => #<ActiveRecord::Relation [#<Owner id: 1, name: "徳川家康", created_at: "2019-04-11 07:57:11", updated_at: "2019-04-11 07:57:11">, #<Owner id: 2, name: "豊臣秀吉", created_at: "2019-04-11 07:57:11", updated_at: "2019-04-11 07:57:11">, #<Owner id: 3, name: "織田信長", created_at: "2019-04-11 07:57:11", updated_at: "2019-04-11 07:57:11">]>
# Region.create(region:"埼玉県",owner_id:3)
# Region.find_by(region: "埼玉県")
# >> Region.find_by(region: "埼玉県").king
#   Region Load (0.2ms)  SELECT  "regions".* FROM "regions" WHERE "regions"."region" = ? LIMIT ?  [["region", "埼玉県"], ["LIMIT", 1]]
#   Owner Load (0.1ms)  SELECT  "owners".* FROM "owners" WHERE "owners"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
# => #<Owner id: 3, name: "織田信長", created_at: "2019-04-11 07:57:11", updated_at: "2019-04-11 07:57:11">