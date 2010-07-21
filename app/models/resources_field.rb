class ResourcesField < ActiveRecord::Base
  belongs_to :resources_table
  has_many :resources_datas, :dependent => :delete_all
end

