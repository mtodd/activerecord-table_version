$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
require 'rubygems'
require 'bundler/setup'
require 'activerecord/version_table'

require 'rspec'
