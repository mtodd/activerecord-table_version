require 'active_record'

module ActiveRecord
  module TableVersion
    def set_table_version(version)
      self.set_table_name "%s_%s" % [self.table_name, version]
    end
  end
  
  Base.class_eval do
    extend TableVersion
  end
end
