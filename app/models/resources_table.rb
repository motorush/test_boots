class ResourcesTable < ActiveRecord::Base
  has_many :resources_fields, :dependent => :delete_all
end
