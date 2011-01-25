require 'spec_helper'

class Model < ActiveRecord::Base
end

describe ActiveRecord::TableVersion do
  
  describe "when not used" do
    
    describe ".table_name" do
      it "should be the class name tableized" do
        Model.table_name.should == Model.name.tableize
      end
    end
    
  end
  
  describe "when set" do
    before{ Model.set_table_version @version = "2010_01_25" }
    
    describe ".table_name" do
      it "should be the class name tableized with the table version specified" do
        Model.table_name.should == "%s_%s" % [Model.name.tableize, @version]
      end
    end
    
  end
  
end
