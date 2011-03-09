require 'active_record'
require 'active_support/core_ext/module/aliasing'

class ActiveRecord::Base
  
  class_attribute :table_version, :instance_writer => false
  self.table_version = nil
  
  class << self
    def compute_table_name_with_version
      return compute_table_name_without_version unless table_version.present?
      "%s_%s" % [compute_table_name_without_version, table_version]
    end
    alias_method_chain :compute_table_name, :version
    
    def set_table_version(version = nil)
      self.table_version = version
      reset_table_name
      version
    end
  end
  
end
